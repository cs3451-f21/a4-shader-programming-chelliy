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
    v_normal = mat3(normalMatrix) * normalize(vec3(0,-cos(position.g+time),1));
    v_texcoord = uv;

    gl_Position = projectionMatrix * modelViewMatrix * vec4( position.x, position.y, sin(position.y + time) + position.z, 1.0 );
}