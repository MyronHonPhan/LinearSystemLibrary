#include <iostream>
#include <adder.h>

void Log(const char* message) {
    std::cout << message << std::endl;
}
int main() {
    Log("hi");
    std::cout << "hello" <<std::endl;
    std::cout << add(1.1,4.5) <<std::endl;
    return 0;
}