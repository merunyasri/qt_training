import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

 CheckBox {
    text:"Check Box"
    style:CheckBoxStyle{
        indicator:Rectangle{
        implicitWidth:25
        implicitHeight:25
        radius:5
        border.color:control.activeFocus ? "darkblue":"grey"
         border.width:3
    Rectangle{
        visible:control.checked
        color:"red"
        border.color:"blue"
        radius:3
        anchors.margins:4
        anchors.fill:parent
     }
   }
  }
 }

