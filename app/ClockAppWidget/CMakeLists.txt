cmake_minimum_required(VERSION 3.22)
project(ClockAppWidget LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Ubuntu 22.04
# need app: designer-qt6
# need library: qt6-base-dev libgl1-mesa-dev libglvnd-dev
# setup designer:
# 1. qtchooser -install qt6 $(which qmake6)
# 2. sudo mv ~/.config/qtchooser/qt6.conf /usr/share/qtchooser/qt6.conf
# 3. sudo mkdir -p /usr/lib/$(uname -p)-linux-gnu/qt-default/qtchooser
# 4. sudo ln -n /usr/share/qtchooser/qt6.conf /usr/lib/$(uname -p)-linux-gnu/qt-default/qtchooser/default.conf
# 5. in '~/.bashrc' add 'export QT_SELECT=qt6'

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets)
# In Qt6.2.4
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
# In Qt6.3.0
# qt_standard_project_setup()

qt_add_executable(${PROJECT_NAME}
    src/mainwindow.cpp
    src/mainwindow.ui
)
set_target_properties(${PROJECT_NAME} PROPERTIES
    WIN32_EXECUTABLE TRUE
    MACOSX_BUNDLE TRUE
)
target_link_libraries(${PROJECT_NAME}
    PRIVATE
    Qt::Core
    Qt::Gui
    Qt::Widgets
)

add_dependencies(${PROJECT_NAME} ClockSettings)
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(${PROJECT_NAME} PRIVATE ClockSettings)