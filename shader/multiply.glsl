uniform sampler2D bg;
uniform sampler2D foreground;
in highp vec2 qt_TexCoord0;

vec3 blendMultiply(vec3 base, vec3 blend) {
	return base*blend;
}

vec3 blendMultiply(vec3 base, vec3 blend, float opacity) {
	return (blendMultiply(base, blend) * opacity + base * (1.0 - opacity));
}

void main() {
    vec4 bgColor = texture2D(bg, qt_TexCoord0);
    vec4 fgColor = texture2D(foreground, qt_TexCoord0);
    vec3 color = blendMultiply(bgColor.rgb, fgColor.rgb);
    gl_FragColor = vec4(color, 1.0);
}
