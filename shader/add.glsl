uniform sampler2D bg;
uniform sampler2D foreground;
in highp vec2 qt_TexCoord0;

float blendAdd(float base, float blend) {
    return min(base+blend,1.0);
}

vec3 blendAdd(vec3 base, vec3 blend) {
    return min(base+blend,vec3(1.0));
}

vec3 blendAdd(vec3 base, vec3 blend, float opacity) {
    return (blendAdd(base, blend) * opacity + base * (1.0 - opacity));
}

void main() {
    vec4 bgColor = texture2D(bg, qt_TexCoord0);
    vec4 fgColor = texture2D(foreground, qt_TexCoord0);
    vec3 color = blendAdd(bgColor.rgb, fgColor.rgb);
    gl_FragColor = vec4(color, 1.0);
}
