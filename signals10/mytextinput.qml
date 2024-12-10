import QtQuick 2.0
import QtQuick.Controls 2.5

Row {
      id:row1
      width:parent.width
      height:75
      property alias val:t1.text
      property alias val:t2.text
      spacing:50
      Text{
          id:t1
      //    text:row1.val
      }
      TextField{
          id:t2
      //    text:row1.placeH
      }

}
