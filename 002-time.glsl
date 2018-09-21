#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
    gl_FragColor = vec4(abs(sin(u_time * 1.0)), abs(sin(u_time * 1.3)), 0.0,1.0);
}


