#include "loginmanager.h"
#include "qdebug.h"

loginmanager::loginmanager(QObject *parent) : QObject(parent)
{
  m_database = QSqlDatabase::database();
  }
bool loginmanager::loginpage(QString username,QString password)
{
  QSqlQuery query1;
  query1.prepare("SELECT username,password FROM users WHERE username=:username AND password=:password");
  query1.bindValue(":username", username);
   query1.bindValue(":password", password);
   if (!query1.exec()) {
   qDebug() << "Query failed!";
   return false;
   }
   if (query1.next()) {
   qDebug() << "Login successful!";
   return true;
   }
   qDebug() << "Login failed!";
   return false;

}
