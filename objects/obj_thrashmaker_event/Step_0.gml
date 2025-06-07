if (con == 1)
{
	snd_free_all();
	y = 200;
	global.interact = 1;
	ral = scr_dark_marker(-50, global.cinstance[0].y, spr_ralseir);
	k = scr_dark_marker(0, obj_mainchara.y, spr_krisr_dark);
	c[0] = k;
	c[1] = ral;
	with (obj_caterpillarchara)
		visible = 0;
	with (obj_mainchara)
		visible = 0;
	with (ral)
	{
		hspeed = 4;
		image_speed = 0.2;
	}
	with (k)
	{
		hspeed = 4;
		image_speed = 0.2;
	}
	con = 2;
	alarm[4] = 30;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	with (obj_marker)
		scr_halt();
	con = 4;
	alarm[4] = 20;
}
if (con == 5)
{
	global.fc = 0;
	global.fe = 0;
	global.typer = 32;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_57_0");
	scr_ralface(1, 3);
	global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_59_0");
	instance_create(0, 0, obj_dialoguer);
	con = 5.1;
}
if (con == 5.1 && !d_ex())
{
	global.currentsong[0] = snd_init("lancer.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1);
	sprite_index = spr_lancer_lt_mustache;
	global.fc = 5;
	global.fe = 13;
	global.typer = 32;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_74_0");
	scr_ralface(1, 1);
	global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_76_0");
	scr_lanface(3, "E");
	global.msg[4] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_78_0");
	instance_create(0, 0, obj_dialoguer);
	con = 6;
}
if (con == 6 && !d_ex())
{
	snd_play(snd_lancerlaugh);
	sprite_index = spr_lancer_lt_laugh_mustache;
	image_speed = 0.25;
	con = 7;
	alarm[4] = 50;
}
if (con == 8)
{
	sprite_index = spr_lancer_lt_mustache;
	image_index = 0;
	image_speed = 0;
	global.fc = 2;
	global.typer = 31;
	global.fe = 11;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_103_0");
	scr_lanface(1, "D");
	global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_105_0");
	scr_ralface(3, "C");
	global.msg[4] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_107_0");
	scr_lanface(5, "E");
	global.msg[6] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_109_0");
	scr_ralface(7, 1);
	global.msg[8] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_111_0");
	global.msg[9] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_112_0");
	global.msg[10] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_113_0");
	scr_lanface(11, "E");
	global.msg[12] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_115_0");
	instance_create(0, 0, obj_dialoguer);
	con = 8.1;
}
if (con == 8.1 && !d_ex())
{
	easel = scr_dark_marker(280, -80, spr_thrashdesign);
	with (easel)
	{
		vspeed = 3;
		gravity = 0.5;
		depth = 700000;
	}
	snd_play(snd_spearrise);
	con = 8.2;
}
if (con == 8.2)
{
	if (easel.y >= 155)
	{
		with (easel)
		{
			speed = 0;
			gravity = 0;
			y = 160;
		}
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
		con = 8.3;
		alarm[4] = 30;
	}
}
if (con == 9.3 && !d_ex())
{
	with (k)
	{
		hspeed = 8;
		sprite_index = spr_krisr_dark;
		image_speed = 0.25;
	}
	with (ral)
	{
		hspeed = 8;
		sprite_index = spr_ralseir;
		image_speed = 0.25;
	}
	hspeed = -1;
	con = 10;
	alarm[4] = 26;
}
if (con == 11)
{
	with (k)
		scr_halt();
	with (ral)
		scr_halt();
	with (k)
		sprite_index = spr_krisu_dark;
	with (ral)
		sprite_index = spr_ralseiu;
	scr_halt();
	con = 12;
	alarm[4] = 30;
}
if (con == 13)
{
	global.typer = 32;
	global.fc = 5;
	global.fe = 14;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_187_0");
	global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_188_0");
	instance_create(0, 0, obj_dialoguer);
	con = 23;
}
if (con == 23 && !d_ex())
{
	snd_free_all();
	with (ral)
		scr_halt();
	with (k)
		scr_halt();
	con = 24;
	alarm[4] = 5;
}
if (con == 25)
{
	global.currentsong[0] = snd_init("thrashmachine.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1);
	instance_create(0, 0, obj_thrashcontroller);
	con = 30;
}
if (con == 30 && !instance_exists(obj_thrashcontroller))
{
	snd_free_all();
	with (ral)
		sprite_index = spr_ralseir;
	with (k)
		sprite_index = spr_krisr_dark;
	global.typer = 32;
	global.fc = 5;
	global.fe = 14;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_223_0");
	scr_ralface(1, 8);
	global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_225_0");
	instance_create(0, 0, obj_dialoguer);
	con = 31;
}
if (con == 31 && !d_ex())
{
	snd_play(snd_noise);
	with (bush)
		image_index = 1;
	s = scr_dark_marker(bush.x + 88, bush.y + 44, spr_susied_dark);
	with (s)
	{
		vspeed = 8;
		image_speed = 0.25;
		scr_depth();
	}
	bush_debris_obj = scr_dark_marker(s.x, s.y, spr_susiebushdebris);
	bush_debris_obj.depth = s.depth - 20;
	bush_debris = 1;
	hspeed = 8;
	con = 32;
}
if (bush_debris == 1)
{
	if (instance_exists(s) && instance_exists(bush_debris_obj))
	{
		bush_debris_obj.x = s.x;
		bush_debris_obj.y = s.y;
		bush_debris_obj.depth = s.depth - 20;
	}
}
if (con == 32)
{
	move_finished = 0;
	if (s.y >= 185)
	{
		with (s)
		{
			scr_halt();
			y = 185;
			sprite_index = spr_susiel_dark;
		}
		move_finished += 1;
	}
	if (x >= 460)
	{
		x = 460;
		speed = 0;
		move_finished += 1;
	}
	if (move_finished == 2)
		con = 35;
}
if (con == 33)
{
	with (s)
		scr_halt();
	con = 34;
	alarm[4] = 10;
}
if (con == 35)
{
	global.currentsong[0] = snd_init("lancer.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1);
	global.fc = 1;
	global.fe = 2;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_299_0");
	global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_300_0");
	instance_create(0, 0, obj_dialoguer);
	con = 39;
}
if (con == 39 && !d_ex())
{
	with (s)
	{
		scr_depth();
		hspeed = -8;
		image_speed = 0.334;
	}
	with (k)
		hspeed = -8;
	with (ral)
		hspeed = -8;
	con = 40;
	alarm[4] = 12;
}
if (con == 41)
{
	with (s)
		scr_halt();
	with (k)
		scr_halt();
	with (ral)
		scr_halt();
	scr_halt();
	s.sprite_index = spr_susieu_dark;
	con = 123;
	alarm[4] = 60;
}
if (con == 124)
{
	type = -1;
	topstat = -1;
	topstatlevel = 0;
	for (i = 0; i < 6; i += 1)
	{
		if (stat[i] == topstatlevel && topstatlevel >= 2)
			type = 7;
		if (stat[i] > topstatlevel)
		{
			topstat = i;
			topstatlevel = stat[i];
		}
	}
	type = topstat;
	if (type == 7)
		type = -1;
	if (topstatlevel == 0)
		type = 6;
	con = 128;
	global.typer = 30;
	global.fc = 1;
	global.fe = 4;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_359_0");
	if (type == -1)
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_363_0");
	if (type == 0)
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_367_0");
	if (type == 1)
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_371_0");
	if (type == 2)
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_375_0");
	if (type == 3)
	{
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_379_0");
		global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_380_0");
		global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_381_0");
		global.msg[3] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_382_0");
		scr_ralface(4, 6);
		global.msg[5] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_384_0");
	}
	if (type == 4)
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_388_0");
	if (type == 5)
	{
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_392_0");
		global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_393_0");
	}
	if (type == 6)
	{
		with (s)
			image_speed = 0;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_401_0");
		global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_402_0");
		global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_403_0");
		global.msg[3] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_404_0");
		con = 126;
	}
	instance_create(0, 0, obj_dialoguer);
}
if (con == 126 && !d_ex())
{
	with (s)
		scr_halt();
	with (s)
		sprite_index = spr_susieu_dark;
	con = 127;
	alarm[4] = 60;
}
if (con == 128 && !d_ex())
{
	with (s)
		sprite_index = spr_susier_dark;
	global.typer = 30;
	global.fc = 1;
	global.fe = 2;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_427_0");
	scr_lanface(1, "D");
	global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_429_0");
	global.msg[3] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_430_0");
	if (type == 6)
	{
		with (s)
			sprite_index = spr_susiel_dark_unhappy;
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_435_0");
		scr_lanface(1, "D");
		global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_437_0");
		scr_susface(3, 2);
		global.msg[4] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_439_0");
		scr_lanface(5, "E");
		global.msg[6] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_441_0");
		global.msg[7] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_442_0");
	}
	instance_create(0, 0, obj_dialoguer);
	con = 49;
}
if (con == 49 && !d_ex())
{
	with (s)
	{
		sprite_index = spr_susier_dark;
		hspeed = 12;
		image_speed = 0.334;
	}
	with (easel)
		hspeed = 12;
	hspeed = 12;
	con = 50;
	snd_volume(global.currentsong[1], 0, 30);
	alarm[4] = 60;
}
if (con == 51)
{
	snd_free_all();
	global.typer = 31;
	global.fe = 0;
	global.fc = 2;
	global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_465_0");
	instance_create(0, 0, obj_dialoguer);
	con = 52;
}
if (con == 52 && !d_ex())
{
	with (ral)
		sprite_index = spr_ralseir;
	with (k)
		sprite_index = spr_krisr_dark;
	con = 54;
	alarm[4] = 5;
}
if (con == 55)
{
	r = ral;
	obj_mainchara.x = k.x;
	obj_mainchara.y = k.y;
	with (obj_mainchara)
		visible = 1;
	scr_unmarkify_caterpillar();
	scr_caterpillar_facing(1);
	global.facing = 0;
	with (ral)
		instance_destroy();
	with (k)
		instance_destroy();
	with (s)
		instance_destroy();
	event_user(1);
	con = 56;
	global.flag[226] = 1;
	global.interact = 0;
	scr_tempsave();
	instance_destroy();
}
