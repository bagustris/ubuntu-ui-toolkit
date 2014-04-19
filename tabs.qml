import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

MainView {
    width: units.gu(48)
    height: units.gu(60)
    Tabs {
        id: tabs
        Tab {
            title: i18n.tr("Simple page")
            page: Page {
                Label {
                    id: label
                    anchors.centerIn: parent
                    text: "A centered label"
                }
                tools: ToolbarItems {
                    ToolbarButton {
                        text: "action"
                        onTriggered: print("action triggered")
                    }
                }
            }
        }
        Tab {
            id: externalTab
            title: i18n.tr("External")
            page: Loader {
                parent: externalTab
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                source: (tabs.selectedTab === externalTab) ? Qt.resolvedUrl("MyCustomPage.qml") : ""
            }
        }
        Tab {
            title: i18n.tr("List view")
            page: Page {
                ListView {
                    clip: true
                    anchors.fill: parent
                    model: 20
                    delegate: ListItem.Standard {
                        iconName: "compose"
                        text: "Item "+modelData
                    }
                }
            }
        }
    }
}

