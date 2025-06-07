if (con == 1)
{
	if (obj_mainchara.x >= (x - 80) && global.interact == 0)
	{
		global.facing = 2;
		with (obj_caterpillarchara)
		{
			fun = 1;
			sprite_index = spr_ralseiu;
		}
		global.interact = 1;
		global.fc = 1;
		global.fe = 9;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_16_0");
		instance_create(0, 0, obj_dialoguer);
		con = 2;
	}
}
if (con == 2 && d_ex() == 0)
{
	sprite_index = spr_susied_dark;
	instance_create(x + (sprite_width / 2), y - 30, obj_excblcon);
	con = 3;
	alarm[4] = 30;
}
if (con == 4)
{
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_35_0");
	scr_ralface(1, 6);
	global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_37_0");
	global.msg[3] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_38_0");
	scr_susface(4, 1);
	global.msg[5] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_40_0");
	global.msg[6] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_41_0");
	scr_ralface(7, 8);
	global.msg[8] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_43_0");
	global.msg[9] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_44_0");
	scr_susface(10, 1);
	global.msg[11] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_46_0");
	scr_ralface(12, 1);
	global.msg[13] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_48_0");
	global.msg[14] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_49_0");
	global.msg[15] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_50_0");
	global.msg[16] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_51_0");
	scr_susface(17, 0);
	global.msg[18] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_53_0");
	global.msg[19] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_54_0");
	scr_ralface(20, 8);
	global.msg[21] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_56_0");
	scr_susface(22, 0);
	global.msg[23] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_58_0");
	con = 3.1;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 3.1 && d_ex() == 0)
{
	walkcon = 1;
	vspeed = 5;
	image_speed = 0.2;
	con = 3.2;
}
if (con == 3.2)
{
	if (y >= 200)
	{
		sprite_index = spr_susiel_dark;
		hspeed = -5;
		con = 3.3;
		vspeed = 0;
	}
}
if (con == 3.3)
{
	if (instance_exists(obj_caterpillarchara))
	{
		if (x <= (obj_caterpillarchara.x - 60))
		{
			sprite_index = spr_susier_dark;
			hspeed = 0;
			image_speed = 0;
			image_index = 0;
			global.facing = 3;
			with (obj_caterpillarchara)
				sprite_index = spr_ralseil;
			con = 3.4;
			alarm[4] = 30;
		}
	}
}
if (con == 4.4)
{
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_105_0");
	scr_ralface(1, 8);
	global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_107_0");
	instance_create(0, 0, obj_dialoguer);
	con = 5;
}
if (con == 7)
{
	global.currentsong[1] = mus_play(global.currentsong[0]);
	global.fc = 0;
	global.typer = 51;
	global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_118_0");
	d = instance_create(0, 0, obj_dialoguer);
	d.skippable = 0;
	con = 8;
	alarm[4] = 340;
}
if (con == 6)
{
	global.currentsong[0] = snd_init("fanfare.ogg");
	con = 7;
}
if (con == 5 && d_ex() == 0)
{
	snd_free_all();
	con = 6;
}
if (con == 9 && d_ex() == 0)
{
	global.typer = 30;
	global.fc = 1;
	global.fe = 8;
	global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_144_0");
	con = 10;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 10 && d_ex() == 0)
{
	walkcon = 1;
	hspeed = -1;
	image_speed = 0.1;
	sprite_index = spr_susiel_dark;
	global.currentsong[1] = mus_play(global.currentsong[0]);
	snd_pitch(global.currentsong[1], 0.95);
	global.fc = 0;
	global.typer = 52;
	global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_160_0");
	d = instance_create(0, 0, obj_dialoguer);
	d.skippable = 0;
	con = 12;
	alarm[4] = 320;
}
if (walkcon == 1)
	scr_depth();
if (con == 13 && d_ex() == 0)
{
	snd_free_all();
	scr_losechar();
	scr_getchar(3);
	scr_getchar(2);
	if (global.plot < 37)
		global.plot = 37;
	global.facing = 0;
	with (obj_caterpillarchara)
		fun = 0;
	global.interact = 0;
	con = 14;
}
if (rcon == 1 && obj_mainchara.x >= 80 && global.interact == 0)
{
	global.interact = 1;
	global.typer = 31;
	global.fc = 2;
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_196_0");
	global.msg[1] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_197_0");
	global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_198_0");
	if (global.flag[205] == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_201_0");
		global.msg[1] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_202_0");
		global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_203_0");
	}
	rcon = 2;
	instance_create(0, 0, obj_dialoguer);
}
if (rcon == 2 && d_ex() == 0)
{
	rcon = 3;
	global.interact = 0;
	if (global.plot < 39)
		global.plot = 39;
}
