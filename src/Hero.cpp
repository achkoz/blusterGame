#include <Hero.h>
#include <iostream>
Hero::Hero()
{}

Hero::~Hero()
{}

void Hero::init(std::string textureName, int frameCount, float animDuration, sf::Vector2f position, float mass)
{
    m_Position = position;
    m_mass = mass;
    m_graunded = false;

    m_frameCount = frameCount;
    m_animDuration = animDuration;
    m_spriteSize = sf::Vector2i(92, 126); 
    //Loading Textures
    m_Texture.loadFromFile(textureName.c_str());

    //Creating Sprite to attach Textures
    m_Sprite.setTexture(m_Texture);
    m_Sprite.setTextureRect(sf::IntRect(0,0,m_spriteSize.x,m_spriteSize.y));
    m_Sprite.setPosition(m_Position);
    m_Sprite.setOrigin(m_spriteSize.x / 2, m_spriteSize.y / 2);
}

void Hero::update(float dt)
{
    m_elapsedTime += dt;
    int animFrame = static_cast<int> ((m_elapsedTime / m_animDuration) * m_frameCount) % m_frameCount;
    m_Sprite.setTextureRect(sf::IntRect(animFrame * m_spriteSize.x, 0, m_spriteSize.x, m_spriteSize.y));

    m_force -= m_mass * m_gravity * dt;
    m_Position.y -= m_force * dt;

    m_Sprite.setPosition(m_Position);

    if( m_Position.y >= 768 * 0.75)
    {
        m_Position.y = 768* 0.75;

        m_force = 0;
        m_graunded = true;
        jumpCount = 0;
    }
    //std::cout << jumpCount<<'\n';
}

void Hero::jump(float velocity)
{
    if(jumpCount < 2)
    {
        jumpCount ++ ;

        m_velocity = velocity;
        m_graunded = false ;
        m_force = velocity;
    }
}

sf::Sprite Hero::getSprite()
{
    return m_Sprite;
}

