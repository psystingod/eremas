#ifndef NEW_H
#define NEW_H

#include <QWidget>
#include <QSqlQuery>
#include <QtSql>
#include <QSqlDatabase>

namespace Ui {
class New;
}

class New : public QWidget
{
    Q_OBJECT

public:
    explicit New(QWidget *parent = nullptr);
    ~New();
    //Declarando las variables a usar por el formulario new
    //QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    //QSqlQueryModel *modelProviders = new QSqlQueryModel();
    //QSqlQuery query;
   //QSqlQuery querySearch;

private:
    Ui::New *ui;
};

#endif // NEW_H
