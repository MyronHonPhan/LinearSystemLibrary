#include <iostream>
#include <glew.h>
#include <glfw3.h>
#include <fstream>
#include <string> 
#include <sstream>
#include <cassert>
#include "Renderer.h"
#include "IndexBuffer.h"
#include "Vertex.h"
#include "VertexArray.h"

struct ShaderProgramSource {
    std::string VertexSource;
    std::string FragmentSource;
};

static ShaderProgramSource ParseShader(const std::string& filepath) {
    std::ifstream stream(filepath);

    enum class ShaderType {
        NONE = -1, VERTEX = 0, FRAGMENT = 1
    };

    std::string line;
    std::stringstream ss[2];
    ShaderType type = ShaderType::NONE;
    while (getline(stream, line)) {
        if (line.find("#shader") != std::string::npos) {
            if (line.find("vertex") != std::string::npos) {
                type = ShaderType::VERTEX;
            }
            else if (line.find("fragment") != std::string::npos) {
                type = ShaderType::FRAGMENT;
            }
        }
        else {
            ss[(int)type] << line << '\n';
        }
    }
    return { ss[0].str(), ss[1].str() };
}

static unsigned int CompileShader(unsigned int type, const std::string& source) {
    unsigned int id = glCreateShader(type); // create a shader 
    const char* src = source.c_str(); // could also do &source[0]
    glShaderSource(id,1,&src,nullptr); // specify shader id, source and how many
    glCompileShader(id); // compile shader

    int result;
    glGetShaderiv(id, GL_COMPILE_STATUS,&result); // retrieves various things related to shaders
    // check if shader compiled correctly
    if (result == GL_FALSE) {
        int length;
        glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);
        char* message = (char*)alloca(length * sizeof(char));
        glGetShaderInfoLog(id, length, &length, message);
        std::cout << "Failed to compile " << (type == GL_VERTEX_SHADER ? "vertex" : "fragment") << " shader!" <<std::endl;
        std::cout << message << std::endl;
        glDeleteShader(id);
        return 0;
    }

    return id;
}

static unsigned int CreateShader(const std::string& vertexShader, const std::string& fragmentShader) {
    // combine vertex and fragment shaders into one program
    GLCall(unsigned int program = glCreateProgram());

    // compile
    unsigned int vs = CompileShader(GL_VERTEX_SHADER, vertexShader);
    unsigned int fs = CompileShader(GL_FRAGMENT_SHADER, fragmentShader);

    // link
    GLCall(glAttachShader(program, vs));
    GLCall(glAttachShader(program, fs));
    GLCall(glLinkProgram(program));
    GLCall(glValidateProgram(program));

    // free memory
    GLCall(glDeleteShader(vs));
    GLCall(glDeleteShader(fs));

    return program; 
}

int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    if (glewInit() != GLEW_OK)
        std::cout <<"ERROR" << std::endl;

    std::cout << glGetString(GL_VERSION) <<std::endl;

    float positions[] = {
        -0.5f, -0.5f,
         0.5f, -0.5f,
         0.5f,  0.5f,
        -0.5f,  0.5f
    };

    unsigned int indices[] = {
        0,1,2,
        3,2,0
    };

    VertexArray va;                                 // vertex array object : will store the vbo inside them
    VertexBuffer vb(positions, 4*2*sizeof(float));  // generate a buffer of data, bind it to the context and specify the data to send to the vertex buffer
    VertexBufferLayout layout;                      
    layout.Push<float>(2);                          // gathers information for VertexAttribPointer (data type, vector size, stride and normalization)
    va.AddBuffer(vb, layout);                       // applies and enables VertexAttribPointer (links the vbo and the vao together)
    IndexBuffer ib(indices, 6);                     // does the index buffer array stuff

    // compile and link shaders
    ShaderProgramSource shaders = ParseShader("/Users/myronphan/LinearSystemLibrary/res/shaders/basic.shader");
    
    GLCall(unsigned int shader = CreateShader(shaders.VertexSource, shaders.FragmentSource));
    GLCall(glUseProgram(shader));

    GLCall(int location = glGetUniformLocation(shader, "u_Color"));
    assert(location != -1);
    float r = 0.0f;
    float increment = 0.05f;

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        GLCall(glClear(GL_COLOR_BUFFER_BIT));

        GLCall(glUniform4f(location,r,0.3f,0.8f,1.0f));
        va.Bind();
        ib.Bind();
        GLCall(glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr));
        
        if (r > 1.0) {
            increment = -0.05f;
        }
        else if ( r < 0.0f) {
            increment = 0.05f;
        }

        r = r + increment;

        /* Swap front and back buffers */
        GLCall(glfwSwapBuffers(window));

        /* Poll for and process events */
        GLCall(glfwPollEvents());
    }

    glfwTerminate();
    return 0;
}