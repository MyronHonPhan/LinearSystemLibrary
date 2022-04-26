#include "Vertex.h"
#include "Renderer.h"
#include <glfw3.h>

VertexBuffer::VertexBuffer(const float* data, unsigned int size) {
    GLCall(glGenBuffers(1, &m_RendererID));   // generate buffer and assign id to variable, buffer
    GLCall(glBindBuffer(GL_ARRAY_BUFFER,m_RendererID));   // assign what type of buffer to the newly generated buffer
    GLCall(glBufferData(GL_ARRAY_BUFFER,size,data,GL_STATIC_DRAW));   // tell the GPU what kind of buffer to send the data to, and the function of it
}

VertexBuffer::~VertexBuffer() {
    GLCall(glDeleteBuffers(1, &m_RendererID));
}

void VertexBuffer::Bind() const{
    GLCall(glBindBuffer(GL_ARRAY_BUFFER,m_RendererID)); 
}

void VertexBuffer::Unbind() const{
    GLCall(glBindBuffer(GL_ARRAY_BUFFER,0)); 
}