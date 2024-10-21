import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    id: gridLayout
    property alias title: title.text
    property alias details: details.text
    property alias image: image
    property alias duration: duration.text
    rowSpacing: 10
    columnSpacing: 15
    rows: 3
    columns: 2

    Image {
        id: image
        anchors.verticalCenter: parent.verticalCenter
        Layout.rowSpan: 3
        fillMode: Image.PreserveAspectFit
    }

    Label {
        id: title
        visible: text.length > 0
        Layout.fillWidth: true
        font.pointSize: 13
        font.bold: true
    }

    Label {
        id: duration
        visible: text.length > 0
        wrapMode: Text.Wrap
        Layout.fillWidth: true
        font.pointSize: 12
    }

    Label {
        id: details
        visible: text.length > 0
        wrapMode: Text.Wrap
        Layout.minimumWidth: 50
        font.pointSize: 12
        Layout.fillWidth: true
    }
}
