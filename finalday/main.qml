import QtQuick 2.12
import QtQuick.Window 2.12
import com.example.login 1.0
import QtQuick.Controls 2.12

ApplicationWindow {
    id:window
    width: 400
    height: 300
    visible: true
    title: qsTr("Log in")
    color: "purple"
    Column{
        spacing: 20
        anchors.centerIn: parent
        TextField{
            id: usernameField
            placeholderText: "Enter Username"
            width: 300
        }
        TextField{
            id: passwordField
            placeholderText: "Enter Password"
            echoMode: TextInput.Password
            width: 300
        }
        PopUp{
            id: popup
            visible: false
            anchors.top: btn1.bottom
            anchors.topMargin: 20
            anchors.left: passwordField.left

        }
        PopUp2{
            id:popUp
            visible: false
            anchors.top: btn1.bottom
            anchors.topMargin: 20
            anchors.left: passwordField.left

        }


        Button{
            id: btn1
            text: "Login"
            onClicked:{
                if(loginManager.login(usernameField.text,passwordField.text)){
                    console.log("Login Succcessfull");
                    popup.visible = true
                    popup.value = "Login Success"
                    popup.h1 = passwordField.height
                    popup.w1 = passwordField.width
                }else{
                    console.log(("Login Failed"))
                    popUp.visible = true
                    popUp.value = "Login Failed"
                    popUp.h1 = passwordField.height
                    popUp.w1 = passwordField.width
                }
            }
        }

    }
    Loginmanager {
    id: loginManager
    }

}
