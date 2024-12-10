import QtQuick 2.12
import QtQuick.Controls 2.12
import com.example.login 1.0

ApplicationWindow {
    id:window
    width: 400
    height: 300
    visible: true
    title: "Login"
    Column{
        spacing:10
        TextField{
            id:usernameField
            placeholderText:"Username"
        }
        TextField {
         id: passwordField
         placeholderText: "Password"
         echoMode: TextInput.Password
         }
        Button{
            text:"Login"
            onClicked:{
                if(loginmanager.loginpage(usernameField.text,passwordField.text)){
                    console.log("Login successful");
                     } else{
                    console>log("Login Failed");

                }

            }
            LoginManager {
             id: loginmanager
             }
        }

    }
}
