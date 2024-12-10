import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column{
        id:c1
        width: parent.width
        height:400
        Mytextinput{
            id:t1;val:"Username";placeH:"placearea"

        }
        Mytextinput{
            id:t2;val:"Roll no";placeH:"placearea"
        }
        Mytextinput{
            id:t3;val:"Department";placeH:"placearea"

        }
        Mytextinput{
            id:t4;val:"Email";placeH:"placearea"

        }

    }
}
