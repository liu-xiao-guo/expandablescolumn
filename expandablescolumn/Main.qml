import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "expandablescolumn.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("expandablescolumn")

        ListModel {
            id: mymodel
            ListElement { name: "image1.jpg" }
            ListElement { name: "image2.jpg" }
            ListElement { name: "image3.jpg" }
            ListElement { name: "image4.jpg" }
            ListElement { name: "image5.jpg" }
            ListElement { name: "image6.jpg" }
            ListElement { name: "image7.jpg" }
            ListElement { name: "image8.jpg" }
            ListElement { name: "image9.jpg" }
            ListElement { name: "image10.jpg" }
            ListElement { name: "image11.jpg" }
        }

        ListItem.ExpandablesColumn {
            anchors.fill: parent
            Repeater {
                model: mymodel
                ListItem.Expandable {
                    id: exp
                    expandedHeight: units.gu(30)
                    collapsedHeight: units.gu(12)

                    Image {
                        height: exp.height
                        width: height
                        source: "images/" + name
                    }

                    Label {
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: index
                    }

                    onClicked: {
                        expanded = true;
                    }
                }
            }
        }
    }
}

