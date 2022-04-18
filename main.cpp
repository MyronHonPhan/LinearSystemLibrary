#include <iostream>
#include <memory>

class Entity {
public:
    Entity() {
        std::cout<< "Created Entity!" << std::endl;
    }

    ~Entity() {
        std::cout << "Destroyed Entity!" <<std::endl;
    }

    void Print() {}
};

class Vector2 {
public:
    float x, y;
    Vector2(float a, float b) 
        : x(a), y(b) {}
    
    Vector2 Add(const Vector2& other) const {
        return Vector2(x + other.x, y + other.y);
    }

    Vector2 operator+(const Vector2& other) const {
        return Add(other);
    }

    Vector2 Multiply(const Vector2& other) const {
        return Vector2(x*other.x, y*other.y);
    }

    Vector2 operator*(const Vector2& other) const {
        return Multiply(other);
    }
};

std::ostream& operator<<(std::ostream& stream , const Vector2& other) {
    stream << "[" <<other.x<<"\n"<<other.y<<"]";
    return stream;
}

int main() {
    Vector2 position(3.4,3.2);
    Vector2 velocity(4.1,5.3);

    Vector2 added = position + velocity;
    std::cout << added << std::endl;
    std::cout << "END" << std::endl;

    return 0;
}