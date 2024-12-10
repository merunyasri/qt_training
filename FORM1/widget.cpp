#include "widget.h"
#include "ui_widget.h"
#include <QPushButton>
#include <QComboBox>
#include <QLayout>
#include <QTextEdit>
#include <QGridLayout>
#include<QRadioButton>
#include<QCheckBox>
#include <QLabel>
#include <QSpinBox>
#include <QGroupBox>
#include <QApplication>

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    QWidget *myw = new QWidget();
    myw->setFixedHeight(600);
    myw->setFixedWidth(400);

    QLabel *nbl = new QLabel("Roll Number");
    QTextEdit *ntxt = new QTextEdit();
    QLabel *ybl = new QLabel("year");

    QLabel *dbl =new QLabel("Department");
    QComboBox *dcmb =new QComboBox();
    QLabel *sbl =new QLabel("semester");
    QSpinBox *sspn =new QSpinBox();
    QLabel *gbl =new QLabel("gender");
    QRadioButton *gradio1=new QRadioButton("Male");
    QRadioButton *gradio2=new QRadioButton("Female");
    QLabel *skbl =new QLabel("SKILL SET");
    QCheckBox *lcbl =new QCheckBox("LINUX");
    QCheckBox *qcbl =new QCheckBox("QT ");
    QCheckBox *pcbl =new QCheckBox("PYTHON");
    QCheckBox *jcbl =new QCheckBox("JAVA");
    QPushButton *sbtn=new QPushButton ("Submit");
    QPushButton *rbtn=new QPushButton ("Reset");

    QGridLayout *grid =new QGridLayout(myw);
    grid->addWidget(nbl,0,0);
    grid->addWidget(ntxt,0,1);
    grid->addWidget(ybl,1,0);
    setLayout(grid);
}
   // grid->addWidget(year_grid,1,1);
QGroupBox *Widget::year_gridfunc()
{


    QGroupBox *grpbox = new QGroupBox();
    QRadioButton *yradio1 = new QRadioButton("I");
    QRadioButton *yradio2 = new QRadioButton("II");
    QRadioButton *yradio3 = new QRadioButton("III");
    QRadioButton *yradio4 = new QRadioButton("IV");
   QGridLayout *year_grid= new QGridLayout();
   year_grid->addWidget(yradio1,0,0);
   year_grid->addWidget(yradio2,0,1);
   year_grid->addWidget(yradio3,1,0);
   year_grid->addWidget(yradio4,1,1);
   groupbox->setLayout("year_grid");
   return grpbox;

}



Widget::~Widget()
{
    delete ui;
}

