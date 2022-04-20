cmake_minimum_required(VERSION 3.22.2)

set(CMAKE_CXX_STANDARD 14)

project(a.out)

add_executable(${PROJECT_NAME} testing.cpp)

add_subdirectory(Adder)

add_subdirectory(external/glfw)

add_subdirectory(external/glew/build/cmake)

target_include_directories(${PROJECT_NAME} PUBLIC Adder PUBLIC external/glfw/include PUBLIC external/glfw/deps/glad  PUBLIC external/glew/include)

target_link_libraries(${PROJECT_NAME} adder glfw glew_s)

target_link_directories(${PROJECT_NAME} PUBLIC external/glfw/deps/glad)

find_package(OpenGL REQUIRED)

target_link_libraries(${PROJECT_NAME} OpenGL::GL)