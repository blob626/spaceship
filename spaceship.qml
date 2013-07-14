import QtQuick 2.0
import Ubuntu.Components 0.1
import "ui"
import "ui/crew"
import "ui/cargo"
/*!
    \brief MainView with Tabs element.
           First Tab has a single Label and
           second Tab has a single ToolbarAction.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"
    
    // Note! applicationName needs to match the .desktop filename 
    applicationName: "spaceship"
    
    /* 
     This property enables the application to change orientation 
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true
    
    width: units.gu(100)
    height: units.gu(50)
    
    Tabs {
        id: tabs
        
	CrewTab{
	    objectName: "crewTab"
	}

	CargoTab{
	}
    }
}
