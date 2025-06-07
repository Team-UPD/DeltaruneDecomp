if (global.plot <= 10)
	snd_free_all();
con = 0;
image_speed = 0;
wallwindow = scr_marker(140, 40, spr_housewindow);
with (wallwindow)
	scr_depth();
if (global.plot > 0)
{
	scr_depth();
	with (wallwindow)
		image_index = 1;
	image_index = 1;
}
else
{
	scr_windowcaption(scr_84_get_lang_string("obj_krisroom_slash_Create_0_gml_14_0"));
	t = scr_marker(151, 97, spr_toriel_rt);
	with (t)
	{
		scr_depth();
		image_speed = 0.25;
	}
	global.msc = 0;
	global.typer = 7;
	global.fc = 4;
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Create_0_gml_21_0");
	global.msg[1] = scr_84_get_lang_string("obj_krisroom_slash_Create_0_gml_22_0");
	d = instance_create(0, 0, obj_dialoguer);
	con = 1;
	global.interact = 1;
	global.facing = 3;
}
