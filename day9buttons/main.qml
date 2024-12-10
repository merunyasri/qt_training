import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column{
        id:c1
        width: parent.width
        height: 400
        anchors.centerIn: parent;
        Row{
            id:row1
            width:parent.width
            height: 60
            spacing: 20
            anchors.centerIn: parent
            Button {
                id: b1
                value:"CSE"
                onMyclick: {
                    console.log("CSE clicked")
                }
            }
            Button {
                id: b2
                value:"IT"
                onMyclick: {
                    console.log("IT clicked")
                }
            }
            Button {
                id: b3
                value:"CSBS"
                onMyclick: {
                    console.log("CSBS clicked")
                }
            }
        }
    }
}
