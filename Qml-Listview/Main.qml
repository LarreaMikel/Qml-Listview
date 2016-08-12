import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qml-listview.larreamikel"

    width: units.gu(50)
    height: units.gu(75)

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Qml-Listview")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

//        Label {
//            id: label
//            objectName: "label"
//            anchors {
//                horizontalCenter: parent.horizontalCenter
//                top: pageHeader.bottom
//                topMargin: units.gu(2)
//            }

//            text: i18n.tr("Hello..")
//        }

//        Button {
//            objectName: "button"
//            anchors {
//                horizontalCenter: parent.horizontalCenter
//                top: label.bottom
//                topMargin: units.gu(2)
//            }
//            width: parent.width
//            text: i18n.tr("Tap me!")
//            onClicked: {
//                label.text = i18n.tr("..world!")
//            }
//        }

        Rectangle {
            width: 180; height: 200
            anchors {
                            horizontalCenter: parent.horizontalCenter
                            top: pageHeader.bottom
                            topMargin: units.gu(2)
                        }
            Component {
                id: contactDelegate
                Item {
                    width: 180; height: 40
                    Column {
                        Text { text: '<b>Name:</b> ' + name }
                        Text { text: '<b>Number:</b> ' + number }
                    }
                }
            }
            ListView {
                anchors.fill: parent
                model: ContactModel {}
                delegate: contactDelegate
                highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                focus: true
            }
        }


    }
}

