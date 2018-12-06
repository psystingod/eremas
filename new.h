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

    int action = 0;

    void setAction(int action)
        {
            this->action = action;
        }

    int getAction()
        {
            return this->action;
        }
    //Declarando las variables a usar por el formulario new
    //QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    //QSqlQueryModel *modelProviders = new QSqlQueryModel();
    //QSqlQuery query;
   //QSqlQuery querySearch;

private slots:
    void on_btn_cancel_clicked();

    void on_btn_save_clicked();

private:
    Ui::New *ui;
};

#endif // NEW_H
