cmake_minimum_required(VERSION 3.22)
project(ClockSettings LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(${PROJECT_NAME} STATIC hello.cpp)
target_include_directories(${PROJECT_NAME}
    PUBLIC ${CMAKE_SOURCE_DIR}/include/${PROJECT_NAME}
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

add_dependencies(${PROJECT_NAME} Boost::json)
target_link_libraries(${PROJECT_NAME} PRIVATE Boost::json)