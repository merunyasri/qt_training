import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: mainWindow
    width: 360
    height: 640
    visible: true
    title: "Mobile app"

    // Page 1 - Admin Page
    Rectangle {
        id: adminPage
        color: "pink"
        visible: true

        Rectangle {
            id: buttonContainer
            color: "skyblue"
            width: parent.width * 0.8
            height: parent.height * 0.6
            anchors.centerIn: parent
            border.color: "black"
            border.width: 5
            radius: 20

            GridLayout {
                columns: 3
                width: parent.width
                height: parent.height

                // Button 1
                Button {

                    text: "Admin 1"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 0
                    Layout.column:0


                }

                // Button 2
                Button {
                    text: "Admin 2"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 0
                    Layout.column: 1

                }

                // Button 3
                Button {
                    text: "Admin 3"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 1
                    Layout.column: 0
                }

                // Button 4
                Button {
                    text: "Admin 4"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 1
                    Layout.column: 1
                }

                // Button 5
                Button {
                    text: "Admin 5"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 2
                    Layout.column: 0
                }

                // Button 6
                Button {
                    text: "Admin 6"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 2
                    Layout.column: 1
                }
                Button {
                    text: "Admin 7"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 0
                    Layout.column: 3
                }
                Button {
                    text: "Admin 8"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 1
                    Layout.column: 3
                }
                Button {
                    text: "Admin 9"
                    onClicked: stackView.push(studentLoginPage)
                    Layout.row: 2
                    Layout.column: 3
                }
            }
        }
    }

    // Student Login Page
    Rectangle {
        id: studentLoginPage
        color: "lightgreen"
        visible: false

        ColumnLayout {
            width: parent.width
            height: parent.height

            // Username
            TextField {
                id: usernameField
                placeholderText: "Username"
            }

            // Roll Number
            TextField {
                id: rollNumberField
                placeholderText: "Roll Number"
            }

            // Department
            TextField {
                id: departmentField
                placeholderText: "Department"
            }

            // Email
            TextField {
                id: emailField
                placeholderText: "Email"
            }

            // Phone
            TextField {
                id: phoneField
                placeholderText: "Phone"
            }

            // Submit Button
            Button {
                text: "Submit"
                onClicked: {
                    // Handle submit logic here
                }
            }

            // Clear Button
            Button {
                text: "Clear"
                onClicked: {
                    usernameField.text = ""
                    rollNumberField.text = ""
                    departmentField.text = ""
                    emailField.text = ""
                    phoneField.text = ""
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: adminPage
    }
}
