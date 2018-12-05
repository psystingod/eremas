#include "mainwindow.h"
#include "proveedores.h"
#include "new.h"
#include <QApplication>
#include <QAbstractItemView>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    Proveedores p;

    //w.show();
    p.show();


    return a.exec();
}
