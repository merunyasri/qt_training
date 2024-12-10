import QtQuick 2.0
import QtQuick.Controls 2.5

Row {
      property string text1:b1.text
     property alias text2:b2.text
     property string text3:b3.text
    id:r1
    Button{
        id:b1
        text:r1.text1
    }
    Button{
        id:b2
        text:"b2"
    }
    Button{
        id:b3
        text:"b3"
    }

}
