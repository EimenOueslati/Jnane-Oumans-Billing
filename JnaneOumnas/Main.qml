import QtQuick
import QtQuick.Controls


ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 900
    height: 800
    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height

    StackView {
        id: topLevelStack
        anchors.fill: parent
        initialItem: "MainPage.qml"
    }

}
