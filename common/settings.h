#ifndef SETTINGS_H
#define SETTINGS_H
#include <QString>
class Settings{
public:
    Settings();

    void setDatabasename( const QString& );
    QString getDatabaseName();
};

#endif // SETTINGS_H
