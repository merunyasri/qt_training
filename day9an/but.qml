import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQml 2.12

Rectangle{
    id: home1
    color: "light blue"
    width: 150
    height: 50
    signal myclick (string value)
    property string value;
    Text{
        id: name_home
        text: home1.value;
        anchors.centerIn: parent
        font.bold: true;
        color: "light pink"
        font.pixelSize: 30;
        style: Text.Outline;
        styleColor: "black"
    }
    MouseArea{
        id: msh
        anchors.fill: parent
    }
    onMyclick: {console.log("Signal Handled", value)}
    MouseArea{
    Connections{
        target: msh
        onClicked: home1.myclick(name_home.text)
      }

    }

}
