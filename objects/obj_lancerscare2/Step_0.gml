if (mcon == 2)
	mcon = 3;
if (mcon == 1)
{
	global.currentsong[0] = snd_init("lancer_susie.ogg");
	mcon = 2;
}
if (con == 1)
{
	snd_free_all();
	mm = 0.5;
	image_blend = merge_color(c_white, c_black, mm);
	global.interact = 1;
	sus = scr_dark_marker(obj_mainchara.x - 100, global.cinstance[1].y, spr_susier_dark);
	ral = scr_dark_marker(obj_mainchara.x - 50, global.cinstance[0].y, spr_ralseir);
	k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark);
	r = ral;
	s = sus;
	with (obj_caterpillarchara)
		visible = 0;
	with (obj_mainchara)
		visible = 0;
	with (obj_marker)
	{
		hspeed = 6;
		image_speed = 0.2;
	}
	con = 2;
	alarm[4] = 30;
	mcon = 1;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	global.facing = 1;
	con = 4;
	with (obj_marker)
		scr_halt();
	obj_mainchara.x = k.x;
	obj_mainchara.visible = 1;
	with (k)
		instance_destroy();
	alarm[4] = 30;
}
if (con == 5)
{
	global.currentsong[1] = mus_loop(global.currentsong[0]);
	global.fc = 5;
	global.fe = 1;
	global.typer = 32;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_60_0");
	global.msg[1] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_61_0");
	global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_62_0");
	con = 6;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 6 && d_ex() == 0)
{
	sprite_index = spr_lancer_dt;
	con = 7;
	alarm[4] = 25;
}
if (con == 8)
{
	sprite_index = spr_lancer_lt;
	con = 9;
	alarm[4] = 25;
}
if (con == 10)
{
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_84_0");
	global.msg[1] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_85_0");
	global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_86_0");
	instance_create(0, 0, obj_dialoguer);
	con = 11;
}
if (con == 11 && d_ex() == 0)
{
	sprite_index = spr_lancer_lt_laugh;
	image_speed = 0.5;
	bucket = scr_dark_marker(x + 20, y, spr_lancer_bucket);
	bucket.hspeed = -4;
	bucket.depth = depth + 10;
	snd_free_all();
	snd_play(snd_lancerlaugh);
	snd_play(snd_locker);
	lightning = scr_dark_marker(200, 0, spr_crappylightning);
	lightning.image_alpha = 3;
	con = 12;
	ctimer = 0;
}
if (con == 12)
{
	if (mm > 0)
		mm -= 0.05;
	else
		mm = 0;
	image_blend = merge_color(c_white, c_black, mm);
	with (lightning)
		image_alpha -= 0.1;
	ctimer += 1;
	if (ctimer >= 20)
		bucket.hspeed = 0;
	if (ctimer >= 60 && d_ex() == 0)
	{
		sprite_index = spr_lancer_lt;
		image_speed = 0;
		image_index = 0;
		con = 13;
		alarm[4] = 60;
	}
}
if (con == 15)
{
	global.currentsong[1] = mus_loop(global.currentsong[0]);
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_137_0");
	scr_susface(1, 7);
	global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_139_0");
	scr_lanface(3, 2);
	global.msg[4] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_141_0");
	global.msg[5] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_142_0");
	instance_create(0, 0, obj_dialoguer);
	con = 16;
}
if (con == 14)
{
	con = 15;
	global.currentsong[0] = snd_init("lancer.ogg");
}
if (con == 16 && d_ex() == 0)
{
	with (sus)
		sprite_index = spr_susiel_dark;
	con = 17;
	alarm[4] = 40;
}
if (con == 18)
{
	with (sus)
	{
		sprite_index = spr_susier_dark;
		hspeed = 6;
		image_speed = 0.25;
	}
	con = 19;
	alarm[4] = 30;
}
if (con == 20)
{
	with (sus)
		scr_halt();
	global.fc = 1;
	global.typer = 30;
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_181_0");
	scr_lanface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_183_0");
	scr_susface(3, 2);
	global.msg[4] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_185_0");
	global.msg[5] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_186_0");
	global.msg[6] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_187_0");
	global.msg[7] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_188_0");
	global.msg[8] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_189_0");
	scr_lanface(9, 2);
	global.msg[10] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_191_0");
	scr_susface(11, 0);
	global.msg[12] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_193_0");
	scr_lanface(13, 6);
	global.msg[14] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_195_0");
	global.msg[15] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_196_0");
	scr_susface(16, 2);
	global.msg[17] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_198_0");
	con = 25;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 25)
{
	if (instance_exists(obj_writer))
	{
		if (obj_writer.msgno == 4)
		{
			with (sus)
				sprite_index = spr_susied_dark;
		}
		if (obj_writer.msgno == 5)
		{
			with (sus)
				sprite_index = spr_susier_dark;
		}
		if (obj_writer.msgno == 6)
		{
			with (sus)
				sprite_index = spr_susied_dark;
		}
		if (obj_writer.msgno == 8)
		{
			with (sus)
				sprite_index = spr_susier_dark;
		}
	}
}
if (con == 25 && d_ex() == 0)
{
	with (sus)
		sprite_index = spr_susied_dark;
	con = 26;
	alarm[4] = 30;
}
if (con == 27)
{
	with (sus)
		sprite_index = spr_susier_dark;
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_226_0");
	scr_lanface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_228_0");
	global.msg[3] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_229_0");
	global.msg[4] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_231_0");
	con = 60;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 60 && d_ex() == 0)
{
	con = 61;
	alarm[4] = 30;
}
if (con == 62)
{
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_245_0");
	global.msg[1] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_246_0");
	scr_ralface(2, 8);
	global.msg[3] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_248_0");
	scr_susface(4, 0);
	global.msg[5] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_250_0");
	scr_lanface(6, 1);
	global.msg[7] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_252_0");
	con = 63;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 63 && d_ex() == 0)
{
	fd = instance_create(0, 0, obj_fadeout);
	con = 64;
	alarm[4] = 40;
}
if (con == 65)
{
	snd_play(snd_noise);
	obj_mainchara.x = bucket.x - 50;
	r.x = bucket.x - 100;
	s.x = bucket.x - 150;
	con = 66;
	alarm[4] = 20;
}
if (con == 66)
{
	with (fd)
		instance_destroy();
	fi = instance_create(0, 0, obj_fadein);
	con = 67;
	alarm[4] = 30;
}
if (con == 68)
{
	global.fe = 0;
	global.msc = 175;
	scr_text(global.msc);
	instance_create(0, 0, obj_dialoguer);
	con = 28;
}
if (con == 28 && d_ex() == 0)
{
	mus_volume(global.currentsong[1], 0, 30);
	hspeed = 16;
	image_speed = 0.5;
	with (bucket)
		hspeed = 16;
	snd_play(snd_lancerlaugh);
	sprite_index = spr_lancer_lt_laugh;
	con = 36;
	alarm[4] = 60;
}
if (con == 30)
{
	snd_free(global.currentsong[1]);
	global.fe = 0;
	global.fc = 1;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_311_0");
	con = 31;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 31 && !d_ex())
{
	with (sus)
	{
		sprite_index = spr_susiel_dark;
		hspeed = -6;
		image_speed = 0.25;
	}
	con = 32;
	alarm[4] = 30;
}
if (con == 33)
{
	with (sus)
	{
		sprite_index = spr_susier_dark;
		scr_halt();
	}
	con = 34;
	alarm[4] = 30;
}
if (con == 35)
{
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_343_0");
	instance_create(0, 0, obj_dialoguer);
	con = 37;
}
if (con == 37 && !d_ex())
{
	with (obj_savepoint)
		visible = 1;
	s = sus;
	r = ral;
	snd_free_all();
	scr_unmarkify_caterpillar();
	scr_caterpillar_facing(1);
	global.facing = 1;
	con = 38;
	global.interact = 0;
	instance_destroy();
	if (global.plot <= 55)
		global.plot = 55;
	scr_tempsave();
}
