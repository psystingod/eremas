#ifndef PROVEEDORES_H
#define PROVEEDORES_H

#include <QWidget>
#include <QSqlQuery>
#include <QtSql>
#include <QSqlDatabase>
#include <QMessageBox>

namespace Ui {
class Proveedores;
}

class Proveedores : public QWidget
{
    Q_OBJECT

public:
    explicit Proveedores(QWidget *parent = nullptr);
    ~Proveedores();
    // Setting variables
    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    QSqlQueryModel *modelProviders = new QSqlQueryModel();
    QSqlQuery query;

private slots:
    void on_btn_new_clicked();

private:
    Ui::Proveedores *ui;
};

#endif // PROVEEDORES_H
