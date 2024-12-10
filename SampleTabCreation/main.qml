import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls  1.0
import  QtQuick .Controls.Styles 1.2

Window {
    width: 640
    height: 480
    visible: true
    opacity:1
    title: qsTr("Sample Tab Creation")
    TabView{
        height:300
        anchors.fill: parent
        Tab {
            title:"Robot"
          Image{
              source:"Robot.jpg"
              fillMode:Image.PreserveAspectFit
          }
        }
        Tab{
              title:"Car"
            Image{
                source:"car.jpg"
                fillMode:Image.PreserveAspectFit
            }
        }
        Tab{
              title:"Menu"
            Rectangle{
               height:10
               width:20
               color:"skyblue"
               Text{
                   id:name
                   text: qsTr("Right click for menu")
               }
               MouseArea{
                   anchors.fill:parent
                   acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                       if (mouse.button===Qt.RightButton)
                           contextMenu.popup()
                   }
                   onPressAndHold: {
                       if(mouse.source===Qt.MouseEventNotSynthesized)
                        contextMenu.popup()
                   }

                   Menu{
                       id:contextMenu
                       MenuItem{text:"Restart"}
                       MenuItem{text:"Refresh"}
                       MenuItem{text:"ShutDown"}
                   }

                   }

            }

        }
    }
}
