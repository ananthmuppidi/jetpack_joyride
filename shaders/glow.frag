#version 330 core
in vec2 TexCoords;
out vec4 color;

uniform sampler2D image;
uniform vec3 spriteColor;
uniform int jet;

void main()
{
    float pos = distance(TexCoords, vec2(0.5, 0.6f));
    color = vec4(spriteColor, 1.0) * texture(image, TexCoords);
    if(jet == 1) {
        color = mix(vec4(1.0, 1.0, 1.0, 1.0), color, smoothstep(0.0,0.4,pos));
    }
}