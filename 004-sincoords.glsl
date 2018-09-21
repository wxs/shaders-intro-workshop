#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // x is width, y is height
uniform vec2 u_mouse;
uniform float u_time;

void main() {
    gl_FragColor = vec4(sin(gl_FragCoord.x * 0.020 + gl_FragCoord.y * sin(u_time) * 0.02),
					sin(gl_FragCoord.y * -0.028),
					0.0,1.0);
}


