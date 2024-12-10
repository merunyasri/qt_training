import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id:r1
        height:100
        width:300
        color:"skyblue"
        radius: 30
        Text{
            text:qsTr("Rect 1 Hello world")
            font.pixelSize:25
            font.family:Helvetika
            color:white
            anchors.centerIn: parent
        }
        Rectangle {
            id:r2
            height:100
            width:300
            color:"skyblue"
            radius: 30
            x:150
            y:150
            Text{
                text:qsTr("Rect 2 Qml training ")
                font.pixelSize:25
                font.family:Helvetika
                color:"black"
                anchors.centerIn: parent
            }
        }

    }

    Rectangle {
        id:r3
        height:100
        width:300
        color:"pink"
        radius: 30
        x:350
        y:350

        Text{
            text:qsTr("Rect 3 Qml training ")
            font.pixelSize:25
            font.family:Helvetika
            color:"black"
            anchors.centerIn: parent
     }
  }
}
