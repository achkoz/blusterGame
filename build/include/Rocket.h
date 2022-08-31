#include <SFML/Graphics.hpp>
#include <iostream>

class Rocket
{
public:
    Rocket();
    ~Rocket();

    void init(std::string location, sf::Vector2f position, float speed);
    void update(float dt);
    sf::Sprite getSprite();

private:
    sf::Texture m_texture;
    sf::Sprite m_sprite;
    sf::Vector2f m_position;
    float m_speed;
};