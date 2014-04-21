import QtQuick 2.0
import QtQuick.Controls 1.1
Rectangle {
    width: 720
    height: 576
    Column {
        anchors.fill: parent
        anchors.margins: 0 //该布局与其它布局之间的距离
        spacing: 10 //布局中每个控件之间的距离
        Button {
            id:refreshBtn
            text: "Refresh"
            anchors.topMargin: 20 //该控件顶部与其它控件或布局的距离
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
           height: parent.height-refreshBtn.height-20
           //anchors.verticalCenter: parent.verticalCenter;
        }
    }
}
