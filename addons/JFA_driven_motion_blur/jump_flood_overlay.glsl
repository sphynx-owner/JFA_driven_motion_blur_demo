#[compute]
#version 450

layout(set = 0, binding = 0) uniform sampler2D blur_sampler;
layout(rgba16f, set = 0, binding = 1) uniform image2D color_image;

layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
void main() 
{
	ivec2 render_size = ivec2(textureSize(blur_sampler, 0));
	ivec2 uv = ivec2(gl_GlobalInvocationID.xy);
	if ((uv.x >= render_size.x) || (uv.y >= render_size.y)) 
	{
		return;
	}
	imageStore(color_image, uv, textureLod(blur_sampler, (vec2(uv) + 0.5) / render_size, 0.0));
}
