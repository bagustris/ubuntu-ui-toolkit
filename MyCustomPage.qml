import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {
    width: units.gu(48)
    height: units.gu(60)

    Page {
        // title: "Al-Fatihah"

        Text {
            width: units.gu(48)
            wrapMode: Text.WordWrap
            horizontalAlignment: root.horizontalAlignment
            textFormat: Text.RichText
            verticalAlignment: Text.AlignTop
            text: "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang (1)\nSegala puji bagi Allah, Tuhan semesta alam (2)\nYang Maha Pengasih lagi Maha Penyayang (3)\nDia yang menguasai hari pembalasan (4)\nHanya kepadaMu kami menyembah, dan hanya kepadaMu kami mohon pertolongan (5)\nTunjukkanlah kami ke jalan yang lurus, (6)\nyakni jalan orang-orang yang Kau beri nikmat, bukan jalan mereka yang Kau murkai, dan bukan pula jalan mereka yang sesat (6)"
        }  
        

        tools: ToolbarItems {
            ToolbarButton {
                action: Action {
                    text: "one"
                }
             }
            ToolbarButton {
                action: Action {
                    text: "two"
                }
            }
        }
    }
}
