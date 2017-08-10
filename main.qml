import QtQuick 2.6
import QtQuick.Window 2.2
import circle 1.0

Window {
    visible: true
    width: 700
    height: 540
    title: qsTr("SuperBalls")


    GridView {
        id: gridView
        width: 640
        height: 480
        delegate:

            Rectangle {
            id: circle
            width: 60
            height: 60
            color: "black"
            radius: 30
            x: 0
            y: 0




            Circle{
                id: objCircle

            }

            Behavior on x {
                SpringAnimation{
                    spring: 1
                    damping: 0.2
                }
            }

            Behavior on y {
                SpringAnimation{
                    spring: 1
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
                interval: 50; running: true; repeat: true;
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
            ListElement{

            }
            ListElement{

            }




        }
    }

}
