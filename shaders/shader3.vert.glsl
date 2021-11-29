// Automatically provided by three.js
//
// uniform mat4 modelMatrix;
// uniform mat4 modelViewMatrix;
// uniform mat4 projectionMatrix;
// uniform mat4 viewMatrix;
// uniform mat3 normalMatrix;
// uniform vec3 cameraPosition;
// uniform bool isOrthographic;
// attribute vec3 position;
// attribute vec3 normal;
// attribute vec2 uv;

// interpolate the normal and texture coordinates across the surface
varying vec3 v_normal;
varying vec2 v_texcoord;
uniform float time;

void main() {
    v_normal = normalize(mat3(normalMatrix) *vec3(-cos(position.g+time), 1, 0));
    v_texcoord = uv;

    gl_Position = projectionMatrix * modelViewMatrix * vec4( position.r, position.g, sin(position.g + time) + position.b, 1.0 );
}