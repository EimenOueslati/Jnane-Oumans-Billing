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

void Bill::delteItem(QString &id)
{
    for(int i = 0; i < m_items.size(); i++) {
        if(m_items[i]->id() == id)
            m_items.erase(m_items.begin() + i);
    }
}

std::shared_ptr<BillItem> Bill::getItem(QString id)
{
    for(int i = 0; i < m_items.size(); i++) {
        if(m_items[i]->id() == id)
            return m_items[i];
    }

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
