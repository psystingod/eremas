#ifndef ACTIONS_H
#define ACTIONS_H

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include <mainwindow.h>

class Actions
{
public:
    Actions();

    void rechargeDepartments(QTableView* tableViewDepartments, QSqlDatabase db, QSqlQueryModel *model, QSqlQuery qry){
        //Recharge table departments
        qry.prepare("select * from departments");
        qry.exec();
        model->setQuery(qry);
        tableViewDepartments->setModel(model);
        db.close();
    }
};

#endif // ACTIONS_H
