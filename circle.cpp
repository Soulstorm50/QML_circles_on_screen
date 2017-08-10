#include "circle.h"
#include <QDebug>



Circle::Circle(QObject *parent) : QObject(parent)
  ,x(0)
  ,y(0)
  ,dx(1 + rand() % 4)
  ,dy(1 + rand() % 3)
{

}

int Circle::getY()
{

    y += dy;

    if((y + dy) > 480 || (y + dy) < 0)
    {
        dy = -dy;
    }
    return y;

}

int Circle::getX()
{

    x += dx;

    if((x + dx) > 640 || (x + dx) < 0)
    {
        dx = -dx;
    }

    return x;
}

Circle::slotPositionX()
{
    emit getX();
}

Circle::slotPositionY()
{
  emit getY();
}
