if (con == 1)
{
	if (obj_mainchara.x >= 140 && global.interact == 0)
	{
		r = global.cinstance[0];
		with (r)
		{
			sprite_index = rsprite;
			fun = 1;
		}
		global.facing = 1;
		global.interact = 1;
		global.typer = 30;
		global.fc = 1;
		global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_16_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_18_0");
		scr_susface(3, 2);
		global.msg[4] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_20_0");
		instance_create(0, 0, obj_dialoguer);
		con = 2;
	}
}
if (con == 2 && !d_ex())
{
	exc = instance_create(s.x + 30, s.y - 20, obj_excblcon);
	con = 3;
	with (s)
		sprite_index = spr_susiel_dark;
	sprite_index = spr_lancer_lt;
	alarm[4] = 30;
}
if (con == 4)
{
	global.typer = 31;
	global.fc = 2;
	global.fe = 8;
	global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_41_0");
	scr_susface(1, 7);
	global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_43_0");
	scr_lanface(3, 6);
	global.msg[4] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_45_0");
	scr_susface(5, 0);
	global.msg[6] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_47_0");
	scr_ralface(7, 6);
	global.msg[8] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_49_0");
	instance_create(0, 0, obj_dialoguer);
	con = 5;
}
if (con == 5 && !d_ex())
{
	with (r)
		sprite_index = spr_ralseiu;
	with (s)
		sprite_index = spr_susieu_dark;
	sprite_index = spr_lancer_ut;
	con = 6;
	alarm[4] = 30;
}
if (con == 7)
{
	with (r)
		sprite_index = spr_ralseir;
	with (s)
		sprite_index = spr_susiel_dark;
	sprite_index = spr_lancer_lt;
	global.typer = 31;
	global.fc = 2;
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_71_0");
	scr_susface(1, 0);
	global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_73_0");
	scr_ralface(3, 6);
	global.msg[4] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_75_0");
	scr_susface(5, 0);
	global.msg[6] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_77_0");
	global.msg[7] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_78_0");
	scr_lanface(8, 3);
	global.msg[9] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_80_0");
	scr_susface(10, 2);
	global.msg[11] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_82_0");
	global.msg[12] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_83_0");
	instance_create(0, 0, obj_dialoguer);
	con = 8;
}
if (con == 8 && !d_ex())
{
	global.facing = 0;
	with (r)
		fun = 0;
	visible = 0;
	with (s)
		visible = 0;
	lnpc = instance_create(x, y, obj_npc_facing);
	with (lnpc)
	{
		dtsprite = spr_lancer_dt;
		rtsprite = spr_lancer_rt;
		ltsprite = spr_lancer_lt;
		utsprite = spr_lancer_ut;
		sprite_index = dtsprite;
		y += 100;
	}
	snpc = instance_create(s.x, s.y, obj_npc_facing);
	with (snpc)
	{
		dtsprite = spr_susiedt_dark;
		rtsprite = spr_susiert_dark;
		ltsprite = spr_susielt_dark;
		utsprite = spr_susieut_dark;
		sprite_index = dtsprite;
		y += 100;
	}
	global.interact = 0;
	con = 9;
}
if (con == 9 && obj_mainchara.x < 40 && global.interact == 0)
{
	global.facing = 1;
	with (obj_mainchara)
		x = 32;
	global.interact = 1;
	global.typer = 30;
	global.fc = 1;
	global.fe = 0;
	if (talked == 0)
		global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_133_0");
	else
		global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_137_0");
	instance_create(0, 0, obj_dialoguer);
	con = 10;
}
if (con == 10 && !d_ex())
{
	talked += 1;
	with (obj_mainchara)
		x = 32;
	global.interact = 0;
	con = 9;
}
if (con == 15 && global.interact == 0)
{
	if (obj_suitspuzz.won == 1)
	{
		global.facing = 1;
		with (global.cinstance[0])
		{
			fun = 1;
			sprite_index = rsprite;
		}
		snd_play(snd_screenshake);
		instance_create(0, 0, obj_shake);
		global.interact = 1;
		with (block)
			instance_destroy();
		with (spike[0])
			image_index = 1;
		with (spike[1])
			image_index = 1;
		with (spike[2])
			image_index = 1;
		con = 11;
		alarm[4] = 60;
		s.visible = 1;
		visible = 1;
		sprite_index = spr_lancer_rt;
		with (s)
			sprite_index = spr_susier_dark;
		with (snpc)
			instance_destroy();
		with (lnpc)
			instance_destroy();
	}
}
if (con == 12)
{
	with (s)
		sprite_index = spr_susiel_dark;
	sprite_index = spr_lancer_lt;
	global.typer = 30;
	global.fc = 1;
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_189_0");
	instance_create(0, 0, obj_dialoguer);
	con = 13;
}
if (con == 13 && !d_ex())
{
	global.fe = 2;
	with (s)
	{
		sprite_index = spr_susier_dark;
		image_speed = 0.5;
		hspeed = 14;
	}
	sprite_index = spr_lancer_rt;
	hspeed = 14;
	global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_200_0");
	scr_lanface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_202_0");
	instance_create(0, 0, obj_dialoguer);
	con = 14;
}
if (con == 14 && !d_ex())
{
	con = 15;
	alarm[4] = 30;
}
if (con == 16)
{
	with (s)
	{
		x = __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0);
		sprite_index = spr_susiel_dark;
		hspeed = -12;
	}
	hspeed = -12;
	sprite_index = spr_lancer_lt;
	x = __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 50;
	con = 17;
}
if (con == 17)
{
	if (s.x <= 380)
	{
		with (s)
			scr_halt();
		scr_halt();
		con = 18;
		alarm[4] = 15;
	}
}
if (con == 19)
{
	with (s)
		sprite_index = spr_susieu_dark;
	sprite_index = spr_lancer_ut;
	global.fc = 1;
	global.fe = 0;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_247_0");
	instance_create(0, 0, obj_dialoguer);
	con = 20;
}
if (con == 20 && !d_ex())
{
	with (s)
	{
		sprite_index = spr_susier_dark;
		image_speed = 0.5;
		hspeed = 12;
	}
	sprite_index = spr_lancer_rt;
	hspeed = 12;
	with (easel)
		hspeed = 12;
	con = 21;
	alarm[4] = 30;
}
if (con == 22)
{
	with (global.cinstance[0])
		fun = 0;
	global.facing = 0;
	global.interact = 0;
	global.plot = 72;
	con = 23;
}
