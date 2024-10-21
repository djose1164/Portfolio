

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import Portfolio
import QtQuick.Layouts

Page {
    id: root
    width: Constants.width
    height: Constants.height
    font.pointSize: 12

    StackLayout {
        id: stackLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: tabBar.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.topMargin: 20
        anchors.bottomMargin: 10
        currentIndex: tabBar.currentIndex

        ScrollView {
            id: scrollView
            contentWidth: scrollView.availableWidth
            implicitWidth: 200
            implicitHeight: 200

            ColumnLayout {
                id: columnLayout
                anchors.fill: parent
                spacing: 20

                Label {
                    id: label
                    text: qsTr("Latest Job Experience")
                    font.bold: true
                    font.pointSize: 14
                }

                LatestTopic {
                    id: gridLayout
                    image.fillMode: Image.PreserveAspectFit
                    image.source: "images/Logo_de_Claro.svg"
                    image.sourceSize: "120x120"
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.minimumHeight: 150
                    Layout.minimumWidth: 150
                    title: qsTr("Claro Dominicana")
                    duration: qsTr("From 2023 to Now as Infra Engineer & CSM Online")
                    details: qsTr("I provide technical support for the infrastructure, focusing primarily on testing and training environments. My responsibilities include addressing internal user requirements and working extensively with databases and Unix/Linux environments as part of my daily tasks.")
                }

                Label {
                    id: label6
                    text: qsTr("Education")
                    Layout.topMargin: 20
                    font.pointSize: 14
                    font.bold: true
                }

                LatestTopic {
                    id: latestTopic
                    details: "I gained valuable knowledge in areas such as System Analysis and Design, Design Patterns, and the MVC architecture. I also acquired expertise across various domains of software development, including web, desktop, mobile, and multiplatform applications. Additionally, I honed my critical thinking and mathematical analysis skills through the study of data structures and algorithms."
                    image.source: "itla-logo.jpg"
                    duration: "2020 - 2024 | Software Development Technologist (AAS)"
                    title: "Technological Institute of The Americas (ITLA)"
                    image.sourceSize: "170x170"
                }
            }
        }

        Pane {
            id: pane1
            width: 200
            height: 200

            Label {
                id: label1
                text: qsTr("Projects")
            }
        }

        Pane {
            id: pane2
            width: 200
            height: 200

            Label {
                id: label2
                text: qsTr("About me")
            }
        }
    }

    TabBar {
        id: tabBar
        x: 587
        width: 427
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 10
        anchors.topMargin: 10

        TabButton {
            id: tabButton
            text: qsTr("Home")
        }

        TabButton {
            id: tabButton1
            text: qsTr("Projects")
        }

        TabButton {
            id: tabButton2
            text: qsTr("About me")
        }
    }
    states: [
        State {
            name: "clicked"
        }
    ]
}
