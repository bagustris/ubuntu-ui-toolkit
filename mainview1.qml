/* demo of the use of MainView
** from ubuntu-ui-toolkit
*/

import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {
    width: units.gu(48)
    height: units.gu(60)

    Page {
        title: "Simple page"
        Button {
            anchors.centerIn: parent
            text: "Push me"
            width: units.gu(15)
            onClicked: print("Click!")
        }
    }
}
