#pragma once
#include <glew.h>
#define GLCall(x);\
        x;\
        GLLogCall(#x,__FILE__,__LINE__)

void GLClearError();

bool GLLogCall(const char* function, const char* file, int line);