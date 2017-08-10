import QtQuick 2.6
import QtQuick.Window 2.2
import circle 1.0

Window {
    visible: true
    width: 600
    height: 600
    title: qsTr("SuperBalls")


    ListView {
        id: listView
        width: 600
        height: 600
        delegate:

            Rectangle {
            id: circle
            width: 60
            height: 60
            color: "black"
            radius: 40
            x: 0
            y: 0




            Circle{
                id: objCircle

            }

            Behavior on x {
                SpringAnimation{
                    spring: 2
                    damping: 0.2
                }
            }

            Behavior on y {
                SpringAnimation{
                    spring: 2
                    damping: 0.2
                }
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if(circle.state == 1)
                    {
                        circle.visible = false
                    }
                    else
                    {
                    circle.color = "red"
                        circle.state = 1;
                    }
                }

            }

            Timer {
                interval: 1; running: true; repeat: true;
                onTriggered: {
                    x = objCircle.slotPositionX()
                    y = objCircle.slotPositionY()
                }
            }
        }

        model: ListModel {
            id: listModel


            ListElement{

            }
            ListElement{

            }
            ListElement{

            }
            ListElement{

            }
            ListElement{

            }
            ListElement{

            }
            ListElement{

            }
            ListElement{

            }




        }
    }

}
