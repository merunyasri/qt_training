import QtQuick 2.11
Rectangle{
    property alias text:t1.text
    width:100
    height:35
    color: "skyblue"
    border.color: "black"
    border.width:2;
    Row{
        id:r1
        anchors.fill:parent
        Rectangle{
            id:indi
            width:40
            height:35
            border.width:1
            Text{
                id:t2
                anchors.centerIn:parent
                text:"M"
            }
            MouseArea{
                anchors.fill:parent
                onClicked:{
                    t2.visible=!t2.visible
                }
            }
        }
        Text{
            id:t1
            text:"Welcome"
        }
    }

}
