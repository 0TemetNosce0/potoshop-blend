import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    id: window
    width: 160*6
    height: 160*6
    Image {
        id: iamgeBase
        source: "png/qt-logo.png"
        visible:false
    }
    Image {
        id: iamgeBlend
        source: "png/foreground.jpg"
        visible:false
    }

    Grid {
        anchors.centerIn: parent
        columns: 5
        ShaderEffect {//blendAdd
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:
                fileReader.readFile(":/shader/add.glsl")
            Text {
                id: name
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendAdd")
                color: "red"
            }
        }

        ShaderEffect {//blendAverage
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            //! [fragment]
            fragmentShader:fileReader.readFile(":/shader/average.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendAverage")
                color: "red"
            }
        }
        ShaderEffect {//blendColorBurn
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            //! [fragment]
            fragmentShader:fileReader.readFile(":/shader/color-burn.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendColorBurn")
                color: "red"
            }
        }
        ShaderEffect {//blendColorDodge
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/color-dodge.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendColorDodge")
                color: "red"
            }
        }
        ShaderEffect {//blendDarken
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/darken.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendDarken")
                color: "red"
            }
        }
        ShaderEffect {//blendDifference
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/difference.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendDifference")
                color: "red"
            }
        }
        ShaderEffect {//blendExclusion
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/exclusion.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendExclusion")
                color: "red"
            }
        }
        ShaderEffect {//blendGlow
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/glow.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendGlow")
                color: "red"
            }
        }
        ShaderEffect {//blendHardLight
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/hard-light.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendHardLight")
                color: "red"
            }
        }
        ShaderEffect {//blendHardMix
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/hard-mix.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendHardMix")
                color: "red"
            }
        }
        ShaderEffect {//blendLighten
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/lighten.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendLighten")
                color: "red"
            }
        }
        ShaderEffect {//blendLinearBurn
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/linear-burn.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendLinearBurn")
                color: "red"
            }
        }
        ShaderEffect {//blendLinearDodge
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/linear-dodge.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendLinearDodge")
                color: "red"
            }
        }
        ShaderEffect {//blendLinearLight
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/linear-light.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendLinearLight")
                color: "red"
            }
        }
        ShaderEffect {//blendMultiply
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/multiply.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendMultiply")
                color: "red"
            }
        }
        ShaderEffect {//blendNegation
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/negation.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendNegation")
                color: "red"
            }
        }
        ShaderEffect {//blendNormal
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/normal.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendNormal")
                color: "red"
            }
        }
        ShaderEffect {//blendOverlay
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/overlay.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendOverlay")
                color: "red"
            }
        }
        ShaderEffect {//blendPhoenix
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/phoenix.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendPhoenix")
                color: "red"
            }
        }
        ShaderEffect {//blendPinLight
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/pin-light.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendPinLight")
                color: "red"
            }
        }
        ShaderEffect {//blendReflect
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/reflect.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendReflect")
                color: "red"
            }
        }
        ShaderEffect {//blendScreen
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/screen.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendScreen")
                color: "red"
            }
        }
        ShaderEffect {//blendSoftLight
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/soft-light.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendSoftLight")
                color: "red"
            }
        }
//        ShaderEffect {//blendSubstract
//            width: 160
//            height: 160
//            property variant bg:iamgeBase
//            property variant foreground:iamgeBlend
//            fragmentShader:fileReader.readFile(":/shader/substract.glsl")
//            Text {
//                anchors.horizontalCenter:parent.horizontalCenter
//                anchors.bottom:parent.bottom
//                text: qsTr("blendSubstract")
//                color: "red"
//            }
//        }
        ShaderEffect {//blendSubtract
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/subtract.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendSubtract")
                color: "red"
            }
        }
        ShaderEffect {//blendVividLight
            width: 160
            height: 160
            property variant bg:iamgeBase
            property variant foreground:iamgeBlend
            fragmentShader:fileReader.readFile(":/shader/vivid-light.glsl")
            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.bottom:parent.bottom
                text: qsTr("blendVividLight")
                color: "red"
            }
        }
    }

}
