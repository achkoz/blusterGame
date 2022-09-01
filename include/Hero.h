#include <SFML/Graphics.hpp>

class Hero
{
public:
    Hero();
    ~Hero();

    void init(std::string textureName, int framecount, float animduration, sf::Vector2f position, float mass);
    void update(float dt);
    void jump(float velocity);
    sf::Sprite getSprite();

private:
    sf::Texture m_Texture;
    sf::Sprite m_Sprite;
    sf::Vector2f m_Position;

    int jumpCount;
    float m_mass;
    float m_velocity;
    const float m_gravity = 9.80f;
    bool m_graunded;
    float m_force;

    int m_frameCount;
    float m_animDuration;
    float m_elapsedTime;
    sf::Vector2i m_spriteSize;
};