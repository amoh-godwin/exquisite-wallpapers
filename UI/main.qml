import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import "./customs" as Cust


ApplicationWindow {
    visible: true
    width: 280
    height: 180
    x: Screen.width - width - 115//112
    y: Screen.height - height - 60
    color: "transparent"

    flags: Qt.FramelessWindowHint | Qt.Window

    // Theme properties
    property url curr_theme_photo_thumbnail: ""

    Rectangle {
        id: outer_cont
        anchors.fill: parent
        color: "dodgerblue"
        radius: 4

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 36
                color: "black"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "black"

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 12
                    anchors.topMargin: 0
                    spacing: 12

                    Text {
                        text: "WALLPAPER"
                        color: "lightgrey"
                        font.pixelSize: 13
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "transparent"

                        RowLayout {
                            anchors.fill: parent
                            spacing: 8

                            Rectangle {
                                width: 60
                                height: 60
                                radius: 4

                                Image {
                                    sourceSize: Qt.size(parent.width, parent.height)
                                    width: parent.width
                                    height: parent.height
                                    fillMode: Image.Stretch
                                    source: curr_theme_photo_thumbnail
                                }

                            }

                            Rectangle {
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                color: "transparent"

                                ColumnLayout {
                                    anchors.fill: parent

                                    Text {
                                        Layout.fillWidth: true
                                        id: photo_description
                                        wrapMode: Text.WordWrap
                                        text: "Icelandic horses standing in a field, Iceland"
                                        font.pixelSize: 13
                                        font.bold: true
                                        color: "white"
                                    }

                                    Text {
                                        id: copyright_text
                                        text: "@ Rodrigo Luzeini/Shutterstock"
                                        color: "darkgrey"
                                    }

                                }

                            }

                        }

                    }

                }

            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                color: "darkgrey"

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 6

                    Cust.QuickLaunchMenuBtn {
                        text: "Previous"
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "transparent"
                    }

                    Cust.QuickLaunchMenuBtn {
                        text: "Next"
                    }

                }

            }

        }

    }
}
