#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // x is width, y is height
uniform vec2 u_mouse;
uniform float u_time;

void main() {
	vec2 st = gl_FragCoord.xy / u_resolution.xy;
	if (st.x < 0.1 || st.x > 0.9 || st.y < 0.1 || st.y > 0.9) {
		gl_FragColor = vec4(0.0);
	} else {
		gl_FragColor = vec4(1.0);
	}
}

