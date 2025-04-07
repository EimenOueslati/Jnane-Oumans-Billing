import QtQuick
import QtQuick.Controls


ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1000
    height: 900
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
