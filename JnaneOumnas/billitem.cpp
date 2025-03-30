#include "billitem.h"

BillItem::BillItem(QString &name, double pricePerUnit, double quanity) :
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

double BillItem::totalPrice() const
{
    return m_pricePerUnit * m_quantity;
}

const QString &BillItem::id() const
{
    return m_id;
}

const QString &BillItem::name() const
{
    return m_name;
}
