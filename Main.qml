import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    visible:true
    width: 500
    height: 400
    title:"Animations"
    color:"white"
        Column {
            spacing:20
            anchors.centerIn: parent

                Rectangle {
                    id:myRectangle
                    width: 150
                    height: 150
                    color:"darkblue"
                    border.color: "black"
                    radius: 5
                        Behavior on width {
                            NumberAnimation {
                                duration:2000
                                easing.type: Easing.InOutQuart
                        }
                        }
                }
        }
        Button {
            anchors.centerIn:parent
            text:"Tikla ve degistir"
            onClicked: {
                if (myRectangle.width === 150) {
                    myRectangle.width = 350
                }
                else {
                    myRectangle.width = 150
                }
            }
        }

}
