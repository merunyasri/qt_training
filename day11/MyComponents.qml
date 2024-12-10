import QtQuick 2.0

Item {
    id: item1
    height: 100
    width: 100
    Rectangle{
        id: rectangle1
        width: item1.width
        height: item1.height
        color: "light blue"

    Rectangle{
        id: innerRectangle
        width: rectangle1.width
        height: rectangle1.height
        color: "light pink"
        radius: 100
    }

    }
}


