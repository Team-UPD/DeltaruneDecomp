if (con == 1)
{
	if (obj_mainchara.x >= (x - 200) && global.interact == 0)
	{
		snd_free_all();
		global.facing = 1;
		with (obj_caterpillarchara)
		{
			fun = 1;
			if (rsprite == spr_ralseir)
				sprite_index = spr_ralseir;
		}
		with (obj_mainchara)
			cutscene = 1;
		global.interact = 1;
		sprite_index = spr_lancer_lt;
		with (s)
			sprite_index = spr_susiel_dark;
		exc = instance_create(x + 30, y - 20, obj_excblcon);
		con = 2;
		scr_pan(4, 0, 30);
		alarm[4] = 30;
	}
}
if (con == 3)
{
	global.currentsong[0] = snd_init("lancer.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
	global.typer = 31;
	global.fc = 2;
	global.fe = 10;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_30_0");
	scr_susface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_32_0");
	scr_lanface(3, 1);
	global.msg[4] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_34_0");
	scr_susface(5, 2);
	global.msg[6] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_36_0");
	scr_lanface(7, 2);
	global.msg[8] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_38_0");
	scr_susface(9, 4);
	global.msg[10] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_40_0");
	instance_create(0, 0, obj_dialoguer);
	con = 4;
}
if (con == 4 && !d_ex())
{
	sprite_index = spr_lancer_dt;
	snd_play(snd_impact);
	instance_create(0, 0, obj_shake);
	con = 5;
	alarm[4] = 5;
}
if (con == 6)
{
	global.typer = 32;
	global.fc = 5;
	global.fe = 2;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_60_0");
	instance_create(0, 0, obj_dialoguer);
	con = 7;
}
if (con == 7 && !d_ex())
{
	with (s)
		sprite_index = spr_susied_dark;
	snd_play(snd_impact);
	instance_create(0, 0, obj_shake);
	con = 8;
	alarm[4] = 5;
}
if (con == 9 && !d_ex())
{
	global.typer = 30;
	global.fc = 1;
	global.fe = 2;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_79_0");
	instance_create(0, 0, obj_dialoguer);
	con = 10;
}
if (con == 10 && !d_ex())
{
	sprite_index = spr_lancer_rt;
	with (s)
		sprite_index = spr_susiel_dark;
	con = 11;
	alarm[4] = 5;
}
if (con == 12)
{
	global.typer = 30;
	global.fc = 1;
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_97_0");
	instance_create(0, 0, obj_dialoguer);
	con = 13;
}
if (con == 13 && !d_ex())
{
	snd_play(snd_magicsprinkle);
	whitefade = scr_dark_marker(-10, -10, spr_pixel_white);
	with (whitefade)
	{
		image_alpha = 0;
		image_xscale = 1000;
		image_yscale = 1000;
		depth = -100;
	}
	wtimer = 0;
	con = 14;
}
if (con == 14)
{
	wtimer += 1;
	if (wtimer <= 25)
	{
		with (whitefade)
			image_alpha += 0.04;
	}
	if (wtimer == 26)
	{
		sprite_index = spr_lancer_pose;
		with (s)
			sprite_index = spr_susieb_spellready;
		with (s)
			image_xscale = -2;
		with (s)
			image_speed = 0.2;
		with (s)
			x += 60;
	}
	if (wtimer > 28)
	{
		with (whitefade)
			image_alpha -= 0.04;
	}
	if (wtimer >= 60)
	{
		with (whitefade)
			instance_destroy();
		con = 15;
	}
}
if (con == 15 && !d_ex())
{
	global.typer = 32;
	global.fc = 5;
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_158_0");
	if (global.flag[214] == 1)
		global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_161_0");
	if (global.flag[214] == 2)
		global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_165_0");
	instance_create(0, 0, obj_dialoguer);
	con = 16;
}
if (con == 16 && !d_ex())
{
	alarm[4] = 30;
	con = 17;
}
if (con == 18)
{
	snd_free_all();
	global.fc = 2;
	global.fe = 8;
	global.typer = 31;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_185_0");
	instance_create(0, 0, obj_dialoguer);
	con = 19;
}
if (con == 19 && !d_ex())
{
	with (s)
	{
		image_speed = 0;
		image_index = 0;
		sprite_index = spr_susiel_dark_unhappy;
		image_xscale = 2;
		x -= 60;
	}
	sprite_index = spr_lancer_lt_unhappy;
	global.typer = 30;
	global.fc = 1;
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_205_0");
	global.msg[1] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_206_0");
	global.msg[2] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_207_0");
	scr_lanface(3, 6);
	global.msg[4] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_209_0");
	scr_ralface(5, 1);
	global.msg[6] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_211_0");
	global.msg[7] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_212_0");
	instance_create(0, 0, obj_dialoguer);
	con = 20;
}
if (con == 20 && !d_ex())
{
	sprite_index = spr_lancer_lt;
	with (s)
		sprite_index = spr_susiel_dark;
	global.typer = 30;
	global.fc = 1;
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_224_0");
	scr_lanface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_226_0");
	scr_susface(3, 2);
	global.msg[4] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_228_0");
	scr_lanface(5, 2);
	global.msg[6] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_230_0");
	instance_create(0, 0, obj_dialoguer);
	con = 21;
}
if (con == 21 && !d_ex())
{
	with (s)
		sprite_index = spr_susier_dark;
	con = 22;
	alarm[4] = 30;
}
if (con == 23)
{
	global.typer = 30;
	global.fc = 1;
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_247_0");
	instance_create(0, 0, obj_dialoguer);
	con = 24;
}
if (con == 24 && !d_ex())
{
	sprite_index = spr_lancer_rt;
	con = 25;
	alarm[4] = 30;
}
if (con == 26)
{
	global.fc = 5;
	global.fe = 3;
	global.typer = 32;
	global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_265_0");
	instance_create(0, 0, obj_dialoguer);
	con = 27;
}
if (con == 27 && !d_ex())
{
	sprite_index = spr_lancer_dt;
	vspeed = 16;
	with (s)
	{
		sprite_index = spr_susied_dark;
		image_speed = 0.5;
		vspeed = 16;
	}
	con = 27.1;
	alarm[4] = 30;
}
if (con == 28.1)
{
	scr_pan(-4, 0, 30);
	con = 28;
	alarm[4] = 30;
}
if (con == 29)
{
	global.currentsong[0] = snd_init("forest.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
	global.facing = 0;
	with (obj_caterpillarchara)
		fun = 0;
	with (obj_mainchara)
		cutscene = 0;
	global.interact = 0;
	global.plot = 70;
	con = 30;
}
