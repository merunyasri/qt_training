import QtQuick 2.5

Rectangle {
    id:r1
    width:150
    height:50
    color: "skyblue"
    property string value;
    Text {
        id: t1
        text: r1.value
        anchors.centerIn:parent
    }

    signal myclick(strind value)
    signal myclicks(string value1,string value2)
 //function display_1()
 //{
 //   console.log("my 1st method")
    MouseArea{
        id:ms
        anchors.fill:parent
    }
    Connections{
        target:ms
        onClicked:
        {
            r1.myclick(t1.text);
            r1.myclicks(t1.text,t1,text)
        }
    }
}

