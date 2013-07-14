import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

ListItem.Subtitled{
    icon: Qt.resolvedUrl(portrait)
    text: name
    subText: profession
    progression: true
}
