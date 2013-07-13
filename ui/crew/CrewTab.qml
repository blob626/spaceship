import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

import "../../qml-utils/JSONListModel" as JSON



Tab{
    title: i18n.tr("Crew")

    PageStack{
	id: pageStack

	Component.onCompleted: push(roster)
	
	Page{
	    id: roster
	    title: i18n.tr("Roster")
	    visible: false

	    CrewListView{
		anchors.fill: parent
		onItemClicked:{
		    label.text = model.test
		    pageStack.push(crewView)
		}
	    }
	}
	
	Page{
	    id: crewView
	    visible: false
	    Label{
		id: label
		text: "test"
	    }
	}
    }
    
}
