cmake_minimum_required(VERSION 3.22.2)

set(CMAKE_CXX_STANDARD 14)

project(AL.out)

add_executable(${PROJECT_NAME} test.cpp)

add_subdirectory(Adder)

target_include_directories(${PROJECT_NAME} PUBLIC Adder )

target_link_libraries(${PROJECT_NAME} adder)