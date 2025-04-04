import QtQuick
import QtQuick.Controls
import QtQuick.Effects


ApplicationWindow {
    visible: true
    width: 1000
    height: 900
    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height

    Item {
        id: main
        anchors.left: side.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Rectangle {
            anchors.fill: parent
            color: "#FFFDF0"
        }

        ToolBar {
            id: toolbar
            anchors.top: parent.top
            anchors.right: parent.right
            //width: parent.width
            background: Rectangle {
                anchors.fill: parent
                color: "#FFFDF0"
            }

            Row{
                ToolButton {
                    id: mainButton
                    text: "Main"
                    font.pixelSize: 15
                    font.underline: true
                    onClicked: {
                        helpButton.font.underline = false
                        font.underline = true
                        helpPageWrapper.visible = false
                        mainPageWrapper.visible = true
                    }
                }

                ToolButton {
                    id: helpButton
                    text: "Help"
                    font.pixelSize: 15
                    font.underline: false
                    onClicked: {
                        mainButton.font.underline = false
                        font.underline = true
                        mainPageWrapper.visible = false
                        helpPageWrapper.visible = true
                    }
                }

                ToolButton {
                    text: "About"
                    font.pixelSize: 15
                }
            }
        }

        Item {
            id: mainPageWrapper
            visible: true
            anchors.fill: parent
            anchors.top: toolbar.bottom
            anchors.leftMargin: 20
            anchors.rightMargin: 40
            Column {
                y: parent.y + parent.height/3
                spacing: 20
                Label {
                    id: welcomeLabel
                    font.family: "Lato"
                    font.italic: true
                    font.pixelSize: 18
                    color: "#2E4053"
                    text: "Bienvenue à"
                }

                Label {
                    id: titleLabel
                    font.family: "Playfair Display"
                    font.italic: true
                    font.bold: true
                    font.pixelSize: 45
                    color: "#2E4053"
                    text: "Jnane Oumnas"
                }

                Label {
                    id: descriptionLabel
                    font.family: "Lato"
                    font.pixelSize: 20
                    wrapMode: Text.Wrap
                    width: parent.parent.width
                    color: "#2E4053"
                    text: "Cette application permet de créer, modifier et imprimer des factures, des avoirs, ainsi que de gérer des produits et des clients depuis un seul et même endroit. Cliquez sur « Facture » ​​ou « Note de crédit » pour démarrer ou consultez le guide en cliquant sur « Aide » dans la barre d'outils ci-dessus."
                }
            }
        }

        Item {
            id: helpPageWrapper
            visible: false
            Label {
                id: temp
                font.family: "Playfair Display"
                font.italic: true
                font.bold: true
                font.pixelSize: 45
                color: "#2E4053"
                text: "help info"
            }
        }
    }

    Item {
        id: side
        width: 300
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Rectangle {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop {
                    position: 0.0
                    color: "#2E4053"
                }

                GradientStop {
                    position: 0.5
                    color: "#3A5F6F"
                }
            }
        }

        Column {
            id: buttons
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20

            Button {
                id: factureButton
                width: 250
                height: 55
                background: Rectangle {
                    color: "#007074"
                    radius: 20
                }

                Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Facture"
                    font.family: "Roboto"
                    font.pixelSize: 20
                    font.bold: true
                    color: "white"
                }
            }

            Button {
                id: noteButton
                width: 250
                height: 55
                background: Rectangle {
                    color: "#007074"
                    radius: 20
                }

                Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Note de Credit"
                    font.family: "Roboto"
                    font.pixelSize: 20
                    font.bold: true
                    color: "white"
                }
            }

            Button {
                id: adminButton
                width: 250
                height: 55
                background: Rectangle {
                    color: "#007074"
                    radius: 20
                }

                Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Admin"
                    font.family: "Roboto"
                    font.pixelSize: 20
                    font.bold: true
                    color: "white"
                }
            }
        }

        Button {
            id: quitButton
            width: 250
            height: 55
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            background: Rectangle {
                color: "#007074"
                radius: 20
            }

            Text {
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: "Quiter"
                font.family: "Roboto"
                font.pixelSize: 20
                font.bold: true
                color: "white"
            }
        }
    }


    MultiEffect {
        source: side
        anchors.fill: side
        blurEnabled: false
        maskEnabled: false
        shadowEnabled: true
        autoPaddingEnabled: true
    }

}
