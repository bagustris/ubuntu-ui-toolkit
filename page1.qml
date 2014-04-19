import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {
    width: units.gu(48)
    height: units.gu(60)

    Page {
        title: "Example page"

        Label {
            anchors.centerIn: parent
            text: "Hello world!"
        }

        tools: ToolbarItems {
            ToolbarButton {
                action: Action {
                    text: "one"
                }
             }
            ToolbarButton {
                action: Action {
                    text: "two"
                }
            }
        }
    }
}
