import QtQuick 2.0
import QtQuick.Controls 2.5

Button {
    id:b1
    property var color;
    property var textColor:"white"
    background:Rectangle{
        width:b1.width
        height:b1.height
        color:b1.color
    }
    contentItem: Text{
        color:b1.textColor
        text:b1.text
    }

}
