#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtSql>
#include "loginmanager.h"
int main(int argc, char *argv[])
{
 QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
 QGuiApplication app(argc, argv);
 qmlRegisterType<Loginmanager>("com.example.login", 1, 0, "Loginmanager");
 QSqlDatabase m_database = QSqlDatabase::addDatabase("QSQLITE");
 m_database.setDatabaseName("C:/Users/merun/Desktop/login.db");
 if (!m_database.open()) {
 qDebug() << "Failed to open database!";
 return -1;
}

QSqlQuery query;
  if (!query.exec("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT)")) {
  qDebug() << "Failed to create table!";
  return -1;
  }
  const QUrl url(QStringLiteral("qrc:/main.qml"));
  QQmlApplicationEngine engine;
  QObject::connect(&engine, & QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl) {
  if (!obj && url == objUrl)
  QCoreApplication::exit(-1);
  }, Qt::QueuedConnection); engine.load(url);
  return app.exec();
 }
