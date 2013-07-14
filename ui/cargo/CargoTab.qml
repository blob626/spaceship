import QtQuick 2.0
import Ubuntu.Components 0.1


Tab{
    title: i18n.tr("Cargo")

    page: Page{
	

	CargoListView{
	    anchors.fill: parent
	}
    }    
}
