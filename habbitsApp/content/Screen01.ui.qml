import QtQuick 6.2
import QtQuick.Controls 6.2
import habbitsApp
import QtQuick.Layouts

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    Layout.fillWidth: true
    Layout.fillHeight: true
    color: Constants.backgroundColor

    Column {
        id: column
        width: parent.width
        height: parent.height
        spacing: 10

        ToolBar {
            id: toolBar
            width: parent.width
            height: parent.height * 0.05
            Material.primary: Material.LightBlue

            Row {
                id: row
                x: 0
                y: 0
                width: parent.width
                height: parent.height
                layoutDirection: Qt.RightToLeft


                ToolButton {
                    id: toolButton2
                    text: "Tool Button2"
                    icon.source: "../asset_imports/setttingsIcon.svg"
                    display: AbstractButton.IconOnly
                    //onClicked: {
                    //
                    //}
                }

                ToolButton {
                    id: toolButton1
                    text: qsTr ("Tool Button1")
                    display: AbstractButton.IconOnly
                    icon.source: "../asset_imports/addHabbitIcon.svg"
                    //onClicked: {
                    //
                    //}
                }


            }
        }
        ListView {
            id: listView

            width: parent.width
            height: parent.height - toolBar.height - tabBar.height
            spacing: 10;
            delegate: Item {
                x: 5
                width: parent.width
                height: 40
                Row {
                    id: row1
                    Rectangle {
                        width: 40
                        height: parent.height
                        color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                    spacing: 10
                }
            }
            model: ListModel {
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                }
            }
        }

        TabBar {
            id: tabBar
            width: parent.width
            height: parent.height * 0.05
            TabButton {
                id: tabButton1
                text: qsTr ("Tab Button1")
            }
            TabButton {
                id: tabButton2
                text: qsTr ("Tab Button2")
            }
        }
    }
    states: [
        State {
            name: "clicked"
        }
    ]
}
