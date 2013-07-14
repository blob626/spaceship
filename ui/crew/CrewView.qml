import QtQuick 2.0
import Ubuntu.Components 0.1

Item{
    property var model
    
    Column{

	spacing: units.gu(10)
	
	Item{

	    UbuntuShape{
		id: portrait

		image: Image{
		    source: model.portrait
		}
	    }
	    
	    Label{
		id: name
		anchors.left: portrait.right
		text: model.species
	    }
	}

	Label{
	    id: description
	    text: model.description
	}
    }
}
