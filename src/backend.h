#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class Backend : public QObject {
    Q_OBJECT

public:
    explicit Backend(QObject *parent = nullptr);

    Q_INVOKABLE int addNumbers(int a, int b);
};

#endif
