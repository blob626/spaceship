import QtQuick 2.0
import Ubuntu.Components 0.1

    ListView{
	signal itemClicked(var model)
	model: CargoModel{}

	delegate: CargoItem{
	    
	    onClicked:{
		itemClicked(model)
	    }			
	}   		
    }
