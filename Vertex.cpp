#include "Vertex.h"
#include "Renderer.h"

VertexBuffer::VertexBuffer(const void* data, unsigned int size) {
    GLCall(glGenBuffers(1, &m_RendererID));   // generate buffer and assign id to variable, buffer
    GLCall(glBindBuffer(GL_ARRAY_BUFFER,m_RendererID));   // assign what type of buffer to the newly generated buffer
    GLCall(glBufferData(GL_ARRAY_BUFFER,size,data,GL_STATIC_DRAW));   // tell the GPU what kind of buffer to send the data to, and the function of it
}

VertexBuffer::~VertexBuffer() {
    GLCall(glDeleteBuffers(1, &m_RendererID));
}

VertexBuffer::Bind() {
    GLCall(glBindBuffer(GL_ARRAY_BUFFER,m_RendererID)); 
}

VertexBuffer::Unbind() {
    GLCall(glBindBuffer(GL_ARRAY_BUFFER,0)); 
}