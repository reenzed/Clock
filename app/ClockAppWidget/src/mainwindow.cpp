#include <QApplication>
#include <QWidget>
#include <iostream>

#include "ui_mainwindow.h"
#include "ClockSettings/hello.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QMainWindow window;
    Ui::MainWindow ui;
    ui.setupUi(&window);

    hello();

    window.show();

    return QApplication::exec();
}