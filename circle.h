#ifndef CIRCLE_H
#define CIRCLE_H

#include <QObject>


class Circle : public QObject
{

    Q_OBJECT
    Q_PROPERTY(int x READ getX NOTIFY xPosition())
    Q_PROPERTY(int y READ getY NOTIFY yPosition())

public:
    explicit Circle(QObject *parent = nullptr);
    int getX();

    int getY();

signals:
    void xPosition();
    void yPosition();
public slots:
    slotPositionX();
    slotPositionY();

private:
    int x;
    int y;

    int dx;
    int dy;
};





#endif // CIRCLE_H
