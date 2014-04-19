import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

MainView {
    width: units.gu(48)
    height: units.gu(60)

    PageStack {
        id: pageStack
        Component.onCompleted: push(page0)

        Page {
            id: page0
            title: i18n.tr("Quran")
            visible: false

            Column {
                anchors.fill: parent
                ListItem.Standard {
                    text: i18n.tr("Pengantar")
                    onClicked: pageStack.push(page1, {color: UbuntuColors.orange})
                    progression: true
                }
                ListItem.Standard {
                    text: i18n.tr("Al-Fatihah")
                    onClicked: pageStack.push(Qt.resolvedUrl("MyCustomPage.qml"))
                    progression: true
                }
            }
        }

        Page {
            title: "Rectangle"
            id: page1
            visible: false
            property alias color: rectangle.color
            Rectangle {
                id: rectangle
                anchors {
                    fill: parent
                    margins: units.gu(5)
                }
            }
        }
    }
}
