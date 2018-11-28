#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtSql>
#include <QSqlDatabase>
#include <QMessageBox>
#include <QAbstractItemView>
#include <QRegularExpression>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    QSqlQueryModel *model = new QSqlQueryModel();
    QSqlQueryModel *modelMun = new QSqlQueryModel();
    QSqlQueryModel *modelCol = new QSqlQueryModel();
    QSqlQueryModel *searchDepartment = new QSqlQueryModel();
    QSqlQuery qry;
    QSqlQuery qrySearch;
    QStringListModel *departmentsList = new QStringListModel();


private slots:
    void on_btnAdd_clicked();

    void on_btnEdit_clicked();

    void on_btnDelete_clicked();

    void on_btnSave_clicked();

    void on_tableViewDepartments_clicked(const QModelIndex &index);

    void on_btnAddMun_clicked();

    void on_btnEditMun_clicked();

    void on_btnDeleteMun_clicked();

    void on_btnSaveMun_clicked();

    void on_tableViewMunicipie_clicked(const QModelIndex &index);

    void on_btnAddCol_clicked();

    void on_btnEditCol_clicked();

    void on_btnDeleteCol_clicked();

    void on_btnSaveCol_clicked();

    void on_tableViewCol_clicked(const QModelIndex &index);

    void on_searchDepartment_textChanged(const QString &arg1);

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
