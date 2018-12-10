#ifndef SETTINGS_H
#define SETTINGS_H
#include <QString>
class Settings{
public:
    Settings();

    void setHostName( const QString& );
    QString getHostName();

    void setDatabaseName( const QString& );
    QString getDatabaseName();

    void setUserName( const QString& );
    QString getUserName();

    void setPassword( const QString& );
    QString getPassword();
};

#endif // SETTINGS_H
