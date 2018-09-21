#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
	// Full screen of a single colour
    gl_FragColor = vec4(1.0, 0.0, 0.0,1.0);
}
