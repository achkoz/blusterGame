#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>
#include <iostream>
#include <Hero.h>
#include <Enemy.h>
#include <Rocket.h>

sf::Vector2f viewSize(1024, 768);
sf::VideoMode vm(viewSize.x, viewSize.y);
sf::RenderWindow window(vm, "Hero Game window", sf::Style::Default);

sf::Texture skyTexture;
sf::Sprite skySprite;

sf::Texture bgTexture;
sf::Sprite bgSprite;

Hero hero;
std::vector<Enemy*> enemies;
std::vector<Rocket*> rockets;

sf::Font headingFont;
sf::Text headingText;
sf::Font scoreFont;
sf::Text scoreText;

sf::Music bgMusic;  
sf::SoundBuffer fireBuffer;
sf::SoundBuffer hitBuffer;
sf::Sound fireSound(fireBuffer);
sf::Sound hitSound(hitBuffer);

float currentTime;
float prevTime = 0.0f;
int score = 0;

void init();
void update(float dt);
void handleEvent();
void draw();
void spawnEnemy();
void shoot();
void reset();
bool chekCollision(sf::Sprite sprite1, sf::Sprite sprite2);
bool gameover = true;

int main()
{
    sf::Clock clock;
    window.setFramerateLimit(60);

    init();

    while(window.isOpen())
    {
        handleEvent();
        
        sf::Time time = clock.restart();
        if(!gameover)
        {
            update(time.asSeconds());
        }

        draw();
        window.display();
    }
}

void init()
{
    //setting texture of sky
    skyTexture.loadFromFile("assets/graphics/sky.png");
    skySprite.setTexture(skyTexture);

    //settting bg texture
    bgTexture.loadFromFile("assets/graphics/bg.png");
    bgSprite.setTexture(bgTexture);

    //setting game name font
    headingFont.loadFromFile("assets/fonts/SnackerComic.ttf");
    headingText.setFont(headingFont);
    headingText.setString("Tiny bazooka ");
    headingText.setCharacterSize(84);
    headingText.setFillColor(sf::Color::Red);
    sf::FloatRect headingbounds = headingText.getLocalBounds();
    headingText.setOrigin(headingbounds.width / 2, headingbounds.height / 2);
    headingText.setPosition(sf::Vector2f(viewSize.x / 2, viewSize.y / 2));

    //setting score font
    scoreFont.loadFromFile("assets/fonts/arial.ttf");
    scoreText.setFont(scoreFont);
    scoreText.setString("Score: 0");
    scoreText.setCharacterSize(45);
    scoreText.setFillColor(sf::Color::Red);
    sf::FloatRect scorebounds = scoreText.getLocalBounds();
    scoreText.setOrigin(scorebounds.width / 2, scorebounds.height / 2);
    scoreText.setPosition(sf::Vector2f(viewSize.x * 0.5f, viewSize.y * 0.10f));

    hero.init("assets/graphics/heroAnim.png", 4, 1.0f, sf::Vector2f(viewSize.x * 0.25f, viewSize.y * 0.25f), 200);
    srand((int)time(0));

    //Adding audio
    bgMusic.openFromFile("assets/audio/bgMusic.ogg");
    bgMusic.play();
    fireBuffer.loadFromFile("assets/audio/fire.ogg");
    hitBuffer.loadFromFile("assets/audio/hit.ogg");
}

void handleEvent()
{
    sf::Event event;
    while(window.pollEvent(event))
    {
        switch(event.type)
        {
            case sf::Event::Closed :
                window.close();
                break;

            case sf::Event::KeyPressed :
                switch (event.key.code)
                {
                case sf::Keyboard::Up:
                    //std::cout << event.key.code << "pressed\n";
                    hero.jump(750);
                    break;
                
                case sf::Keyboard::Escape:
                    window.close();
                    break;

                case sf::Keyboard::Space :
                    if(gameover)
                    {
                        gameover = false;
                        reset();
                    }
                    else
                    {
                        shoot();
                    }
                    break;

                default:
                    break;
                }
                break;
            
            default:
                break;

        }
    }
}

void update(float dt)
{
    hero.update(dt); 

    currentTime += dt;

    //Spawning Enemies;
    if(currentTime >= prevTime + 1.125f)
    {
        spawnEnemy();
        prevTime = currentTime;
    }

    for(int i = 0; i < enemies.size(); ++i)
    {
        Enemy* enemy  = enemies[i];

        enemy->update(dt);

        if(enemy->getSprite().getPosition().x < 0)
        {
            enemies.erase(enemies.begin() ,enemies.begin()+1);
            delete(enemy);
            gameover = true;
        }
    }

    for(int i = 0; i < rockets.size(); ++i)
    {
        Rocket* rocket = rockets[i];

        rocket->update(dt);

        if(rocket->getSprite().getPosition().x > viewSize.x)
        {
            rockets.erase(rockets.begin(), rockets.begin()+1);
            delete(rocket);
        }

    }

    for(int i = 0; i < rockets.size(); ++i)
    {
        for(int j = 0; j<enemies.size(); ++j)
        {
            Rocket* rocket = rockets[i];
            Enemy* enemy = enemies[j];
            if(chekCollision(rocket->getSprite(),enemy->getSprite()))
            {
                score ++ ;
                std::string finalScore = "Score: " + std::to_string(score);
                scoreText.setString(finalScore);

                rockets.erase(rockets.begin()+i, rockets.begin()+1+i);
                enemies.erase(enemies.begin()+j, enemies.begin()+1+j);

                delete(enemy);
                delete(rocket);

                hitSound.play();

                std::cout << "rocket intersects enemy\n";
            }
        }
    }
}

void draw()
{
    window.draw(skySprite);
    window.draw(bgSprite);

    window.draw(hero.getSprite());

    for(Enemy* enemy : enemies)
    {
        window.draw(enemy->getSprite());
    }

    for(Rocket* rocket : rockets)
    {
        window.draw(rocket->getSprite());
    }

    if(gameover)
    {
        window.draw(headingText);  
    }
    else
    {
        window.draw(scoreText);
    }
}

void spawnEnemy()
{
    int randomLoc = rand() % 3;

    sf::Vector2f enemyPos;

    float speed;

    switch (randomLoc)
    {
    case 0:
        enemyPos = sf::Vector2f(viewSize.x, viewSize.y * 0.75f);
        speed = -400;
        break;

    case 1:
        enemyPos = sf::Vector2f(viewSize.x, viewSize.y * 0.60f);
        speed = -550;
        break;

    case 2:
        enemyPos = sf::Vector2f(viewSize.x, viewSize.y * 0.40f);
        speed = -600;
        break;
    
    default:
        break;
    }

    Enemy* enemy = new Enemy();
    enemy->init("assets/graphics/enemy.png", enemyPos, speed);

    enemies.push_back(enemy);
}

void shoot()
{
    Rocket* rocket = new Rocket();
    rocket->init("assets/graphics/rocket.png", hero.getSprite().getPosition(), 400.0f);
    fireSound.play();

    rockets.push_back(rocket);
}

bool chekCollision(sf::Sprite sprite1, sf::Sprite sprite2)
{
    sf::FloatRect shape1 = sprite1.getGlobalBounds();
    sf::FloatRect shape2 = sprite2.getGlobalBounds();

    if(shape1.intersects(shape2))
    {
        return true;
    }
    else
    {
        return false;
    }
}

void reset()
{
    score = 0;
    currentTime = 0.0f;
    prevTime = 0.0;
    scoreText.setString("Score: 0");

    for(Enemy* enemy : enemies)
    {
        delete(enemy);
    }

    for(Rocket* rocket: rockets)
    {
        delete(rocket);
    }
    enemies.clear();
    rockets.clear();
}
