import QtQuick 2.0
import Ubuntu.Components 0.1

Item {
    id: template

    width: units.gu(40)
    height: units.gu(75)

    default property alias content: layout.children
    property alias spacing: layout.spacing
    property Item tools: null
    property Flickable flickable: flickable

    Flickable {
        id: flickable
        anchors.fill: parent
        anchors.topMargin: units.gu(2)
        anchors.bottomMargin: units.gu(2)
        contentHeight: layout.height
        interactive: contentHeight > height

        Column {
            id: layout
            spacing: units.gu(6)
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: units.gu(2)
        }
    }

    Scrollbar {
        flickableItem: flickable
    }
}

