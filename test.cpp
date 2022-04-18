#include <iostream>

class Entity {
public:
    virtual std::string getName() { return "Entity!";}
};

class Player : public Entity {
public: 
    Player(const std::string& name)
        : m_Name(name) {}

    std::string getName() { return m_Name;}
private:
    std::string m_Name;
};

void PrintName(Entity* entity) {
    std::cout << entity->getName() <<std::endl;
}
int main() {
    Entity* e = new Entity;
    PrintName(e);
    Player* p = new Player("Myron");
    PrintName(p);
    return 0;
}