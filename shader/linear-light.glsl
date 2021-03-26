uniform sampler2D bg;
uniform sampler2D foreground;
in highp vec2 qt_TexCoord0;

float blendLinearBurn(float base, float blend) {
        // Note : Same implementation as BlendSubtractf
        return max(base+blend-1.0,0.0);
}

vec3 blendLinearBurn(vec3 base, vec3 blend) {
        // Note : Same implementation as BlendSubtract
        return max(base+blend-vec3(1.0),vec3(0.0));
}

vec3 blendLinearBurn(vec3 base, vec3 blend, float opacity) {
        return (blendLinearBurn(base, blend) * opacity + base * (1.0 - opacity));
}
float blendLinearDodge(float base, float blend) {
        // Note : Same implementation as BlendAddf
        return min(base+blend,1.0);
}

vec3 blendLinearDodge(vec3 base, vec3 blend) {
        // Note : Same implementation as BlendAdd
        return min(base+blend,vec3(1.0));
}

vec3 blendLinearDodge(vec3 base, vec3 blend, float opacity) {
        return (blendLinearDodge(base, blend) * opacity + base * (1.0 - opacity));
}

float blendLinearLight(float base, float blend) {
	return blend<0.5?blendLinearBurn(base,(2.0*blend)):blendLinearDodge(base,(2.0*(blend-0.5)));
}

vec3 blendLinearLight(vec3 base, vec3 blend) {
	return vec3(blendLinearLight(base.r,blend.r),blendLinearLight(base.g,blend.g),blendLinearLight(base.b,blend.b));
}

vec3 blendLinearLight(vec3 base, vec3 blend, float opacity) {
	return (blendLinearLight(base, blend) * opacity + base * (1.0 - opacity));
}

void main() {
    vec4 bgColor = texture2D(bg, qt_TexCoord0);
    vec4 fgColor = texture2D(foreground, qt_TexCoord0);
    vec3 color = blendLinearLight(bgColor.rgb, fgColor.rgb);
    gl_FragColor = vec4(color, 1.0);
}
