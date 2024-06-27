// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 10

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "#000000"
//                 font.bold: true
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 110
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150  // Made the progress bar shorter
//                 height: 8  // Made the progress bar thinner
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15  // Made the ends more circular
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 150

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius  // Match the radius of the progress bar
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }



//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text{
//                             text:"After Refuelling"

//                             Layout.alignment:Qt.AlignHCenter

//                         }

//                         RowLayout {
//                             Layout.alignment: Qt.AlignTop
//                             spacing: 150
//                             Text {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: distanceText1
//                                 text: "100.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 65
//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: energyText1
//                                 text: "200.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 138
//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedText1
//                                 text: "50.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout
//                     {
//                         anchors.centerIn: parent
//                         Text{
//                             text:"Trip A"

//                             Layout.alignment:Qt.AlignHCenter

//                         }
//                         RowLayout {
//                             spacing: 150
//                             Layout.alignment: Qt.AlignTop

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }

//                             Text {
//                                 id: distanceText2
//                                 text: "100"
//                                 Layout.fillWidth: true
//                                 color: "red" //
//                             }

//                         }
//                         RowLayout {
//                             spacing: 65
//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: energyText2
//                                 text: "250.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 138
//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedText2
//                                 text: "60.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 150
//                             Label {
//                                 text: "from"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedTextmm
//                                 text: "60.00"
//                                 Layout.fillWidth: true
//                             }
//                         }

//                         RowLayout {
//                             spacing: 150
//                             Label {
//                                 text: "to"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedTextmmm
//                                 text: "60.00"
//                                 Layout.fillWidth: true
//                             }
//                         }

//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text{
//                             text:"Trip A"

//                             Layout.alignment:Qt.AlignHCenter

//                         }
//                         RowLayout {
//                             Layout.alignment: Qt.AlignTop
//                             spacing: 150
//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: distanceText3
//                                 text: "200.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: energyText3
//                                 text: "300.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedText3
//                                 text: "70.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                     }

//                     Timer {
//                         id: tripBTimer
//                         interval: 5000 * 1000 // 5000 seconds
//                         repeat: false
//                         onTriggered: {
//                             let avgSpeed = parseFloat(speedText2.text);
//                             let timeInHours = 5000 / 3600; // convert seconds to hours
//                             let distance = avgSpeed * timeInHours;
//                             distanceText2.text = distance.toFixed(2);

//                         }
//                     }

//                     Timer {
//                         id: tripCTimer
//                         interval: 1000 // 1 second
//                         repeat: true
//                         running: false
//                         onTriggered: {
//                             let currentDistance = parseFloat(distanceText3.text);
//                             distanceText3.text = (currentDistance + 1).toFixed(2);
//                             if (tripCTimer.interval * tripCTimer.triggeredCount >= 60000) { // Stop after 60 seconds
//                                 tripCTimer.stop();
//                             }
//                         }
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             Button {
//                 text: "Reset"
//                 font.pixelSize: 20
//                 Layout.alignment: Qt.AlignHCenter
//                 onClicked: {
//                     switch(view.currentIndex) {
//                     case 0:
//                         distanceText1.text = "0.00"
//                         energyText1.text = "0.00"
//                         speedText1.text = "0.00"
//                         break;
//                     case 1:
//                         distanceText2.text = "0.00"
//                         energyText2.text = "0.00"
//                         speedText2.text = "0.00"
//                         tripBTimer.start();
//                         break;
//                     case 2:
//                         distanceText3.text = "0.00"
//                         energyText3.text = "0.00"
//                         speedText3.text = "0.00"
//                         tripCTimer.start();
//                         break;
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             PageIndicator {
//                 id: indicator
//                 count: view.count
//                 currentIndex: view.currentIndex
//                 anchors.horizontalCenter: parent.horizontalCenter
//             }
//         }
//     }
// }





// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 10

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "#000000"
//                 font.bold: true
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 110
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 150

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                         }

//                         GridLayout {
//                             columns: 3
//                             rowSpacing: 10
//                             columnSpacing: 5

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: distanceText1
//                                 text: "100.00"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: energyText1
//                                 text: "200.00"
//                             }

//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: speedText1
//                                 text: "50.00"
//                             }

//                             Label {
//                                 text: "From"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: fromText1
//                                 text: "Pune"
//                             }

//                             Label {
//                                 text: "To"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: toText1
//                                 text: "Nasik"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                         }

//                         GridLayout {
//                             columns: 3
//                             rowSpacing: 10
//                             columnSpacing: 5

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: distanceText2
//                                 text: "100.00"
//                                 color: "red"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: energyText2
//                                 text: "250.00"
//                             }

//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: speedText2
//                                 text: "60.00"
//                             }

//                             Label {
//                                 text: "From"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: fromText2
//                                 text: "Mumbai"
//                             }

//                             Label {
//                                 text: "To"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: toText2
//                                 text: "Goa"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text {
//                             text: "Trip C"
//                             Layout.alignment: Qt.AlignHCenter
//                         }

//                         GridLayout {
//                             columns: 3
//                             rowSpacing: 10
//                             columnSpacing: 5

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: distanceText3
//                                 text: "200.00"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: energyText3
//                                 text: "300.00"
//                             }

//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: speedText3
//                                 text: "70.00"
//                             }

//                             Label {
//                                 text: "From"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: fromText3
//                                 text: "Delhi"
//                             }

//                             Label {
//                                 text: "To"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: toText3
//                                 text: "Agra"
//                             }
//                         }
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             // Button {
//             //     text: "OK"
//             //     font.pixelSize: 20
//             //     Layout.alignment: Qt.AlignHCenter
//             //     onClicked: {
//             //         switch(view.currentIndex) {
//             //         case 0:
//             //             distanceText1.text = "0.00"
//             //             energyText1.text = "0.00"
//             //             speedText1.text = "0.00"
//             //             break;
//             //         case 1:
//             //             distanceText2.text = "0.00"
//             //             energyText2.text = "0.00"
//             //             speedText2.text = "0.00"
//             //             break;
//             //         case 2:
//             //             distanceText3.text = "0.00"
//             //             energyText3.text = "0.00"
//             //             speedText3.text = "0.00"
//             //             break;
//             //         }
//             //     }
//             // }

//             Item {

//                 anchors.top: parent.top
//                 anchors.topMargin: 300

//                 Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter

//                 RowLayout {
//                     width: parent.width
//                     spacing: 10
//                    // anchors.horizontalCenter: parent.horizontalCenter
//                     anchors.top: parent.top
//                     anchors.topMargin: 45
//                     //anchors.centerIn: parent




//                     Text {
//                         text: "Press OK to reset"
//                         font.pixelSize: 16
//                         color: "#325F62"
//                         Layout.alignment: Qt.AlignHCenter
//                     }

//                     Button {
//                         text: "OK"
//                         font.pixelSize: 20
//                         Layout.alignment: Qt.AlignCenter
//                         //Layout.alignment: Qt.AlignCenter
//                         onClicked: {
//                             switch(view.currentIndex) {
//                             case 0:
//                                 distanceText1.text = "0.00"
//                                 energyText1.text = "0.00"
//                                 speedText1.text = "0.00"
//                                 break;
//                             case 1:
//                                 distanceText2.text = "0.00"
//                                 energyText2.text = "0.00"
//                                 speedText2.text = "0.00"
//                                 break;
//                             case 2:
//                                 distanceText3.text = "0.00"
//                                 energyText3.text = "0.00"
//                                 speedText3.text = "0.00"
//                                 break;
//                             }
//                         }
//                     }
//                 }
//             }




//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             PageIndicator {
//                 id: indicator
//                 count: view.count
//                 currentIndex: view.currentIndex
//                 anchors.horizontalCenter: parent.horizontalCenter
//             }
//         }
//     }
// }






import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 529
    height: 409
    visible: true
    title: qsTr("Trip Information")

    Rectangle {
        id: root
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { color: "#242A2F"; position: 0.0 }
            GradientStop { color: "#2A393E"; position: 0.30 }
            GradientStop { color: "#325F62"; position: 0.45 }
            GradientStop { color: "#325F62"; position: 0.55 }
            GradientStop { color: "#2A393E"; position: 0.70 }
            GradientStop { color: "#242A2F"; position: 1.00 }
        }

        focus: true
        Keys.onLeftPressed: {
            if (view.currentIndex > 0) {
                view.currentIndex--
            }
        }
        Keys.onRightPressed: {
            if (view.currentIndex < view.count - 1) {
                view.currentIndex++
            }
        }

        ColumnLayout {
            anchors.fill: parent
            spacing: 100

            Item {
                Layout.fillWidth: true
                height: 200
            }

            Text {
                id: text
                text: "Trip Info"
                color: "white"
                font.family: "Inter"
                font.pointSize: 20
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle {
                id: progressBar
                width: 150
                height: 8
                color: "transparent"
                border.color: "black"
                border.width: 3
                radius: 15
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 70

                Rectangle {
                    id: progressFill
                    width: progressBar.width * (view.currentIndex + 1) / view.count
                    height: progressBar.height
                    radius: progressBar.radius
                    color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
                }
            }

            Item {
                Layout.fillWidth: true
                height: 40
            }

            SwipeView {
                id: view
                currentIndex: 0
                anchors.fill: parent
                focus: true
                onCurrentIndexChanged: {
                    progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
                }

                Item {
                    ColumnLayout {
                        anchors.centerIn: parent
                        spacing: 25

                        // Text {
                        //     text: "Trip A"
                        //     Layout.alignment: Qt.AlignHCenter
                        //     color: "white"

                        //     font.family: "Inter"
                        // }

                        Text {
                            text: "Trip A"
                            Layout.alignment: Qt.AlignHCenter





                            color: "white"

                            font.pixelSize: 20

                            font.family: "Inter"
                        }




                        GridLayout
                        {
                            columns: 4
                            rowSpacing: 10
                            columnSpacing: 15

                            // Label {
                            //     text: "From"
                            //     color: "white"
                            //     font.pixelSize: 15
                            //     font.bold: true
                            //     font.family: "Inter"
                            // }

                            Image {
                                id: img
                                source: "qrc:/frommmm.png"
                                sourceSize.height: 50
                                sourceSize.width: 50
                            }
                            Text {
                                id: distanceText2
                                text: "100.00 Km"
                                color: "white"
                                font.bold: true
                                font.family: "Inter"
                                font.pixelSize: 20
                            }
                            // Label {
                            //     text: "To"
                            //     color: "white"
                            //     font.bold: true
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }
                            Image {
                                id: img2
                                source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
                                sourceSize.height: 50
                                sourceSize.width: 50
                            }
                            Text {
                                id: speedText2
                                text: "50.00 Km"
                                color: "white"
                                font.pixelSize: 20
                                font.bold: true
                                font.family: "Inter"
                            }



                            // Label {
                            //     text: "Distance"
                            //     color: "white"
                            //     font.bold: true
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }

                            Image {
                                id: img3
                                source: "qrc:/distance.png"
                                sourceSize.height: 80
                                sourceSize.width: 80
                            }
                            Text {
                                id: energyText2
                                text: "200.00 Km"
                                color: "white"
                                font.pixelSize: 20
                                font.bold: true
                                font.family: "Inter"
                            }
                            // Label {
                            //     text: "Time"
                            //     color: "white"
                            //     font.bold: true
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }
                            Image {
                                id: img32
                                source: "qrc:/timeee-removebg-preview.png"
                                sourceSize.height: 40
                                sourceSize.width: 40
                            }
                            Text {
                                id: fromText2
                                text: "07:12 HH::MM"
                                color: "white"
                                font.pixelSize: 20
                                font.bold: true
                                font.family: "Inter"
                            }

                            // Label {
                            //     text: "Avg Speed"
                            //     color: "white"
                            //     font.bold: true
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }

                            Image {
                                id: img321
                                source: "qrc:/sp-removebg-preview.png"
                                sourceSize.height: 80
                                sourceSize.width: 80
                            }

                            Text {
                                id: toText2
                                text: "150 Km/Hr"
                                color: "white"
                                font.pixelSize: 20
                                font.bold: true
                                font.family: "Inter"
                            }
                            // Label{
                            //     text:  "Energy Consumed"
                            //     color: "white"
                            //     font.bold: true
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }

                            Image {
                                id: img3213
                                source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                sourceSize.height: 50
                                sourceSize.width: 50
                            }
                            Text {
                                id: toText2x
                                text: "1000 Kwh"
                                color: "white"
                                font.pixelSize: 20
                                font.bold: true
                                font.family: "Inter"
                            }
                        }
                    }
                }

                Item {
                    ColumnLayout {
                        anchors.centerIn: parent
                        spacing: 25

                        Text {
                            text: "Trip B"
                            Layout.alignment: Qt.AlignHCenter




                            color: "white"

                            font.pixelSize: 20

                            font.family: "Inter"
                        }

                        GridLayout
                        {
                            columns: 4
                            rowSpacing: 10
                            columnSpacing: 40

                            Label {
                                text: "From"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: distanceText22
                                text: "100.00 Km"
                                color: "white"
                                font.family: "Inter"
                            }
                            Label {
                                text: "To"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: speedText22
                                text: "50.00 Km"
                                color: "white"
                                font.family: "Inter"
                            }

                            Label {
                                text: "Distance"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: energyText22
                                text: "200.00 Km"
                                color: "white"
                                font.family: "Inter"
                            }
                            Label {
                                text: "Time"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: fromText22
                                text: "07:12 HH::MM"
                                color: "white"
                                font.family: "Inter"
                            }

                            Label {
                                text: "Avg Speed"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: toText22
                                text: "150 Km/Hr"
                                color: "white"
                                font.family: "Inter"
                            }
                            Label{
                                text:  "Energy Consumed"
                                color: "white"
                                font.pixelSize: 15
                                font.bold: true
                                font.family: "Inter"
                            }
                            Text {
                                id: toText2xd
                                text: "1000 Kwh"
                                color: "white"
                                font.family: "Inter"
                            }
                        }
                    }
                }

                Item {
                    ColumnLayout {
                        anchors.centerIn: parent
                        spacing: 25

                        Text {
                            text: "After Refuelling"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.family: "Inter"
                            font.pixelSize: 20
                        }

                        GridLayout {
                            columns: 4
                            rowSpacing: 10
                            columnSpacing: 20

                            Label {
                                text: "Distance"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: distanceText3
                                text: "100.00 "
                                color: "white"
                                font.family: "Inter"
                            }
                            Label {
                                text: "Avg speed"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: speedText3
                                text: "50.00"
                                color: "white"
                                font.family: "Inter"
                            }

                            Label {
                                text: "Energy consumed"
                                color: "white"
                                font.bold: true
                                font.pixelSize: 15
                                font.family: "Inter"
                            }
                            Text {
                                id: energyText3
                                text: "200.00"
                                color: "white"
                                font.family: "Inter"
                            }
                            // Label {
                            //     text: "From"
                            //     color: "white"
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }
                            // Text {
                            //     id: fromText3
                            //     text: "Pune"
                            //     color: "white"
                            //     font.family: "Inter"
                            // }

                            // Label {
                            //     text: "To"
                            //     color: "white"
                            //     font.pixelSize: 15
                            //     font.family: "Inter"
                            // }
                            // Text {
                            //     id: toText3
                            //     text: "Nasik"
                            //     color: "white"
                            //     font.family: "Inter"
                            // }
                        }
                    }
                }
            }

            Item {
                Layout.fillWidth: true
                height: 20
            }

            RoundButton {
                text: "OK"
                font.pixelSize: 2
                Layout.alignment: Qt.AlignCenter

                onClicked: {
                    switch(view.currentIndex) {
                    case 0:
                        distanceText1.text = "0.00"
                        energyText1.text = "0.00"
                        speedText1.text = "0.00"
                        toText1.text = "-"
                        fromText1.text = "-"
                        break
                    case 1:
                        distanceText2.text = "0.00"
                        energyText2.text = "0.00"
                        speedText2.text = "0.00"
                        toText2.text = "-"
                        fromText2.text = "-"
                        break


                    case 2:
                        distanceText3.text = "0.00"
                        energyText3.text = "0.00"
                        speedText3.text = "0.00"
                        toText3.text="-"
                        fromText3.text="-"
                        break;
                    }
                }
            }

            Item {
                Layout.fillWidth: true
                height: 10
            }

            PageIndicator {
                id: indicator
                count: view.count
                currentIndex: view.currentIndex
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}


