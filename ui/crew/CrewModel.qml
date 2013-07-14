import QtQuick 2.0
import Ubuntu.Components 0.1

ListModel{
    id: model

    signal loadCompleted()

    Component.onCompleted:{
	var xhr = new XMLHttpRequest;
	xhr.open("GET", "../../test");
	xhr.onreadystatechange = function(){
	    if(xhr.readyState == XMLHttpRequest.DONE){
		var a = JSON.parse(xhr.responseText);
		for (var b in a){
		    var o =a[b];
		    model.append({name: o.name,
				  profession: o.profession,
				  portrait: o.portrait,
				  species: o.species,
				  gender: o.gender,
				  description: o.description,
				  preferences: o.preferences,
				  story: o.story,
				  history: o.history
				 })
		}
		model.loadCompleted()
	    }
	}
	xhr.send()
    }
}
