.pragma library

var adam = {"first": "Adam"};
var john = {"first": "John", "last": "Smith"};
var smith = {"last": "Smith"};
var edward = {"first": "Edward", "middle": "James", "last": "Almos"};
var james = {"first": "James", "middle": "John Jeremy", "last": "Jones"};

function first(name){
    if(name.first){
	return name.first;
    }
    return "";
}

function last(name){
    if(name.last){
	return name.last;
    }
    return "";
}

function middle(name){
    if(name.middle){
	return name.middle;
    }
    return "";
}

function initial(word){
    if(word){
	return word.substr(0, 1) + ".";
    }
    return "";
}

function initial_list(list){
    var result = "";
    for(i in list){
	result += initial(list[i]);
    }
    return result;
}

function middle_list(name){
    return middle(name).split(" ");
}

function middle_initials(name){
    return initial_list(middle_list(name));
}

function add_space(word){
    if(word != ""){
	return word + " ";
    }
    else{
	return "";
    }
}

function add_comma(word){
    if(word != ""){
	return word + ",";
    }
    else{
	return "";
    }
}

function add_dot(word){
    if(word != ""){
	return word + ".";
    }
    else{
	return "";
    }
}

function parse(format, name){
    var result = ""
    for(var i = 0; i < format.length; i++){
	var item = format[i]
	switch(item){
	case "F":
	    result += first(name);
	    break;
	case "M":
	    result += middle(name);
	    break;
	case "L":
	    result += last(name);
	    break;
	case "f":
	    result += initial(first(name));
	    break;
	case "m":
	    result += middle_initials(name);
	    break;
	case "l":
	    result += initial(last(name));
	    break;
	default:
	    result += item;
	}
    }
    return result;
}

function first_last(name){
    return add_space(first(name)) + last(name);
}

function initials_last(name){
    var ini = initial(first(name)) + middle_initials(name);
    
    return add_space(ini) + last(name);
}

function first_initials_last(name){
    return add_space(first(name)) + add_space(middle_initials(name)) + add_space(last(name));
}

function last_comma_first(name){
    if(name.first){
	return add_space(add_comma(last(name))) + first(name);
    }
    else{
	return last(name);
    }
}
