#include <vector>
#include <iostream>


struct A {
    A() { v.push_back(3); v.push_back(5);}
    inline const std::vector<int>& get() const { return v;}
    std::vector<int> v;
    float hello = 4;
};
int main() {
    A a; 
    const std::vector<int>& v = a.get();
    std::cout << a.hello << std::endl;

}