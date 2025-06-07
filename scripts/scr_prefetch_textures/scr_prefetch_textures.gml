function scr_prefetch_textures()
{
	var texture_groups = ["Default", "ConsolePS4"];
	if (global.is_console)
	{
		if (scr_is_switch_os())
			texture_groups = ["Default", "ConsoleSwitch"];
		texture_groups[array_length(texture_groups)] = "Console";
	}
	for (var i = 0; i < array_length(texture_groups); i++)
	{
		var _tex_array = texturegroup_get_textures(texture_groups[i]);
		for (var j = 0; j < array_length(_tex_array); j++)
		{
			if (texture_is_ready(_tex_array[j]))
				continue;
			texture_prefetch(_tex_array[j]);
		}
	}
}
