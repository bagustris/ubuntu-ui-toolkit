import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {
    width: units.gu(48)
    height: units.gu(60)

    Page {
        title: "Page title"
        Rectangle {
            id: rectangle
            anchors.centerIn: parent
            width: units.gu(20)
            height: units.gu(20)
            color: UbuntuColors.coolGrey
        }

        tools: ToolbarItems {
            ToolbarButton {
                action: Action {
                    text: "orange"
                    onTriggered: rectangle.color = UbuntuColors.orange
                }
            }
            ToolbarButton {
                action: Action {
                    text: "purple"
                    onTriggered: rectangle.color = UbuntuColors.lightAubergine
                }
            }
        }
    }
}
