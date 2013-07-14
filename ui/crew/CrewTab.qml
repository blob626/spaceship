import QtQuick 2.0
import Ubuntu.Components 0.1

Tab{
    title: i18n.tr("Crew")

    PageStack{
	id: pageStack

	Component.onCompleted: push(rosterPage)
	
	Page{
	    id: rosterPage
	    title: i18n.tr("Roster")
	    visible: false

	    CrewListView{
		anchors.fill: parent
		onItemClicked:{
		    crewView.model = model
		    pageStack.push(crewViewPage)
		}
	    }
	}
	
	Page{
	    id: crewViewPage
	    visible: false
	    CrewView{
		id: crewView
	    }
	}
    }
    
}
