cmake_minimum_required(VERSION 3.22.2)

project(a.out)

add_executable(${PROJECT_NAME} test.cpp)

add_subdirectory(Adder)

target_include_directories(${PROJECT_NAME} PUBLIC Adder)

target_link_libraries(${PROJECT_NAME} adder)