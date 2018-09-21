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
		return vec4(1.0);
	}
}

void main() {
	vec2 st = gl_FragCoord.xy / u_resolution.xy;
	gl_FragColor = rectangle(mod(st * (sin(u_time*3.) + 2.) * 2., 1.), 0.148);
}



