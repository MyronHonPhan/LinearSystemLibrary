#include <iostream>

template<typename T>
void Print(T value) {
    std::cout << value << std::endl;
}
int main() {
    Print(5);
    Print("hello");
    return 0;
}