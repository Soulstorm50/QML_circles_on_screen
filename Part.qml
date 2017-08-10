import QtQuick 2.0

Item {
    id: part
        width: 150
        height: 160
        visible: true; // указываем, что объект виден
        Flipable { // свойство, означающее поворот объекта

            states: State { // задаем состояние
                name: "back" // название состояния
                PropertyChanges { target: rotation; angle: 180} // изменяемые параметры
                when: main.flipped // когда переменная указывает на то, что был совершен переворот
            }

            transitions: Transition {
                NumberAnimation { target: rotation; property: "angle"; duration: 2000;} // задаем время анимации
            }

            MouseArea { // указваем, что будем делать при клике на картинку
                anchors.fill: main
                onClicked: main.flipped = !main.flipped // меняем значение переменной

            }
        }

}
