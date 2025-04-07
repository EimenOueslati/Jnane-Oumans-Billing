#include "billitem.h"

BillItem::BillItem(const QString &name, double pricePerUnit, double quanity) :
    m_name(name),
    m_pricePerUnit(pricePerUnit),
    m_quantity(quanity)
{

}

double BillItem::pricePerUnit() const
{
    return m_pricePerUnit;
}

double BillItem::quantity() const
{
    return m_quantity;
}

void BillItem::setPricePerUnit(double price)
{
    m_pricePerUnit = price;
}

void BillItem::setQuantity(double quantity)
{
    m_quantity = quantity;
}



double BillItem::totalPrice() const
{
    return m_pricePerUnit * m_quantity;
}

const QString &BillItem::name() const
{
    return m_name;
}
