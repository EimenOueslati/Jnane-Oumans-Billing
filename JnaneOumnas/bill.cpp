#include "bill.h"

Bill::Bill(QDate date, QString billId) :
    m_date(date),
    m_billId(billId)
{

}

void Bill::addItem(BillItem &&item)
{
    m_items.push_back(std::make_shared<BillItem>(std::move(item)));
}

void Bill::delteItem(int index)
{
    m_items.erase(m_items.begin() + index - 1);
}

std::shared_ptr<BillItem> Bill::getItem(int index) const
{
    if(index >= m_items.size())
        return nullptr;

    return m_items.at(index);
}

const std::vector<std::shared_ptr<BillItem> > &Bill::items() const
{
    return m_items;
}

const QDate &Bill::date() const
{
    return m_date;
}

const QString &Bill::id() const
{
    return m_billId;
}
