#ifndef BILL_H
#define BILL_H

#include <qdatetime.h>
#include <vector>
#include "billitem.h"

class Bill
{
public:
    Bill(QDate date, QString billId);
    void addItem(BillItem &&item);
    void delteItem(QString &id);
    std::shared_ptr<BillItem> getItem(QString id);
    const std::vector<std::shared_ptr<BillItem>> &items() const;
    const QDate &date() const;
    const QString &id() const;
    QString m_client;
    QString m_clientICE;
    double m_tva;
    QString paymentMethod;
private:
    std::vector<std::shared_ptr<BillItem>> m_items;
    QDate m_date;
    QString m_billId;
};

#endif // BILL_H
