import QtQuick 2.0
import Ubuntu.Components 0.1

ToolbarItems{
    ToolbarButton{
	action: Action{
	    iconSource: Qt.resolvedUrl("../../graphics/toolbarIcon.png")
	    text: i18n.tr("Tap me!")

	    onTriggered:{
		label.text = i18n.tr("Toolbar tapped")
	    }
	}
    }
}
