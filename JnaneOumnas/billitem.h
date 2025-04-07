#ifndef BILLITEM_H
#define BILLITEM_H

#include <QString>

class BillItem
{
public:
    BillItem(const QString &name, double pricePerUnit, double quanity);
    double totalPrice() const;
    const QString &name() const;
    double pricePerUnit() const;
    double quantity() const;
    void setPricePerUnit(double price);
    void setQuantity(double quantity);
private:
    QString m_name;
    double m_pricePerUnit;
    double m_quantity;
};

#endif // BILLITEM_H
