import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Resuable components ")

  Button{
    text: "Click me"
    height: 60
    width:80
    x:100
    y:200
}
  CheckBox{
    text:"male"
    checked:true
  }
  CheckBox{
      x:10
      y:100
      text:"Info Tech"
      checked:false
  }
}
