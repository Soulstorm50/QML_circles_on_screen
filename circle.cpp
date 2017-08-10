#include "circle.h"
#include <QDebug>



Circle::Circle(QObject *parent) : QObject(parent)
  ,x(rand() % 600)
  ,y(rand() % 600)
{

}

int Circle::getY()
{

    dy = 1;
    y += dy;
    return y;
    if(y > 600)
    {
        dy = -1;
    }
    else if(y < 0)
    {
        dy = 1;
    }

    qDebug() << "coordY: " << y << "\n";
}

int Circle::getX()
{

    dx = 1;
    x += dx;
    return x;
    if(x > 600)
    {
        dx = -1;
    }
    else if(x < 0)
    {
        dx = 1;
    }
    qDebug() << "coordX: " << x << "\n";
}

Circle::slotPositionX()
{
    emit getX();
}

Circle::slotPositionY()
{
  emit getY();
}
