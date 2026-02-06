import QtQuick
import QtQuick.Controls
import App 1.0

ApplicationWindow {
    color: '#242436'
    visible: true
    width: 400
    height: 200
    title: "Blink Bot"

    Backend {
        id: backend
    }

    Rectangle {
        color: '#252c5b'
        implicitHeight: 50
        implicitWidth: parent.width
        
        Text {
            text: "Blink Bot"
            font.pixelSize: 20
            anchors.centerIn: parent
            color: "#ffffff"
            font.bold: true
        }
    }

    Column {
        anchors.centerIn: parent
	    spacing: 12

        Button {
            text: "Add 2 + 3"
            onClicked: {
                resultLabel.text = "Result: " + backend.addNumbers(2, 3)
            }
        }

        Label {
            id: resultLabel
            text: "Result:"
        }
    }
}
