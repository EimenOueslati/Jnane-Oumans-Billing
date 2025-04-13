#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <qqml.h>
#include <QAbstractTableModel>
#include "billitem.h"

class TableModel : public QAbstractTableModel
{
private:
    Q_OBJECT
    QML_NAMED_ELEMENT(TableModel)
    std::vector<std::shared_ptr<BillItem>> m_items;

    QVariant getItemComponent(int index, int component) const;
    bool editItemComponent(int index, int component, const QVariant &value) const;
public:

    enum Roles {
        NameRole = Qt::UserRole + 1,
        QuantityRole,
        PricePerUnitRole,
        TotalPriceRole
    };

    TableModel(QObject *parent = nullptr);
    int rowCount(const QModelIndex & = QModelIndex()) const override;
    int columnCount(const QModelIndex & = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role) override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
    QHash<int, QByteArray> roleNames() const override;
    Q_INVOKABLE bool addItem(const QString &name, double pricePerUnit, double quantity);
};
#endif // TABLEMODEL_H
