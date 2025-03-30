#ifndef BILLITEM_H
#define BILLITEM_H

#include <QString>

class BillItem
{
public:
    BillItem();
    int totalPrice();
    QString name();
    int pricePerUnit();
    int quantity();
private:
    QString m_name;
    int m_pricePerUnit;
    int m_quantity;
};

#endif // BILLITEM_H
