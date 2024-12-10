#include "loginmanager.h"
#include "qdebug.h"
LoginManager::LoginManager(QObject *parent) : QObject(parent)
{
    m_database = QSqlDatabase::database();
}
bool LoginManager::login(QString username, QString email, QString phone)
{
    QSqlQuery query1;
    query1.prepare("SELECT username,email,phone FROM user WHERE username = :username AND email = :email AND phone = :phone");
            query1.bindValue(":username", username);
            query1.bindValue(":email", email );
            query1.bindValue(":phone", phone );
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
