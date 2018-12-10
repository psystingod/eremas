#ifndef DBCONECTION_H
#define DBCONECTION_H

#include <QString>
#include <QSqlQuery>
#include <QSqlDatabase>
#include <QtDebug>

class dbConection {
public:
    dbConection();

    bool open(QString databaseName);
    void close();
};

#endif // DBCONECTION_H
