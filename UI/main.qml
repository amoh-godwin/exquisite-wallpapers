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
        anchors.fill: parent
        color: "dodgerblue"
        radius: 4
    }
}
