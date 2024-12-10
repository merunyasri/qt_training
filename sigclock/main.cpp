#include "mywidget.h"

#include <QPushButton>

#include <QVBoxLayout>

#include <QApplication>



int main(int argc, char *argv[])

{

    QApplication a(argc, argv);

    myWidget w;

    QPushButton *btn1 = new QPushButton("Welcome");

    QVBoxLayout *layout = new QVBoxLayout;

    layout->addWidget(btn1);

    w.setLayout(layout);

    w.show();

    QObject::connect(btn1,SIGNAL(clicked()),&w,SLOT(setWelcome()));

    return a.exec();

}
