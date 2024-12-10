#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtSql>
#include "loginmanager.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    // Register the LoginManager class for use in QML
    qmlRegisterType<LoginManager>("com.example.login", 1, 0, "LoginManager");
    // Set up the SQLite database connection
    QSqlDatabase m_database = QSqlDatabase::addDatabase("QSQLITE");
    m_database.setDatabaseName("C:/Users/merun/Downloads/user.db");
    // file.open(QIODevice::ReadWrite);
    if (!m_database.open()) {

        qDebug() << "Failed to open database!";
        return -1;
    }
    // Create the login table if it doesn't already exist
    QSqlQuery query;
    if (!query.exec("CREATE TABLE IF NOT EXISTS users( username TEXT NOT NULL UNIQUE, password TEXT NOT NULL UNIQUE)")) {
        qDebug() << "Failed to create table!";
        return -1;
    }
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QQmlApplicationEngine engine;
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    return app.exec();
}
