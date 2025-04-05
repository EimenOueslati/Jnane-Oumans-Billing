import QtQuick
import QtQuick.Controls
import QtQuick.Effects


ApplicationWindow {
    id: applicationWindow
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
                    onClicked: aboutPopup.open()
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
                    text:"Cette application permet de créer, modifier et imprimer des factures," +
                         "des avoirs, ainsi que de gérer des produits et des clients depuis un" +
                         "seul et même endroit. Cliquez sur « Facture » ​​ou « Note de crédit »" +
                         "pour démarrer ou consultez le guide en cliquant sur « Aide » dans la" +
                         "barre d'outils ci-dessus."
                }
            }
        }

        Item {
            id: helpPageWrapper
            visible: false
            anchors.top: toolbar.bottom
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.rightMargin: 40
            anchors.bottomMargin: 10

            ScrollView {
                anchors.fill: parent
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                 clip: true
                Column {
                    width: parent.width
                    height: implicitHeight
                    spacing: 20
                    Label {
                        font.family: "Playfair Display"
                        font.bold: true
                        font.pixelSize: 45
                        color: "#2E4053"
                        text: "Créer une facture"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Pour créer une facture, cliquez d'abord sur le bouton « Facture » sur le côté gauche de la page principale."
                    }

                    Image {
                        id: clickFacture
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Vous accéderez à la page où vous pourrez renseigner les produits pour la facture."
                    }

                    Image {
                        id: billPage
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Vous pouvez cliquer sur « Ajouter un produit » et vous obtiendrez une fenêtre contextuelle pour le produit que vous souhaitez ajouter."
                    }

                    Image {
                        id: productPopUp
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Après avoir ajouté tous les produits, cliquez sur « Suivant » pour accéder à la page de détails."
                    }

                    Image {
                        id: clickOnNext
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Sur cette page, vous pouvez ajouter les détails de la facture tels que la date, le client, la TVA, etc."
                    }

                    Image {
                        id: detailsPage
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Cliquez ensuite sur générer pour obtenir la facture."
                    }

                    Image {
                        id: clickOnGenerate
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "vous arriverez ensuite à la page de facturation."
                    }

                    Image {
                        id: billPageExample
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "À partir de là, vous pouvez imprimer ou enregistrer" +
                              " la facture dans différents formats en utilisant les boutons de la barre d'outils en haut de la page."
                    }

                    Image {
                        id: printOrSaveBill
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.bold: true
                        font.pixelSize: 45
                        color: "#2E4053"
                        text: "Créer une Note de Credit"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Pour créer une note de credit, cliquez d'abord sur le bouton « Note de Credit » sur le côté gauche de la page principale."
                    }

                    Image {
                        id: clickCreditNote
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Vous arriverez à la page où vous pourrez saisir les produits pour l'avoir"
                    }

                    Image {
                        id: creditNoteEntries
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "vous pouvez cliquer sur Ajouter pour ajouter une entrée à la liste des produits dans la note de crédit."
                    }

                    Image {
                        id: creditNoteentryPopup
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Vous pouvez ensuite cliquer sur Suivant pour accéder à la page de détails"
                    }

                    Image {
                        id: clickNextOnCreditNote
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "dans cette page, vous pouvez renseigner les détails de l'avoir tels que la date, le client, la TVA, etc."
                    }

                    Image {
                        id: creditNoteDetails
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "Cliquez ensuite sur générer pour générer la note de crédit"
                    }

                    Image {
                        id: clickNextOnCreditNoteDetails
                        source: "qrc:/Images/placeholder.png"
                    }

                    Label {
                        font.family: "Playfair Display"
                        font.pixelSize: 18
                        width: parent.width
                        wrapMode: Text.Wrap
                        color: "#2E4053"
                        text: "dans cette page, vous pouvez imprimer ou enregistrer l'avoir dans différents formats en utilisant la barre de menu en haut de la page."
                    }

                    Image {
                        id: saveTheCreditNote
                        source: "qrc:/Images/placeholder.png"
                    }
                }

            }

        }

        Popup {
                id: aboutPopup
                width: 250
                height: 190
                modal: true
                focus: true
                x: (parent.width - width) / 3
                y: (parent.height - height) / 3

                background: Rectangle {
                    color: "white"
                    border.color: "#ccc"
                    radius: 10
                }

                Column {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Label {
                        wrapMode: Text.Wrap
                        width: parent.width
                        text: "This application was developed by Eimen Oueslati using C++ and the Qt famework. For any inqueries or questions please don't" +
                              "hesitate to send an email to aymanoueslati22@gmail.com\n" +
                              "You are welcome to check out my other projects on\nhttps://github.com/EimenOueslati"
                    }

                    Button {
                        x: (parent.width - width) / 2
                        text: "Close"
                        onClicked: aboutPopup.close()
                    }
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
                    id: factButtonBG
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
