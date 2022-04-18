#include <iostream>

struct Entity {
    Entity() { std::cout << "Created Something!" <<std::endl;}

    int getEntity() const{
        return mX;
    }

    ~Entity() {std::cout << "Deleted Something!" << std::endl;}
private:
    int mX, mY;
};

void printEntity(const Entity& e) {
    // e is const, we cannot modify anything within that instance

    std::cout << e.getEntity() <<std::endl;
}

void Log(int a) {
    std::cout << "Current Value is: " << a << std::endl;
}

void Increment(int& a) {
    a++;
    std::cout << "Incremented Value is: " << a << std::endl;
}

int main() {
    int a = 0;
    Increment(a);
    Log(a);
    return 0;
}