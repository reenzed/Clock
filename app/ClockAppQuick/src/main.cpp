#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "hello.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qml/qml/main.qml"_qs);
    engine.load(url);
    
    hello();

    return app.exec();
}