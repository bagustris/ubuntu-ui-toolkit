import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {	
    width: units.gu(30)
    height: units.gu(50)
    Page {
        id: page
        title: "example"
        flickable: null // uncomment to disable hiding of the header
        Flickable {
            id: content
            anchors.fill: parent
            contentHeight: units.gu(70)
            Label {
                text: "hello"
                anchors.centerIn: parent
            }
        }
    }
}

	
