#include "mainwindow.h"
#include "ui_mainwindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_actioncut_triggered()
{
  ui->textEdit->cut();
}


void MainWindow::on_actioncopy_triggered()
{
   ui->textEdit->copy();
}


void MainWindow::on_actionRedo_triggered()
{
    ui->textEdit->redo();
}


void MainWindow::on_actionUndo_triggered()
{
    ui->textEdit->undo();
}


void MainWindow::on_actionpaste_triggered()
{
    ui->textEdit->paste();
}


void MainWindow::on_actionQuit_triggered()
{
    QApplication::quit();
}

