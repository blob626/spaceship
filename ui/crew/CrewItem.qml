import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

import "../../libraries/name.js" 0.1 as Name

ListItem.Subtitled{
    icon: Qt.resolvedUrl(portrait)
    text: Name.first(name)
    subText: profession
    progression: true
}
