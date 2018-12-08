#ifndef NEW_H
#define NEW_H

#include <QWidget>
#include <QSqlQuery>
#include <QtSql>
#include <QSqlDatabase>
#include "proveedores.h"

namespace Ui {
class New;
}

class New : public QWidget
{
    Q_OBJECT

public:
    explicit New(QWidget *parent = nullptr);
    ~New();

    int action = 0;

    void setAction(int action)
        {
            this->action = action;
        }

    int getAction()
        {
            return this->action;
        }

    // Getters and setters for index value of tableViewProviders

    QString index_value = "";

    void setIndex(QString index_value)
        {
            this->index_value = index_value;
        }

    QString getIndex()
        {
            return this->index_value;
        }

    //Declarando las variables a usar por el formulario new
    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    //QSqlQueryModel *modelProviders = new QSqlQueryModel();
    //
    QSqlQuery query2;
   //QSqlQuery querySearch;


private slots:
    void on_btn_cancel_clicked();

    void on_btn_save_clicked();

private:
    Ui::New *ui;
};

#endif // NEW_H

