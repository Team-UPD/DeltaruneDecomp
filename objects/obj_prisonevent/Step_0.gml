if (con == 1)
{
	doorblock = instance_create(640, 360, obj_soliddark);
	with (doorblock)
		image_xscale = 2;
	snd_play(snd_locker);
	instance_create(0, 0, obj_shake);
	__view_set(e__VW.XView, 0, 440);
	with (obj_mainchara)
	{
		cutscene = 1;
		visible = 0;
	}
	k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisb_defeat);
	r = scr_dark_marker(520, 160, spr_ralsei_fell);
	with (r)
		image_index = 2;
	irondoor = scr_dark_marker(640, 280, spr_irondoor);
	with (irondoor)
		scr_depth();
	diamond = scr_dark_marker(640, 360, spr_diamond_overworld);
	with (diamond)
		depth = 100;
	con = 2;
	alarm[4] = 60;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	global.typer = 6;
	global.fc = 0;
	with (diamond)
		image_speed = 0.25;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_29_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_30_0");
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_31_0");
	con = 4;
	d = instance_create(0, 0, obj_dialoguer);
	d.side = 0;
}
if (con == 4 && !d_ex())
{
	with (diamond)
	{
		image_speed = 0.5;
		vspeed = 5;
	}
	con = 5;
	kx = k.x;
	ky = k.y;
	rx = r.x;
	ry = r.y;
	moveamt = 0.5;
	alarm[4] = 30;
}
if (con == 6)
{
	moveamt += 0.1;
	k.x = kx + random(moveamt);
	k.y = ky + random(moveamt);
	r.x = rx + random(moveamt);
	r.y = ry + random(moveamt);
	if (moveamt >= 3)
	{
		r.x = rx;
		r.y = ry;
		k.x = kx;
		k.y = ky;
		with (k)
			sprite_index = spr_krisd_dark;
		with (r)
			sprite_index = spr_ralseid;
		snd_play(snd_noise);
		con = 7;
		alarm[4] = 20;
	}
}
if (con == 8)
{
	with (r)
		sprite_index = spr_ralseir;
	with (k)
		sprite_index = spr_krisl_dark;
	global.fc = 2;
	global.fe = 3;
	global.typer = 31;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_82_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_83_0");
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_84_0");
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_85_0");
	global.msg[4] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_86_0");
	con = 8.1;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 8.1 && !d_ex())
{
	with (r)
		sprite_index = spr_ralseid;
	exc = instance_create(r.x + 20, r.y - 20, obj_excblcon);
	con = 7.2;
	alarm[4] = 30;
}
if (con == 8.2)
{
	with (exc)
		instance_destroy();
	with (r)
		sprite_index = spr_ralseir;
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_104_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_105_0");
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_106_0");
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_107_0");
	instance_create(0, 0, obj_dialoguer);
	con = 9;
}
if (con == 9 && !d_ex())
{
	rnpc = instance_create(r.x, r.y, obj_npc_facing);
	with (rnpc)
	{
		y += sprite_height;
		sprite_index = spr_ralseid;
		dtsprite = spr_ralseid;
		utsprite = spr_ralseiu;
		rtsprite = spr_ralseir;
		ltsprite = spr_ralseil;
		scr_depth();
	}
	with (r)
		instance_destroy();
	with (k)
		instance_destroy();
	global.facing = 0;
	with (obj_mainchara)
		visible = 1;
	global.interact = 0;
	con = 10;
}
if (con == 15 && !d_ex())
{
	remfacing = global.facing;
	global.interact = 1;
	global.fe = 1;
	global.fc = 2;
	global.typer = 31;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_140_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_141_0");
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_142_0");
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_143_0");
	global.msg[4] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_144_0");
	global.msg[5] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_145_0");
	scr_susface(6, 7);
	global.msg[7] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_147_0");
	global.msg[8] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_148_0");
	instance_create(0, 0, obj_dialoguer);
	con = 16;
}
if (con == 16)
{
	global.facing = remfacing;
	global.interact = 1;
}
if (con == 16 && !d_ex())
{
	r = scr_dark_marker(rnpc.x, rnpc.y, spr_ralsei_shock_overworld);
	with (r)
		scr_depth();
	with (rnpc)
		instance_destroy();
	global.facing = 3;
	global.interact = 1;
	exc = instance_create(r.x + 20, r.y - 20, obj_excblcon);
	con = 17;
	alarm[4] = 30;
}
if (con == 18)
{
	with (exc)
		instance_destroy();
	with (r)
		sprite_index = spr_ralseil;
	global.fc = 2;
	global.fe = 3;
	global.typer = 31;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_179_0");
	scr_susface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_181_0");
	con = 19;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 19 && !d_ex())
{
	irondoor2 = scr_dark_marker(200, 520, spr_irondoor);
	with (irondoor2)
		scr_depth();
	scr_pan(-4, 4, 30);
	s = scr_dark_marker(320, 300, spr_susier_dark);
	with (s)
		scr_depth();
	con = 20;
	alarm[4] = 30;
}
if (con == 21)
{
	global.fc = 1;
	global.fe = 2;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_207_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_208_0");
	scr_ralface(2, 3);
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_210_0");
	con = 22;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 22 && !d_ex())
{
	with (s)
		sprite_index = spr_susiel_dark_unhappy;
	scr_pan(-4, 0, 70);
	con = 23;
	alarm[4] = 120;
}
if (con == 24)
{
	with (s)
		sprite_index = spr_susier_dark;
	global.fc = 1;
	global.fe = 0;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_229_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_232_0");
	scr_ralface(2, 8);
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_234_0");
	con = 25;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 25 && !d_ex())
{
	with (s)
		sprite_index = spr_susieu_dark;
	con = 26;
	alarm[4] = 80;
}
if (con == 27)
{
	with (s)
		sprite_index = spr_susier_dark;
	global.fc = 1;
	global.fe = 5;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_252_0");
	global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_253_0");
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_254_0");
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_255_0");
	scr_ralface(4, 6);
	global.msg[5] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_257_0");
	scr_susface(6, 0);
	global.msg[7] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_259_0");
	global.msg[8] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_260_0");
	global.msg[9] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_261_0");
	global.msg[10] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_262_0");
	scr_ralface(11, "6");
	global.msg[12] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_264_0");
	con = 200;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 200 && !d_ex())
{
	with (s)
		sprite_index = spr_susieu_dark;
	global.interact = 1;
	global.msc = 290;
	global.typer = 6;
	global.fc = 0;
	scr_text(global.msc);
	instance_create(0, 0, obj_dialoguer);
	con = 201;
	tried += 1;
}
if (con == 201 && !d_ex())
{
	if (obj_suitspuzz.won == 0)
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 6;
		con = 200;
		if (obj_suitspuzz.suit[0] == 3 && obj_suitspuzz.suit[1] == 4 && obj_suitspuzz.suit[2] == 3)
		{
			if (wcon == 1)
			{
				global.fe = 2;
				global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_299_0");
				global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_300_0");
				global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_301_0");
				instance_create(0, 0, obj_dialoguer);
				wcon = 2;
			}
			if (wcon == 0)
			{
				global.fe = 2;
				global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_309_0");
				global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_310_0");
				global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_311_0");
				instance_create(0, 0, obj_dialoguer);
				wcon = 1;
			}
		}
		if (obj_suitspuzz.reset == 1 && pcon == 0)
		{
			pcon = 1;
			global.fe = 0;
			global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_322_0");
			instance_create(0, 0, obj_dialoguer);
		}
		if (obj_suitspuzz.reset == 2 && pcon == 1)
		{
			pcon = 2;
			global.fe = 0;
			global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_329_0");
			instance_create(0, 0, obj_dialoguer);
		}
		if (obj_suitspuzz.reset == 3 && pcon == 2)
		{
			pcon = 3;
			global.fe = 6;
			global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_336_0");
			instance_create(0, 0, obj_dialoguer);
		}
		if (obj_suitspuzz.reset == 4 && pcon == 3)
		{
			pcon = 4;
			global.fe = 9;
			global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_343_0");
			global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_344_0");
			global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_345_0");
			instance_create(0, 0, obj_dialoguer);
		}
		if (obj_suitspuzz.swap == 1 && obj_suitspuzz.suit[0] == 0 && scon == 0 && pcon == 0)
		{
			scon = 1;
			global.fe = 0;
			global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_354_0");
			instance_create(0, 0, obj_dialoguer);
		}
	}
	else
	{
		with (irondoor2)
			instance_destroy();
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
		con = 202;
		alarm[4] = 30;
	}
}
if (con == 203)
{
	global.typer = 30;
	global.fe = 2;
	global.fc = 1;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_376_0");
	scr_ralface(1, 8);
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_378_0");
	scr_susface(3, 1);
	global.msg[4] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_380_0");
	con = 204;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 204 && !d_ex())
{
	with (s)
	{
		sprite_index = spr_susiel_dark;
		image_speed = 0.25;
		hspeed = -6;
	}
	con = 205;
	alarm[4] = 16;
}
if (con == 206)
{
	with (s)
	{
		scr_halt();
		sprite_index = spr_susied_dark;
		image_speed = 0.25;
		vspeed = 6;
	}
	con = 207;
	alarm[4] = 60;
}
if (con == 208)
{
	scr_pan(6, -2, 60);
	con = 209;
	alarm[4] = 90;
}
if (con == 210)
{
	with (r)
		sprite_index = spr_ralseid;
	global.msc = 305;
	global.fe = 6;
	global.fc = 2;
	global.typer = 31;
	scr_text(global.msc);
	instance_create(0, 0, obj_dialoguer);
	con = 228;
}
if (con == 228 && !d_ex())
{
	fade = instance_create(0, 0, obj_fadeout);
	with (fade)
		fadespeed = 0.02;
	con = 229;
	alarm[4] = 70;
}
if (con == 230)
{
	scr_losechar();
	global.char[0] = 2;
	global.entrance = 0;
	global.interact = 3;
	global.plot = 152;
	pers = instance_create(0, 0, obj_persistentfadein);
	room_goto(room_cc_prisonlancer);
	con = 231;
}
if (con == 300)
{
	__view_set(e__VW.XView, 0, 440);
	with (obj_mainchara)
	{
		cutscene = 1;
		visible = 0;
	}
	obj_mainchara.x = 680;
	obj_mainchara.y = 160;
	k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisd_dark);
	r = scr_dark_marker(640, 150, spr_ralseir);
	s = scr_dark_marker(660, 500, spr_susieu_dark);
	with (r)
		image_index = 2;
	with (r)
		scr_depth();
	with (k)
		scr_depth();
	irondoor = scr_dark_marker(640, 280, spr_irondoor);
	with (irondoor)
		scr_depth();
	con = 301;
	alarm[4] = 20;
}
if (con == 301)
	global.interact = 1;
if (con == 302)
{
	global.fc = 2;
	global.typer = 31;
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_481_0");
	instance_create(0, 0, obj_dialoguer);
	con = 303;
}
if (con == 303 && !d_ex())
{
	with (irondoor)
		instance_destroy();
	snd_play(snd_locker);
	with (r)
		sprite_index = spr_ralseid;
	with (k)
		sprite_index = spr_krisd_dark;
	exc = instance_create(r.x + 25, y - 40, obj_excblcon);
	con = 304;
	alarm[4] = 30;
}
if (con == 305)
{
	with (exc)
		instance_destroy();
	with (s)
	{
		vspeed = -6;
		image_speed = 0.25;
	}
	con = 306;
	alarm[4] = 50;
}
if (con == 307)
{
	with (s)
		scr_halt();
	con = 308;
	alarm[4] = 30;
}
if (con == 309)
{
	global.fc = 1;
	global.fe = 0;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_521_0");
	scr_ralface(1, 0);
	global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_523_0");
	global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_524_0");
	scr_susface(4, 0);
	global.msg[5] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_526_0");
	d = instance_create(0, 0, obj_dialoguer);
	con = 310;
}
if (con == 310 && !d_ex())
{
	with (s)
		sprite_index = spr_susied_dark_unhappy;
	con = 311;
	alarm[4] = 30;
}
if (con == 312)
{
	global.fc = 0;
	global.typer = 6;
	global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_543_0");
	instance_create(0, 0, obj_dialoguer);
	con = 313;
}
if (con == 313 && !d_ex())
{
	with (s)
	{
		image_speed = 0.25;
		vspeed = 6;
	}
	with (r)
	{
		image_speed = 0.25;
		vspeed = 6;
	}
	with (k)
	{
		image_speed = 0.25;
		vspeed = 6;
	}
	con = 314;
	alarm[4] = 30;
}
if (con == 315)
{
	instance_create(0, 0, obj_fadeout);
	con = 316;
	alarm[4] = 30;
}
if (con == 317)
{
	global.plot = 156;
	scr_losechar();
	global.char[0] = 1;
	scr_getchar(2);
	scr_getchar(3);
	global.charauto[0] = 0;
	global.charauto[1] = 0;
	global.charauto[2] = 0;
	global.charauto[3] = 0;
	con = 318;
	global.facing = 0;
	global.entrance = 1;
	global.interact = 3;
	instance_create(0, 0, obj_persistentfadein);
	room_goto(room_cc_prisonlancer);
}
