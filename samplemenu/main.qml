import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Menu Creation")
    Text {
        id: name
        text: qsTr("Right click the window anywhere to use menu")
        anchors.centerIn: parent
        font.pointSize: 10
        font.bold:true
    }
    MouseArea{
        anchors.fill:parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button===Qt.RightButton)
                contextMenu.popup()
        }
        onPressAndHold: {
            if(mouse.source===Qt.MouseEventNotSynthesized)
             contextMenu.popup()
        }

        Menu{
            id:contextMenu
            MenuItem{text:"Restart"}
            MenuItem{text:"Refresh"}
            MenuItem{text:"ShutDown"}
        }

        }
    Button{
        id:fileButton
        text:"Click"
        onClicked:menu.open()

        Menu{
            id:menu
            y:fileButton.height
            MenuItem{
                text:"New"
                MouseArea{
                    onClicked: {
                        console.log("New menu item clicked ")
                    }
                }
            }
            MenuItem{
                text:"Open"
            }
            MenuItem{
                text:"Save"
            }
        }
    }


}
