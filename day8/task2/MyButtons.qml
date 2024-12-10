import QtQuick 2.0
Rectangle{
    id:r1
    color:"light blue"
    width: 150
    height: 150
    radius: 20
    property string value

    signal myClick(string value)
    Text{
        id:t1
        text:r1.value
        font.pixelSize: 25
        anchors.centerIn: parent
    }
    MouseArea{
        id:ms
        anchors.fill:parent
        onClicked:{
            r1.myClick(t1.text)
        }
    }
}
