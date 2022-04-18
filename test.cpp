#include <iostream>

double vals[] = {10.1, 12.6, 33.1, 24.1, 50.0};

int& hello(int& i) {
    return i;
}

int main() {
    float arr[3];

    float* ptr;

    for (int i =0;i<3;i++) {
        arr[i] = i;
        std::cout << &arr[i] <<std::endl;
    }

    ptr = arr;

    for (int i =0;i<3;i++) {
        std::cout << ptr+i <<std::endl;
    }

    const char* message = "This program is finished.";
    std::cout << message << "\n";
    return 0;
}