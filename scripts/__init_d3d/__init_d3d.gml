function __init_d3d()
{
	global.__d3d = false;
	global.__d3dDepth = 0;
	global.__d3dCamera = camera_create();
	global.__d3dPrimKind = -1;
	global.__d3dPrimTex = -1;
	global.__d3dPrimBuffer = vertex_create_buffer();
	vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_normal();
	vertex_format_add_colour();
	vertex_format_add_texcoord();
	global.__d3dPrimVF = vertex_format_end();
	global.__d3dDeprecatedMessage = [false];
}
