import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("LAYOUT-COLUMN-ROW-GRID LAYOUT")
    Grid{
        columns:2
        rows:3
        spacing:20
        anchors.centerIn:parent
        width:implicitWidth
        height:implicitHeight
          Rectangle {
            id:r1
            height:100
            width:250
            color:"lightpink"
            border.color: "black"
            border.width: 5
            Text{
                text: qsTr("WELCOME")
                font.pixelSize: 25
                anchors.centerIn:parent

            }
        }
        Rectangle {
            id:r2
            height:100
            width:250
            color:"lightblue"
            border.color: "black"
            border.width: 5
            Text{
                text: qsTr("EDIT")
                font.pixelSize: 25
                anchors.centerIn:parent


            }
        }
        Rectangle {
            id:r3
            height:100
            width:250
            color:"lightgreen"
            border.color: "black"
            border.width: 5
            Text{
                text: qsTr("DESIGN")
                font.pixelSize: 25
                anchors.centerIn:parent

            }
        }
        Rectangle {
            id:r4
            height:100
            width:250
            color:"violet"
            border.color: "black"
            border.width: 5
            Text{
                text: qsTr("DEBUG")
                font.pixelSize: 25
                anchors.centerIn:parent
            }
        }
        Rectangle {
            id:r5
            height:100
            width:250
            color:"orange"
            border.color: "black"
            border.width: 5
            Text{
                text: qsTr("PROJECTS")
                font.pixelSize: 25
                anchors.centerIn:parent
            }
        }
        Rectangle {
            id:r6
            height:100
            width:250
            color:"yellow"
            border.color: "black"
            border.width: 5
            Text{
                text: qsTr("CLOSE")
                font.pixelSize: 25
                anchors.centerIn:parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Close is clicked")
                    Qt.quit()
                }
            }
        }
    }
}
