if (obj_mainchara.y < y && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 2;
	with (obj_caterpillarchara)
	{
		fun = 1;
		image_index = 0;
	}
}
if (con == 1)
{
	con = 3;
	scr_speaker("susie");
	msgsetloc(0, "\\E3* Just wanted to show off your huge house^1, huh?/", "obj_ch2_room_castle_1f_slash_Step_0_gml_19_0");
	scr_anyface_next("ralsei", 2);
	msgnextloc("\\E2* No^1, what I want to show you is upstairs!/%", "obj_ch2_room_castle_1f_slash_Step_0_gml_21_0");
	d_make();
}
if (con == 3 && !d_ex())
{
	with (obj_caterpillarchara)
		fun = 0;
	if (global.plot < 13)
		global.plot = 13;
	global.interact = 0;
	con = -1;
	instance_destroy();
}
