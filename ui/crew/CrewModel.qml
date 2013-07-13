import QtQuick 2.0
import Ubuntu.Components 0.1

ListModel{
    ListElement{
	name: "adam"
	job: "steering"
	test: "blah"
	portrait: "../../graphics/toolbarIcon.png"
    }
    ListElement{
	name: "eve"
	job: "weapons"
	test: "beagh"
	portrait: "../../graphics/toolbarIcon.png"
    }
}

// JSON.JSONListModel{
//     id: crewSource
//     source: Qt.resolvedUrl("../../test")
//     query: "[*]"
// }
