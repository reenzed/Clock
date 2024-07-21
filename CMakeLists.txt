cmake_minimum_required(VERSION 3.22)
project(ClockApp LANGUAGES CXX VERSION 0.0.1)

option(BUILD_TESTS "Build tests" OFF)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_subdirectory(lib)
add_subdirectory(src)

add_executable(${PROJECT_NAME} app/main.cpp)
add_dependencies(${PROJECT_NAME} ClockSettings)
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(${PROJECT_NAME} PRIVATE ClockSettings)

if(BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()