#include <Enemy.h>

Enemy::Enemy()
{}

Enemy::~Enemy()
{}

void Enemy::init(std::string location, sf::Vector2f position, float speed)
{
    m_position = position;
    m_speed = speed;

    //Loading textures;
    m_texture.loadFromFile(location.c_str());

    //Creating Sprites from Textures;
    m_sprite.setTexture(m_texture);
    m_sprite.setPosition(m_position);
    m_sprite.setOrigin(m_texture.getSize().y / 2, m_texture.getSize().y / 2);
}

void Enemy::update(float dt)
{
    m_sprite.move(m_speed * dt, 0);
}

sf::Sprite Enemy::getSprite()
{
    return m_sprite;
}

