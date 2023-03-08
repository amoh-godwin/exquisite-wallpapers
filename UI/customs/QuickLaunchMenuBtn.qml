import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Button {
    id: ctrl
    height: 28

    contentItem: RowLayout {
        anchors.top: parent.top
        anchors.topMargin: 4
        implicitWidth: 40
        height: 28

        Text {
            text: "<"
            font.pixelSize: 14
            color: "white"
            visible: ctrl.text == "Previous"
        }

        Text {
            text: ctrl.text
            font.pixelSize: 14
            color: "white"
        }

        Text {
            text: ">"
            font.pixelSize: 14
            color: "white"
            visible: ctrl.text == "Next"
        }

    }

    background: Rectangle {
        implicitWidth: 40
        height: 28
        color: ctrl.hovered ? Qt.rgba(0, 0, 0, 0.5) : "transparent"
    }

}
