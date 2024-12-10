import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyComponents{
        id: mycomponent1
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: otherComponent.customClicked()
        }
    }
    OtherComponent{
        id: otherComponent
        anchors.top: mycomponent1.bottom
        anchors.left: mycomponent1.left
        label: "Merunya"
    }
}
