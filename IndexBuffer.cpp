#include "IndexBuffer.h"
#include "Renderer.h"
#include <glfw3.h>

IndexBuffer::IndexBuffer(const unsigned int* data, unsigned int count) : m_Count(count) {
    GLCall(glGenBuffers(1, &m_RendererID));   // generate buffer and assign id to variable, buffer
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,m_RendererID));   // assign what type of buffer to the newly generated buffer
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER,count*sizeof(unsigned int),data,GL_STATIC_DRAW));   // tell the GPU what kind of buffer to send the data to, and the function of it
}

IndexBuffer::~IndexBuffer() {
    GLCall(glDeleteBuffers(1, &m_RendererID));
}

void IndexBuffer::Bind() const{
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,m_RendererID)); 
}

void IndexBuffer::Unbind() const{
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0)); 
}