#ifndef LOGINMANAGER_H
#define LOGINMANAGER_H

#include <QObject>
#include <QtSql>
#include <QFile>
#include <QDebug>

class loginmanager : public QObject
{
    Q_OBJECT
public:
    explicit loginmanager(QObject *parent = nullptr);
   //  void writeData();
signals:
public slots:
     bool loginpage(QString username,QString password);
 private:
     QSqlDatabase m_database;

};

#endif // LOGINMANAGER_H
