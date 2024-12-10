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
        width:parent.width
        height:400
        TextInput{
            id:t1;val:"Username";placeH:"placearea"
        }
        TextInput{
            id:t2;val:"Roll no";placeH:"placearea"
        }
        TextInput{
            id:t3;val:"Department";placeH:"placearea"
        }
        TextInput{
            id:t4;val:"Email";placeH:"placearea"
        }
        Row{
            width:parent.width
            height: 60
            spacing:5
            Button{
                id:b1
                value:"ok"
                onMyclick:{
                    console.log("ok clicked"+t1.placeH,t2.placeH,t3.placeH)
                }

            }
            Button{
                id:b2
                value:"clear"
            }


        }
      }
    Connections{
        target:b2
        onMyclick:
        {
            console.log("clear clicked")
            t1.placeH=""
            t2.placeH=""
            t3.placeH=""
            t4.placeH=""
        }
    }

}
