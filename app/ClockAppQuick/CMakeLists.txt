cmake_minimum_required(VERSION 3.22)
project(ClockAppQuick LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Ubuntu 22.04
# need library: qml6-module-qtquick*
# need library: qt6-declarative-dev
# need library: qt6-base-dev libgl1-mesa-dev libglvnd-dev

find_package(Qt6 REQUIRED COMPONENTS Quick Gui)
# In Qt6.2.4
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
# In Qt6.3.0
# qt_standard_project_setup()

qt_add_executable(${PROJECT_NAME}
    src/main.cpp
)
qt_add_qml_module(${PROJECT_NAME}
    URI qml
    VERSION 1.0
    QML_FILES qml/main.qml
)
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        Qt6::Gui
        Qt6::Quick
)

add_dependencies(${PROJECT_NAME} ClockSettings)
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(${PROJECT_NAME} PRIVATE ClockSettings)