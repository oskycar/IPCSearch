import QtQuick 2.0
import QtQuick.Controls 1.1
Rectangle {
    width: 720
    height: 576
    Column {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 8
        Button {
            id:refreshBtn
            text: "Refresh"
            anchors.topMargin: 20
            anchors.right: parent.right
            //onClicked: messageDialog.close()
        }
        ListModel {
           id: libraryModel
           ListElement{ title: "A Masterpiece" ; author: "Gabriel" }
           ListElement{ title: "Brilliance"    ; author: "Jens" }
           ListElement{ title: "Outstanding"   ; author: "Frederik" }
           ListElement{ title: "A Masterpiece" ; author: "Gabriel" }
           ListElement{ title: "Brilliance"    ; author: "Jens" }
           ListElement{ title: "Outstanding"   ; author: "Frederik" }
           ListElement{ title: "A Masterpiece" ; author: "Gabriel" }
           ListElement{ title: "Brilliance"    ; author: "Jens" }
           ListElement{ title: "Outstanding"   ; author: "Frederik" }
           ListElement{ title: "A Masterpiece" ; author: "Gabriel" }
           ListElement{ title: "Brilliance"    ; author: "Jens" }
           ListElement{ title: "Outstanding"   ; author: "Frederik" }
           ListElement{ title: "A Masterpiece" ; author: "Gabriel" }
           ListElement{ title: "Brilliance"    ; author: "Jens" }
           ListElement{ title: "Outstanding"   ; author: "Frederik" }
        }
        TableView {
           id:dataView
           TableViewColumn{ role: "title"  ; title: "Title" ; width: 100 }
           TableViewColumn{ role: "author" ; title: "Author" ; width: 200 }
           anchors.leftMargin: 0
           anchors.rightMargin: 0
           model: libraryModel
           width: parent.width
           //anchors.verticalCenter: parent.verticalCenter;
        }
    }
}
