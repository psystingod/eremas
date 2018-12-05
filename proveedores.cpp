#include "proveedores.h"
#include "ui_proveedores.h"
#include <QApplication>
#include "new.h"

Proveedores::Proveedores(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Proveedores)
{
    ui->setupUi(this);

    db.setHostName("localhost");
    db.setDatabaseName("cablesat");
    db.setUserName("root");
    db.setPassword("");

    db.open();

    query.prepare("select * from providers");
    query.exec();

    modelProviders->setQuery(query);


    if(db.open()){
        //Set table providers
        ui->tableViewProviders->setModel(modelProviders);
        ui->tableViewProviders->verticalHeader()->setVisible(false);
        ui->tableViewProviders->setShowGrid(true);

        modelProviders->setHeaderData(0, Qt::Horizontal, QObject::tr("Código"));
        modelProviders->setHeaderData(1, Qt::Horizontal, QObject::tr("Nombre"));
        modelProviders->setHeaderData(2, Qt::Horizontal, QObject::tr("NIT"));
        modelProviders->setHeaderData(3, Qt::Horizontal, QObject::tr("NRC"));
        modelProviders->setHeaderData(4, Qt::Horizontal, QObject::tr("Dirección"));
        modelProviders->setHeaderData(5, Qt::Horizontal, QObject::tr("Giro"));
        modelProviders->setHeaderData(6, Qt::Horizontal, QObject::tr("Nacionalidad"));
        modelProviders->setHeaderData(7, Qt::Horizontal, QObject::tr("Teléfono"));
        modelProviders->setHeaderData(8, Qt::Horizontal, QObject::tr("Correo electrónico"));
        modelProviders->setHeaderData(9, Qt::Horizontal, QObject::tr("Representante"));
        modelProviders->setHeaderData(10, Qt::Horizontal, QObject::tr("Cuenta en el catálogo"));

        db.close();
    }
}

Proveedores::~Proveedores()
{
    delete ui;
}

void Proveedores::on_btn_new_clicked()
{
    New *n = new New;
    n->setAttribute(Qt::WA_DeleteOnClose);
    n->show();

}