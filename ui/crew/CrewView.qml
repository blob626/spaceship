import QtQuick 2.0
import Ubuntu.Components 0.1

Item{
    property var model

    Label{
	id: label
	text: model.test
    }
}
