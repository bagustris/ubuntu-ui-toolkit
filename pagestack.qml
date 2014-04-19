//from ubuntu-ui-toolkit > tabs
/*
 The Navigation Patterns specify that a tabs header should never be combined with the back button of a PageStack. The only way to combine Tabs and PageStack that avoids this is by pushing the Tabs as the first page on the PageStack, and pushing other pages on top of that, as is shown in the following example: 
 */
import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {
  id:mainView
  width: units.gu(38)
  height: units.gu(50)
}
