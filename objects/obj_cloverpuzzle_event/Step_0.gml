if (pcon == 0 && global.interact == 0)
{
	if (puzzle.suit[0] == 4 && puzzle.suit[1] == 1 && puzzle.suit[2] == 2 && global.flag[234] == 0)
	{
		with (blockn)
			instance_destroy();
		global.flag[234] = 1;
		global.interact = 1;
		pcon = 1;
		with (spiken[0])
			image_index = 1;
		with (spiken[1])
			image_index = 1;
	}
}
if (pcon == 1)
{
	ptimer = 0;
	snd_play(snd_screenshake);
	instance_create(0, 0, obj_shake);
	pcon = 2;
}
if (pcon == 2)
{
	ptimer += 1;
	if (ptimer >= 20)
	{
		ptimer = 0;
		pcon = 0;
		global.interact = 0;
	}
}
if (con == 0 && global.interact == 0)
{
	if (obj_mainchara.y <= 80)
	{
		global.facing = 0;
		with (global.cinstance[0])
		{
			fun = 1;
			sprite_index = dsprite;
		}
		global.interact = 1;
		con = 1;
		alarm[4] = 22;
		cmarker = scr_dark_marker(x, y, spr_clubs_idle);
		with (cmarker)
			depth = 960000;
		with (cmarker)
			vspeed = -8;
	}
}
if (con == 1)
{
	if (cmarker.y <= 280)
	{
		with (cmarker)
			scr_depth();
	}
}
if (con == 2)
{
	with (cmarker)
		scr_halt();
	global.typer = 6;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_78_0");
	global.msg[1] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_79_0");
	global.msg[2] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_80_0");
	if (global.flag[236] == 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_85_0");
		global.msg[1] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_86_0");
	}
	con = 3;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 3 && !d_ex())
{
	with (global.cinstance[0])
		fun = 0;
	if (global.plot < 75)
		global.plot = 75;
	with (obj_cloverhole)
	{
		sprite_index = spr_cloverhole;
		holecon = 999;
		image_index = 0;
	}
	cencounter = instance_create(cmarker.x, cmarker.y, obj_chaseenemy);
	with (cmarker)
		instance_destroy();
	with (cencounter)
	{
		global.interact = 0;
		myencounter = 8;
		sprite_index = spr_clubs_idle;
		touchsprite = spr_clubs_idle;
		event_user(0);
	}
	con = 4;
}
