cmake_minimum_required(VERSION 3.22)
project(Clock LANGUAGES CXX VERSION 0.0.1)

option(BUILD_TESTS "Build tests" OFF)

add_subdirectory(app)
add_subdirectory(lib)
add_subdirectory(src)

if(BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()