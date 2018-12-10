#include "dbConection.h"

static QSqlDatabase db;

dbConection::dbConection(){

}
bool dbConection::open(QString databaseName){
    try {
        Settings *settings = new Settings();
        settings->setHostName("localhost");
        settings->setDatabaseName(databaseName);
        settings->setUserName("root");
        settings->setPassword("");

        db = QSqlDatabase::addDatabase("QMYSQL");
        db.setHostName(settings->getHostName());
        db.setDatabaseName(settings->getDatabaseName());
        db.setUserName(settings->getUserName());
        db.setPassword(settings->getPassword());

        db.open();
        qDebug()<<("Connectado a la base de datos...");
        return true;

    } catch (QString e) {
        qDebug() << "Ha ocurrido un error: " + e;

    }

}
void dbConection::close(){
    QString databaseName;
    databaseName = db.databaseName();
    db.removeDatabase(databaseName);
    db.close();
    qDebug()<<("Disconected...");
}

