import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts


ApplicationWindow {
    visible: true
    width: 280
    height: 180
    x: Screen.width - width - 115//112
    y: Screen.height - height - 60
    color: "transparent"

    flags: Qt.FramelessWindowHint | Qt.Window

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
                color: "gold"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                color: "darkgrey"
            }

        }

    }
}
