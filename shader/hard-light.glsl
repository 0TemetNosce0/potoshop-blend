uniform sampler2D bg;
uniform sampler2D foreground;
in highp vec2 qt_TexCoord0;

float blendOverlay(float base, float blend) {
        return base<0.5?(2.0*base*blend):(1.0-2.0*(1.0-base)*(1.0-blend));
}

vec3 blendOverlay(vec3 base, vec3 blend) {
        return vec3(blendOverlay(base.r,blend.r),blendOverlay(base.g,blend.g),blendOverlay(base.b,blend.b));
}

vec3 blendOverlay(vec3 base, vec3 blend, float opacity) {
        return (blendOverlay(base, blend) * opacity + base * (1.0 - opacity));
}

vec3 blendHardLight(vec3 base, vec3 blend) {
	return blendOverlay(blend,base);
}

vec3 blendHardLight(vec3 base, vec3 blend, float opacity) {
	return (blendHardLight(base, blend) * opacity + base * (1.0 - opacity));
}

void main() {
    vec4 bgColor = texture2D(bg, qt_TexCoord0);
    vec4 fgColor = texture2D(foreground, qt_TexCoord0);
    vec3 color = blendHardLight(bgColor.rgb, fgColor.rgb);
    gl_FragColor = vec4(color, 1.0);
}
