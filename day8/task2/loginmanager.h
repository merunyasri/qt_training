#ifndef LOGINMANAGER_H
#define LOGINMANAGER_H
#include <QObject>
#include <QtSql>
#include<QFile>
#include<QDebug>
class LoginManager : public QObject
{
    Q_OBJECT
public:
    explicit LoginManager(QObject *parent = nullptr);
    // void writeData();
signals:
public slots:
    bool login(QString username, QString email, QString phone);
private:
    QSqlDatabase m_database;
};
#endif // LOGINMANAGER_H
