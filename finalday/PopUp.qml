import QtQuick 2.0

Item {
    id: item1
    property string value
    property int h1
    property int w1
    Rectangle{
        id: rectangle1
        height: item1.h1
        width: item1.w1
        color: "light green"
        Text {
            id: text1
            text: qsTr(item1.value)
            anchors.centerIn: parent
            font.pixelSize: 15
        }
    }
}
