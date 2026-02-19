import QtQuick
import QtQuick.Layouts
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

  ColumnLayout {
    spacing: 0
    implicitWidth: parent.width
    implicitHeight: parent.height

    /* Title Bar */
    Rectangle {
      color: '#252c5b'
      Layout.preferredHeight: 50
      Layout.fillWidth: true
      Layout.fillHeight: true
      Layout.verticalStretchFactor: 1
        
      Text {
        text: "Blink Bot"
        font.pixelSize: 20
        anchors.centerIn: parent
        color: "#ffffff"
        font.bold: true
      }
    }
    /* End of Title Bar */

    /* Main Content */
    RowLayout {
      id: layout
      spacing: 10
      Layout.preferredHeight: 550
      Layout.verticalStretchFactor: 7
      Layout.fillHeight: true
      Layout.margins: 10

      /* Left Panel */
      ColumnLayout {
        spacing: 10
        Layout.horizontalStretchFactor: 1
  
        Rectangle {
          Layout.alignment: Qt.AlignCenter
          color: "#ffffff"
          Layout.fillWidth: true
          Layout.preferredWidth: 40
          Layout.preferredHeight: 180
          Layout.horizontalStretchFactor: 9
          Layout.fillHeight: true
        }

        Rectangle {
          Layout.alignment: Qt.AlignRight
          Layout.fillWidth: true
          color: "#555555"
          Layout.preferredWidth: 40
          Layout.preferredHeight: 20
          Layout.horizontalStretchFactor: 1
          Layout.fillHeight: true
        }
      }
      /* End of Left Panel */

      /* Right Panel */
      ColumnLayout {
        spacing: 10   
        Layout.horizontalStretchFactor: 1
        Layout.preferredHeight: 50

        /* Top Row */
        RowLayout {
          Layout.verticalStretchFactor: 1
          spacing: 10
          Layout.fillWidth: true

          Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignCenter
            color: "#444b7c"
            Layout.preferredHeight: 40
            Layout.preferredWidth: 50
          }

          Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignCenter
            color: "#444b7c"
            Layout.preferredHeight: 40
            Layout.preferredWidth: 60
          }
        }
        /* End of Top Row */

        /* Avatar display */
        Rectangle {
          Layout.verticalStretchFactor: 9
          Layout.preferredHeight: 200
          Layout.fillWidth: true
          Layout.fillHeight: true
          Layout.alignment: Qt.AlignRight
          color: "#767676"
        }
        /* End of Avatar display */
      }
      /* End of Right Panel */
    }
    /* End of Main Content */
  }
}
