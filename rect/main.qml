import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("sample anchor positioning")
    Rectangle{
        id:r1
        height:100
        width:150
        color:"skyblue"
        x:5
        y:5

        Text{
            text:qsTr("Home ")
            font.pixelSize:25
            anchors.centerIn: parent
        }
}
    Rectangle{
        id:r2
        height:100
        width:150
        color:"skyblue"
        anchors.left:r1.right
        anchors.leftMargin:30
        y:5
        Text{
            text:qsTr("Login")
            font.pixelSize:25
            anchors.centerIn: parent
        }
}
    Rectangle{
        id:r3
        height:100
        width:150
        color:"light green"
        anchors.left:r1.right
        anchors.top:r2.bottom
        anchors.leftMargin:30
        anchors.topMargin:30


        Text{
            text:qsTr("Products")
            font.pixelSize:25
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id:r4
        height:100
        width:150
        color:"lightgreen"
        anchors.left:r1.bottom
        anchors.top:r2.bottom
        anchors.leftMargin:30
        anchors.topMargin:30
        x:5
        y:5

        Text{
            text:qsTr("Services")
            font.pixelSize:25
            anchors.centerIn: parent

}
    }
    Rectangle{
        id:r5
        height:100
        width:150
        color:"pink"
        anchors.left:r5.bottom
        anchors.top:r3.bottom
        anchors.leftMargin:30
        anchors.topMargin:30
        x:5
        y:5

        Text{
            text:qsTr("About us")
            font.pixelSize:25
            anchors.centerIn: parent

}
    }
    Rectangle{
        id:r6
        height:100
        width:150
        color:"pink"
        anchors.left:r4.right
        anchors.top:r3.bottom
        anchors.leftMargin:30
        anchors.topMargin:30
        x:5
        y:5


        Text{
            text:qsTr("Contact us")
            font.pixelSize:25
            anchors.centerIn: parent

}
    }

}
