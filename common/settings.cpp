#include "settings.h"

static QString host;
static QString database;
static QString user;
static QString pass;

Settings::Settings(){

}
void Settings::setHostName(const QString &hostName){
    host = hostName;

}
QString Settings::getHostName(){
    return host;

}
void Settings::setDatabaseName(const QString &databaseName){
    database = databaseName;
}
QString Settings::getDatabaseName(){
    return database;
}
void Settings::setUserName(const QString &userName){
    user = userName;

}
QString Settings::getUserName(){
    return user;

}
void Settings::setPassword(const QString &password){
    pass = password;
}
QString Settings::getPassword(){
    return pass;
}
