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

        Rectangle {
            id: rectangulo
            width: units.gu(50)
            height: units.gu(60)
            anchors {
                            horizontalCenter: parent.horizontalCenter
                            top: pageHeader.bottom
                            topMargin: units.gu(2)
                        }
            Component {
                id: contactDelegate //Delegate that defines how the data should be displayed.
                Item {
                    width: units.gu(50)
                    height: contactInfo2.height
                    Column {
                        id: contactInfo2
                        Text { text: '<b>Name:</b> ' + name }
                        Text { text: '<b>Number:</b> ' + number }
                    }
                }
            }
            ListView {
                id:lista1
                anchors.fill: parent
                orientation: Qt.Vertical //Qt.Horizontal
                layoutDirection: Qt.LeftToRight //Qt.RightToLeft
                verticalLayoutDirection: ListView.TopToBottom //ListView.BottomToTop

                model: ContactModel {}
                delegate: contactDelegate
                highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                focus: true
            }


//            ListView {
//                id:lista2
//                width: units.gu(50)
//                height: units.gu(30)
//                anchors.fill: lista1.bottom
//                Component {
//                    id: contactsDelegate
//                    Rectangle {
//                        id: wrapper
//                        width: units.gu(50)
//                        height: contactInfo.height
//                        color: ListView.isCurrentItem ? "black" : "red"
//                        Text {
//                            id: contactInfo
//                            text: name + ": " + number
//                            color: wrapper.ListView.isCurrentItem ? "red" : "black"
//                        }
//                    }
//                }
//                model: ContactModel {}
//                delegate: contactsDelegate
//                focus: true
//            }

        }




    }
}

