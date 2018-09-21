#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // x is width, y is height
uniform vec2 u_mouse;
uniform float u_time;

void main() {
    gl_FragColor = vec4(gl_FragCoord.x / u_resolution.x,
					gl_FragCoord.y / u_resolution.y,
					0.0,1.0);
}

