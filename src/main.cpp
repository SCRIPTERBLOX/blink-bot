#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "backend.h"

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);

    qmlRegisterType<Backend>("App", 1, 0, "Backend");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/Main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
