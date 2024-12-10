import QtQuick 2.0

Item{

id: item1
height: 100
width: 100

property string label: ""
signal customClicked

onCustomClicked: (text1.text = "Clicked")

Rectangle{
            id: rectangle2
            color: "light green"
            height: item1.height
            width: item1.width
            Text {
                id: text1
                text: item1.label
                font.italic: true
                font.pointSize: 10
                anchors.centerIn: parent
           }
        }

}
