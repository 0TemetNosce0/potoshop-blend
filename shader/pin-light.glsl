uniform sampler2D bg;
uniform sampler2D foreground;
in highp vec2 qt_TexCoord0;


float blendLighten(float base, float blend) {
        return max(blend,base);
}

vec3 blendLighten(vec3 base, vec3 blend) {
        return vec3(blendLighten(base.r,blend.r),blendLighten(base.g,blend.g),blendLighten(base.b,blend.b));
}

vec3 blendLighten(vec3 base, vec3 blend, float opacity) {
        return (blendLighten(base, blend) * opacity + base * (1.0 - opacity));
}
float blendDarken(float base, float blend) {
        return min(blend,base);
}

vec3 blendDarken(vec3 base, vec3 blend) {
        return vec3(blendDarken(base.r,blend.r),blendDarken(base.g,blend.g),blendDarken(base.b,blend.b));
}

vec3 blendDarken(vec3 base, vec3 blend, float opacity) {
        return (blendDarken(base, blend) * opacity + base * (1.0 - opacity));
}

float blendPinLight(float base, float blend) {
	return (blend<0.5)?blendDarken(base,(2.0*blend)):blendLighten(base,(2.0*(blend-0.5)));
}

vec3 blendPinLight(vec3 base, vec3 blend) {
	return vec3(blendPinLight(base.r,blend.r),blendPinLight(base.g,blend.g),blendPinLight(base.b,blend.b));
}

vec3 blendPinLight(vec3 base, vec3 blend, float opacity) {
	return (blendPinLight(base, blend) * opacity + base * (1.0 - opacity));
}

void main() {
    vec4 bgColor = texture2D(bg, qt_TexCoord0);
    vec4 fgColor = texture2D(foreground, qt_TexCoord0);
    vec3 color = blendPinLight(bgColor.rgb, fgColor.rgb);
    gl_FragColor = vec4(color, 1.0);
}
