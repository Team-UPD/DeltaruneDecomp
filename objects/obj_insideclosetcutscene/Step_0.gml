if (papeshake == 1)
{
	with (obj_fallpaper)
	{
		if (vspeed == 0)
		{
			x = xstart + random(1);
			y = ystart + 10 + random(1);
		}
	}
}
if (papefall == 1)
{
	papetimer += 1;
	if (papetimer >= 3)
	{
		if (papei < papeno)
		{
			snd_stop(snd_paper_rise);
			snd_play(snd_paper_rise);
			with (pape[papei])
			{
				sprite_index = spr_paperfly;
				vspeed = 1;
				image_speed = 0.5;
				gravity = 0.5;
			}
			papetimer = 0;
			papei += 1;
		}
	}
}
if (global.interact == 0 && obj_mainchara.x <= 70)
{
	obj_mainchara.x = 71;
	global.fe = 7;
	global.fc = 1;
	global.typer = 10;
	dex = 1;
	global.interact = 1;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_45_0");
	instance_create(0, 0, obj_dialoguer);
}
if (dex == 1 && instance_exists(obj_dialoguer) == false)
{
	global.facing = 1;
	global.interact = 0;
	dex = 0;
}
if (con == 1.5)
{
	global.interact = 1;
	global.fe = 0;
	global.fc = 1;
	global.typer = 10;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_62_0");
	global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_63_0");
	global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_64_0");
	con = 2;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 2 && instance_exists(obj_dialoguer) == false)
{
	image_speed = 0.2;
	global.interact = 0;
	hspeed = 3;
	con = 3;
}
if (con == 3)
{
	if (obj_mainchara.px >= 3)
		hspeed = obj_mainchara.px;
	else
		hspeed = 3;
	if (x >= 310)
	{
		scr_halt();
		sprite_index = spr_susieu;
		con = 4;
	}
}
if (con == 4 && obj_mainchara.x >= 270 && global.interact == 0)
{
	sprite_index = spr_susiel;
	global.interact = 1;
	global.fe = 0;
	global.fc = 1;
	global.typer = 10;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_97_0");
	global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_98_0");
	con = 5;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 5 && instance_exists(obj_dialoguer) == false)
{
	sprite_index = spr_susier;
	image_speed = 0.2;
	global.interact = 0;
	hspeed = 3;
	con = 6;
}
if (con == 6)
{
	if (obj_mainchara.px >= 3)
		hspeed = obj_mainchara.px;
	else
		hspeed = 3;
	if (x >= 490)
	{
		scr_halt();
		sprite_index = spr_susier;
		con = 7;
	}
}
if (con == 7 && obj_mainchara.x >= 450 && global.interact == 0)
{
	sprite_index = spr_susiel;
	global.interact = 1;
	global.fe = 0;
	global.fc = 1;
	global.typer = 10;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_134_0");
	global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_135_0");
	global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_136_0");
	con = 8;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 8 && instance_exists(obj_dialoguer) == false)
{
	sprite_index = spr_susier;
	image_speed = 0.2;
	global.interact = 0;
	hspeed = 3;
	con = 9;
}
if (con == 9)
{
	if (obj_mainchara.px >= 3)
		hspeed = obj_mainchara.px;
	else
		hspeed = 3;
	if (x >= 670)
	{
		scr_halt();
		sprite_index = spr_susier;
		con = 10;
	}
}
if (con == 10 && obj_mainchara.x >= 630 && global.interact == 0)
{
	sprite_index = spr_susiel;
	global.interact = 1;
	global.fe = 0;
	global.fc = 1;
	global.typer = 10;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_180_0");
	global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_181_0");
	global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_182_0");
	global.msg[3] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_183_0");
	global.msg[4] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_184_0");
	global.msg[5] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_185_0");
	global.msg[6] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_186_0");
	global.msg[7] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_187_0");
	con = 15;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 15 && instance_exists(obj_dialoguer) == false)
{
	with (obj_mainchara)
	{
		x -= 140;
		fun = 1;
		sprite_index = spr_krisl;
		image_speed = 0.2;
		hspeed = -3;
	}
	x -= 140;
	hspeed = -3;
	sprite_index = spr_susiel;
	image_speed = 0.2;
	con = 16;
	alarm[4] = 120;
}
if (con == 17)
{
	scr_windowcaption(" ");
	sprite_index = spr_susiel_plain;
	scr_halt();
	with (obj_mainchara)
		scr_halt();
	tile_layer_hide(1000000);
	snd_free_all();
	with (obj_fallpaper)
		image_blend = c_gray;
	snd_play(snd_locker);
	con = 18;
	alarm[4] = 60;
}
if (con == 19)
{
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_237_0");
	instance_create(0, 0, obj_dialoguer);
	con = 51;
}
if (con == 51 && d_ex() == false)
{
	remxx = x;
	hspeed = -5;
	image_speed = 0.5;
	con = 52;
	alarm[4] = 20;
}
if (con == 53)
{
	scr_halt();
	remsx = x;
	remsy = y;
	with (obj_mainchara)
	{
		remsx = x;
		remsy = y;
	}
	global.fe = 9;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_266_0");
	global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_267_0");
	instance_create(0, 0, obj_dialoguer);
	con = 54;
}
if (con == 54 && d_ex() == false)
{
	pape_sfx = snd_loop(snd_paper_rumble);
	papeshake = 1;
	con = 55;
	alarm[4] = 30;
}
if (con == 56)
{
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_284_0");
	instance_create(0, 0, obj_dialoguer);
	con = 57;
}
if (con == 57 && d_ex() == false)
{
	image_speed = 0.2;
	alarm[4] = 30;
	con = 58;
}
if (con == 58)
	x += 1;
if (con == 59)
{
	scr_halt();
	con = 60;
	alarm[4] = 30;
}
if (con == 61)
{
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_312_0");
	global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_313_0");
	instance_create(0, 0, obj_dialoguer);
	con = 62;
}
if (con == 62 && d_ex() == 0)
{
	snd_stop(pape_sfx);
	papefall = 1;
	con = 69;
	with (obj_mainchara)
	{
		hspeed = 0.8;
		image_speed = 0.1;
		cutscene = 1;
	}
	hspeed = 0.8;
	image_speed = 0.1;
	alarm[4] = 80;
}
if (instance_exists(obj_dialoguer) == false && con == 70)
{
	hspeed = 0;
	__view_set(e__VW.Object, 0, -4);
	with (obj_mainchara)
		visible = 0;
	k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_kris_fall);
	with (k)
	{
		vspeed = 1;
		gravity = 0.5;
	}
	image_speed = 0;
	image_index = 0;
	vspeed = 1;
	gravity = 0.5;
	sprite_index = spr_susie_fall;
	snd_play(snd_sussurprise);
	con = 21;
	alarm[4] = 50;
}
if (con == 22)
{
	snd_play(snd_closet_fall);
	rate = 5;
	rate_alpha = 1.8;
	bgdraw = 1;
	con = 23;
	alarm[4] = 150;
}
if (con == 24)
{
	snd_play(snd_closet_impact);
	con = 25;
	alarm[4] = 80;
}
if (con == 26)
{
	global.currentsong[0] = snd_init("ocean.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.9);
	snd_volume(global.currentsong[1], 0.2, 0);
	snd_volume(global.currentsong[1], 1, 200);
	con = 29;
	alarm[4] = 260;
}
if (con == 31)
{
	global.plot = 10;
	scr_become_dark();
	room_goto(room_dark1);
}
if (con == 30)
{
	snd_free(global.currentsong[0]);
	con = 31;
}
