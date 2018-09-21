#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // x is width, y is height
uniform vec2 u_mouse;
uniform float u_time;

vec4 rectangle(vec2 st, float border) {
	if (st.x < border || st.x > 1.-border || st.y < border || st.y > 1.-border) {
		return vec4(0.0);
	} else {
		return vec4(0.0, 1.0, 0.0, 1.0);
	}
}

vec4 circle(vec2 st, float radius) {
	float len = length(st - vec2(0.5, 0.5));
	if (len > radius) {
		return vec4(0.0);
	} else {
		return vec4(1.0, 0.0, 0.0, 1.0);
	}
}

void main() {
	vec2 st = gl_FragCoord.xy / u_resolution.xy;
	vec4 colourA = rectangle(mod(st * (sin(u_time*3.) + 2.) * 2., 1.), 0.148);

	vec2 stB = vec2(st.x + st.y, st.x - st.y);
	vec4 colourB = circle(mod(stB * (sin(u_time*2.) + 2.) * 2.5, 1.), 0.3);

	gl_FragColor =  mix(colourA, colourB, 0.5);
}

