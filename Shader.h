#pragma once
#include <string>
class Shader {
private:

public:
    Shader(const std::string& filepath);
    ~Shader();

    void Bind() const;
    void Unbind() const;

    void SetUniform4f();
};