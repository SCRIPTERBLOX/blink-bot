#include "backend.h"

extern "C" {
#include "clib.h"
}

Backend::Backend(QObject *parent)
    : QObject(parent) {}

int Backend::addNumbers(int a, int b) {
    return add(a, b);
}
