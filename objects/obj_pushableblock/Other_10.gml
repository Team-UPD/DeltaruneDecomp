if (global.interact == 0 && event == 0)
{
	movedir = global.facing;
	wd = sprite_width;
	ht = sprite_height;
	ix = 0;
	iy = 0;
	confirm = 1;
	if (movedir == 0)
	{
		ix = x + 2;
		iy = y + ht;
	}
	if (movedir == 1)
	{
		ix = x + wd;
		iy = y + 2;
	}
	if (movedir == 2)
	{
		ix = x + 2;
		iy = (y - ht) + 5;
	}
	if (movedir == 3)
	{
		ix = (x - wd) + 5;
		iy = y + 2;
	}
	if (collision_rectangle(ix, iy, ix + 15, iy + 15, obj_solidblock, false, true))
		confirm = 0;
	if (collision_rectangle(ix, iy, ix + 15, iy + 15, obj_interactablesolid, false, true))
		confirm = 0;
	if (collision_rectangle(ix, iy, ix + 15, iy + 15, obj_solidenemy, false, true))
		confirm = 0;
	snd_play(snd_noise);
	if (confirm == 1)
	{
		sprite_index = spr_npc_block;
		global.interact = 1;
		movecourse = 1;
		movetimer = 0;
	}
}
if (event == 1)
{
	myinteract = 3;
	global.msc = 0;
	global.typer = 6;
	global.fc = 0;
	global.fc = 0;
	global.interact = 1;
	sd = 0;
	if (global.flag[212] == 0)
		global.msg[0] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_61_0");
	if (global.plot >= 50)
		global.msg[0] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_66_0");
	if (global.flag[212] == 2 && global.plot < 50)
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 9;
		global.msg[0] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_74_0");
		global.msg[1] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_75_0");
		global.msg[2] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_76_0");
		global.msg[3] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_77_0");
		sd = 1;
		myinteract = 0;
		with (obj_boxpuzzle_event)
			con = 50;
	}
	mydialoguer = instance_create(0, 0, obj_dialoguer);
	if (sd == 1)
	{
		with (mydialoguer)
			side = 1;
	}
}
