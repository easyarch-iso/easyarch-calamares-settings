/* === This file is part of EasyArch - <https://gitlab.com/easyarch-iso> ===
 *
 *   Copyright 2020, Asif Mahmud Shimon <ams.eee09@gmail.com>
 *
 *   EasyArch is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   EasyArch is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with EasyArch. If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.0
import calamares.slideshow 1.0
import QtQuick.Layouts 1.11

Presentation {
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide")
        presentation.goToNextSlide()
    }

    Timer {
        id: advanceTimer
        interval: 10 * 1000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        RowLayout {
            id: rowLayout1
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect1
                color: "#00539c"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: logoText1
                    color: "#e0e3e0"
                    text: qsTr("Easy")
                    font.pointSize: 64
                    styleColor: "#e0e3e0"
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }
            }

            Rectangle {
                id: whiteRect1
                color: "#e0e3e0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: logoText2
                    color: "#00539c"
                    text: qsTr("Arch")
                    font.pointSize: 64
                    styleColor: "#00539c"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }
    }
    Slide {
        anchors.rightMargin: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        RowLayout {
            id: rowLayout2
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect2
                color: "#00539c"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: simplicityText
                    width: parent.width / 2
                    color: "#e0e3e0"
                    text: qsTr("Install Arch Linux with Great Simplicity")
                    wrapMode: Text.WordWrap
                    font.pointSize: 32
                    styleColor: "#e0e3e0"
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Rectangle {
                id: whiteRect2
                color: "#e0e3e0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Image {
                    id: archLogo
                    width: parent.width * 0.66
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    source: "archlogo.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
    Slide {
        anchors.rightMargin: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        RowLayout {
            id: rowLayout3
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect3
                color: "#00539c"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: instOnceText
                    color: "#e0e3e0"
                    text: qsTr("Install Once")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 100
                    font.pointSize: 32
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: instOnceDescText
                    color: "#e0e3e0"
                    text: qsTr("You only need to install it once.")
                    font.pointSize: 18
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: instOnceText.bottom
                    anchors.topMargin: 100
                }
            }

            Rectangle {
                id: whiteRect3
                color: "#e0e3e0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: useForeverText
                    color: "#00539c"
                    text: qsTr("Use Forever")
                    font.pointSize: 32
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 100
                }

                Text {
                    id: useForeverDescText
                    color: "#00539c"
                    text: qsTr("Always have the latest software and tools.")
                    font.pointSize: 18
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.top: useForeverText.bottom
                    anchors.topMargin: 100
                }
            }
        }
    }
    Slide {
        anchors.rightMargin: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        RowLayout {
            id: rowLayout4
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect4
                color: "#00539c"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: appText
                    width: parent.width / 2
                    color: "#e0e3e0"
                    text: qsTr("Enjoy the vast collection of software and applications from the arch official and user repositories.")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 18
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Rectangle {
                id: whiteRect4
                color: "#e0e3e0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Image {
                    id: appImage
                    anchors.fill: parent
                    source: "applications.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
    Slide {
        anchors.rightMargin: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        RowLayout {
            id: rowLayout5
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect5
                color: "#00539c"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: wikiRemText
                    width: parent.width / 2
                    color: "#e0e3e0"
                    text: qsTr("Don't Forget to Check Out the Awesome Arch Linux Wiki for the Details")
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 18
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                id: whiteRect5
                color: "#e0e3e0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: wikiLinkText
                    color: "#00539c"
                    text: "https://wiki.archlinux.org/"
                    style: Text.Raised
                    font.underline: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pointSize: 18
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WrapAnywhere

                    MouseArea {
                        id: wikiLinkTextMouseArea
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            Qt.openUrlExternally("https://wiki.archlinux.org/")
                        }
                    }
                }
            }
        }
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated")
        presentation.currentSlide = 0
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated")
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:6;anchors_width:160}
}
##^##*/

