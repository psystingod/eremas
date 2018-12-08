#include "new.h"
#include "ui_new.h"
#include "proveedores.h"

New::New(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::New)
{
    ui->setupUi(this);

    db.setHostName("localhost");
    db.setDatabaseName("cablesat");
    db.setUserName("root");
    db.setPassword("");

    // Setting data from index to fields
    if(db.open()){
        QSqlQuery query2;
        qDebug()<< "Desde ventana new " + getIndex();
        QString statement = "select * from providers where id_proveedor = '"+ getIndex() +"' or nombre = '"+ getIndex() +"' or giro = '"+ getIndex() +"' or nacionalidad = '"+ getIndex() +"' or telefono = '"+ getIndex() +"'";
        query2.prepare(statement);
        query2.exec();

        while(query2.next()){

            ui->idLineEdit->setText(query2.value(0).toString());
            ui->nombreDelProveedorLineEdit->setText(query2.value(1).toString());
            ui->nitLineEdit->setText(query2.value(2).toString());
            ui->nrcLineEdit->setText(query2.value(3).toString());
            ui->direccionLineEdit->setText(query2.value(4).toString());
            ui->giroLineEdit->setText(query2.value(5).toString());
            ui->nacionalidadLineEdit->setText(query2.value(6).toString());
            ui->telefonoLineEdit->setText(query2.value(7).toString());
            ui->correoElectronicoLineEdit->setText(query2.value(8).toString());
            ui->vendedorLineEdit->setText(query2.value(9).toString());
            ui->cuentaEnElCatalogoLineEdit->setText(query2.value(10).toString());

        }
        db.close();

    }
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
            qDebug()<< getIndex();
    }
}

