function pal_swap_reset()
{
	if (global.Pal_Shader_Is_Set)
		shader_reset();
	global.Pal_Shader_Is_Set = false;
}
