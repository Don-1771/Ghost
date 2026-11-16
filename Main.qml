import QtQuick

Window {
    width: 600
    height: 780
    visible: true
    title: qsTr("Hello World")
    color: "black"

    Image{
        id: ghost
        source: "ghost.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        opacity: 0.0
    }

    SequentialAnimation{
        loops: Animation.Infinite
        running: true

        OpacityAnimator{
            target: ghost
            from: 0
            to: 1
            duration: 5000
        }

        OpacityAnimator{
            target: ghost
            from: 1
            to: 0
            duration: 3000
        }
    }
}
