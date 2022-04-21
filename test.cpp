#include <iostream>
#include <vector>
#include <string>
#include <sstream>

int main() {
    std::string str = "Hello from the dark side";
    std::stringstream string_str[2];
    int i = 0;
    int j = 1;

    string_str[i] << "helo heh";
    string_str[j] << "helo";

    std::cout << string_str[0].str() <<std::endl;
    std::cout << string_str[1].str() <<std::endl;
    return 0;
}