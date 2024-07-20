cmake_minimum_required(VERSION 3.22)
project(ClockApp LANGUAGES CXX VERSION 0.0.1)

option(BUILD_TESTS "Build tests" OFF)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(${PROJECT_NAME} app/main.cpp)

if(BUILD_TESTS)
    enable_testing()
endif()