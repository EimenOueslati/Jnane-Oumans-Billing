#ifndef BILLITEM_H
#define BILLITEM_H

#include <QString>

class BillItem
{
public:
    BillItem(QString id, QString name, double pricePerUnit, double quanity);
    double totalPrice() const;
    const QString &id() const;
    const QString &name() const;
    double pricePerUnit() const;
    double quantity() const;
private:
    QString m_id;
    QString m_name;
    double m_pricePerUnit;
    double m_quantity;
};

#endif // BILLITEM_H
