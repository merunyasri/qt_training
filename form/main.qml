import QtQuick 2.12
import QtQuick.Window 2.2
import QtQuick.Controls 2.12
Window {
 visible: true
 width: 840
 height: 680
 title: qsTr("Form")
 Rectangle {
 id: form
 color: "white"
 border.color: "black"
 border.width: 1
 width: parent.width * 0.9
 height: parent.height * 0.9
 anchors.centerIn: parent
 Column {
 spacing: 10
 anchors.centerIn: parent
 Text {
 text: "Please fill out the form below"
 font.bold: true
  horizontalAlignment: Text.AlignHCenter
  }
  TextField {
  id: nameField
  placeholderText: "Name"
  }
  TextField {
  id: emailField
  placeholderText: "Email"
  }
  CheckBox {
  id:chbox
  text: "Subscribe to our newsletter"
  checked: false
  }
  RadioButton {
  id:rbutton
  text: "Male"
  checked: true
  }
  RadioButton {
  id:rbutton1
  text: "Female"
  checked: false
  }
  Text {
  text: "Select your age range:"
   }
   Slider {
   id: ageSlider
   from: 0
   to: 100
   stepSize: 1
   value: 25
   }
   Button {
   text: "Submit"
   width: parent.width * 0.4
   onClicked: {
   console.log("Name: " + nameField.text)
   console.log("Email: " + emailField.text)
   console.log("Subscribe to newsletter: " + chbox.checked)
   console.log("Gender: " + (rbutton.checked ? "Male" : "Female"))
   console.log("Age: " + ageSlider.value)
   }
   }
   }
  }
  }
