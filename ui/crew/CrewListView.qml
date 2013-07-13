import QtQuick 2.0
import Ubuntu.Components 0.1

Item{
    signal itemClicked(var model)

    ListView{

	model: CrewModel{}

	delegate: CrewItem{
	
	    onClicked:{
		itemClicked(model)
	    }
	}
    }
}
