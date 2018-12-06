#include "new.h"
#include "ui_new.h"
#include "proveedores.h"


New::New(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::New)
{
    ui->setupUi(this);
}

New::~New()
{
    delete ui;
}

void New::on_btn_cancel_clicked()
{
    New::destroy();
}

void New::on_btn_save_clicked()
{
    switch (getAction()) {

        case 1:
            qDebug()<< "INSERT";
            break;
        case 2:
            qDebug()<< "DELETE";
            break;
        case 3:
            qDebug()<< "SELECT";

    }
}
