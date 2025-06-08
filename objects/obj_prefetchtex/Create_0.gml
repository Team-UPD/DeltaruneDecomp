texturepagecount = 0;
prog = 0;
loaded = false;
con = 0;
pages = [];
draw = false;
if (!variable_global_exists("prefetchtexload"))
{
	global.prefetchtexload = false;
}
else if (global.prefetchtexload == true)
{
	loaded = true;
	visible = false;
}
texture_groups = ["Default", "ConsolePS4"];
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
		texturepagecount++;
		array_push(pages, _tex_array[j]);
	}
}
