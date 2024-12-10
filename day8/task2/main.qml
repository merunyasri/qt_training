import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import com.example.login 1.0
import QtQuick.Dialogs 1.2
Window {
    width: 2000
    height: 1000
    visible: true
    title: qsTr("WELCOME")
    property string commonText: ""
    Rectangle{
        id:r1
        width: 2000
        height: 100
        color: "lightblue"
        border.color: "black"
        border.width: 6
        Text {
            id: t
            text: qsTr("HOME")
            font.pixelSize: 40
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill:parent
            onClicked:{
                  r2.visible=false
            }
        }
    }
        MyRectangle {
            id:btn1
            width: 637
            height: 294
            border.color: "black"
            border.width: 5
            anchors.top: r1.bottom
            Text {
                id: t1
                text: qsTr("Admin1")
                anchors.centerIn: parent
                font.pointSize: 24
            }
            MouseArea{
                anchors.fill:parent
                onClicked:{
                      r2.visible=true
                }
            }
        }
        MyRectangle {
            id:btn2
            anchors.top: r1.bottom
            anchors.left: btn1.right
            border.color: "black"
            border.width: 5
            Text {
                id: t2
                text: qsTr("Admin2")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        MyRectangle {
            id:btn3
            anchors.top: r1.bottom
            anchors.left: btn2.right
            border.color: "black"
            border.width: 5
            Text {
                id: t3
                text: qsTr("Admin3")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        MyRectangle {
            id:btn4
            anchors.top: btn1.bottom
            border.color: "black"
            border.width: 5
            Text {
                id: t4
                text: qsTr("Admin4")
                anchors.centerIn: parent
                font.pointSize: 24
            }

        }
        MyRectangle {
            id: btn5
            anchors.top: btn2.bottom
            anchors.left: btn4.right
            border.color: "black"
            border.width: 5
            Text {
                id: t5
                text: qsTr("Admin5")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        MyRectangle {
            id:btn6
            anchors.top: btn3.bottom
            anchors.left: btn5.right
            border.color: "black"
            border.width: 5
            Text {
                id: t6
                text: qsTr("Admin6")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        MyRectangle {
            id:btn7
            anchors.top: btn4.bottom
            border.color: "black"
            border.width: 5
            Text {
                id: t7
                text: qsTr("Admin7")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        MyRectangle {
            id:btn8
            anchors.top: btn4.bottom
            anchors.left: btn7.right
            border.color: "black"
            border.width: 5
            Text {
                id: t8
                text: qsTr("Admin8")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        MyRectangle {
            id:btn9
            anchors.top: btn5.bottom
            anchors.left: btn8.right
            border.color: "black"
            border.width: 5
            Text {
                id: t9
                text: qsTr("Admin9")
                anchors.centerIn: parent
                font.pointSize: 24
            }
        }
        Rectangle{
            id:r2
            width: 500
            height: 500
            color: "lightblue"
            anchors.centerIn: parent
            border.color: "black"
            border.width: 10
            visible: false
            Column{
                anchors.centerIn: parent
                spacing: 10
            TextField{
                id:tf1
                placeholderText: "username"
            }
            TextField{
                id:tf2
                placeholderText: "email"
            }
            TextField{
                id:tf3
                placeholderText: "phone"
            }


            Button{
                id:bt
                text: "Submit"
                font.pointSize: 10
                background: Rectangle{
                    color:"green"
                    radius: 10
                }
                onClicked: {
                    if (loginmanager.login(tf1.text, tf2.text, tf3.text)) {
                        console.log("Login successful!");
                        r2.visible=false
                    }else {
                        console.log("Login failed!");
                        r2.visible=false
                    }
                    loginmanager.login(tf1.text, tf2.text, tf3.text);

                }

            }
            Button{
                id:bt2
                text: "clear"
                font.pointSize: 10
                background: Rectangle{
                    color:"green"
                    radius: 10
                }
                onClicked:{
                    tf1.text=""
                    tf2.text=""
                    tf3.text=""
                }

            }
        }

        }
        LoginManager{
            id: loginmanager
        }
}





