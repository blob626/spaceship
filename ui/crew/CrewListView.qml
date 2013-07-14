import QtQuick 2.0
import Ubuntu.Components 0.1

ListView{
    signal itemClicked(var model)
    model: CrewModel{}
    
    delegate: CrewItem{
	
	onClicked:{
	    itemClicked(model)
	}
    }
}
