import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

Item {
    ListModel {
        id: listModel
    }

    UbuntuListView {
        id: ubuntuListView
        anchors { left: parent.left; right: parent.right }
        height: units.gu(24)
        model: listModel

        delegate: ListItem.Expandable {
            id: expandingItem

            expandedHeight: units.gu(30)

            onClicked: {
                ubuntuListView.expandedIndex = index;
            }
        }
    }
}
