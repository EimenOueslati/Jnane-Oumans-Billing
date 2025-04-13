#include "tablemodel.h"

QVariant TableModel::getItemComponent(int index, int component) const
{
    if (component == 0) {
        return m_items.at(index)->name();
    } else if (component == 1) {
        return QString::number(m_items.at(index)->quantity(), 'g', 2);
    } else if (component == 2) {
        return QString::number(m_items.at(index)->pricePerUnit(), 'g', 2);
    } else if (component == 3) {
        return QString::number(m_items.at(index)->totalPrice(), 'g', 2);
    }

    return {};
}

bool TableModel::editItemComponent(int index, int component, const QVariant &value) const
{
    if(value.typeId() != QMetaType::Double || value.toDouble() < 0)
        return false;

    if (component == 1) {
        m_items.at(index)->setPricePerUnit(value.toDouble());
        return true;
    } else if (component == 2) {
        m_items.at(index)->setQuantity(value.toDouble());
        return true;
    }

    return false;
}

bool TableModel::addItem(const QString &name, double pricePerUnit, double quantity)
{
    if(name == "" || pricePerUnit <= 0 || quantity <= 0)
        return false;
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_items.push_back(std::make_shared<BillItem>(name, pricePerUnit, quantity));
    endInsertRows();
    for(const auto &item : m_items)
        qDebug() << item->name();
    return true;
}

TableModel::TableModel(QObject *parent) : QAbstractTableModel(parent)
{

}

int TableModel::rowCount(const QModelIndex &) const
{
    return m_items.size();
}

int TableModel::columnCount(const QModelIndex &) const
{
    return 4;
}

QVariant TableModel::data(const QModelIndex &index, int role) const
{
    /*if(role == Qt::DisplayRole)
        return getItemComponent(index.row(), index.column());

    return QVariant();*/
    auto item = m_items.at(index.row());
    switch (role) {
        case NameRole: return item->name();
        case QuantityRole: return QString::number(item->quantity(), 'f', 2);
        case PricePerUnitRole: return QString::number(item->pricePerUnit(), 'f', 2);
        case TotalPriceRole: return QString::number(item->totalPrice(), 'f', 2);
        default: return {};
    }
}

bool TableModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if(role == Qt::EditRole) {
        if(editItemComponent(index.row(), index.column(), value)) {
            emit dataChanged(index, index);
            return true;
        }
        return false;
    }
    return false;
}

QVariant TableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role == Qt::DisplayRole && orientation == Qt::Horizontal) {
        switch (section) {
        case 0: return "Nom";
        case 1: return "Quantité";
        case 2: return "Prix Unitaire";
        case 3: return "Prix Total";
        default: return QVariant();
        }
    }
    return QVariant();
}

QHash<int, QByteArray> TableModel::roleNames() const
{
    return {
        { Qt::DisplayRole, "display" },
        { NameRole, "name" },
        { QuantityRole, "quantity" },
        { PricePerUnitRole, "pricePerUnit" },
        { TotalPriceRole, "totalPrice"}
    };
}








