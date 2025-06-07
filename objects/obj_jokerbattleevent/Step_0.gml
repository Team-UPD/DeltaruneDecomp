if (con == 1)
{
	scr_encountersetup(25);
	x = global.monstermakex[0];
	y = global.monstermakey[0] + 100;
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	for (i = 0; i < 3; i += 1)
	{
		c[i] = scr_dark_marker(global.heromakex[i] - 100, global.heromakey[i], spr_krisr_dark);
		with (c[i])
		{
			scr_depth();
			hspeed = 2;
			image_speed = 0.2;
		}
		if (quick == 1)
		{
			with (c[i])
			{
				x += 1;
				scr_depth();
				hspeed = 5;
				image_speed = 0.334;
			}
		}
	}
	k = c[0];
	s = c[1];
	with (s)
		sprite_index = spr_susier_dark;
	r = c[2];
	with (r)
		sprite_index = spr_ralseir;
	con = 2;
	alarm[4] = 83;
	if (quick == 1)
		alarm[4] = 33;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	for (i = 0; i < 3; i += 1)
	{
		with (c[i])
			scr_halt();
	}
	con = 4;
	alarm[4] = 20;
	if (quick == 1)
	{
		con = 6;
		alarm[4] = -10;
	}
}
if (con == 5)
{
	snd_play(snd_joker_laugh1);
	global.typer = 35;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_59_0");
	global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_60_0");
	scr_ralface(2, 0);
	global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_62_0");
	scr_noface(4);
	global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_64_0");
	instance_create(0, 0, obj_dialoguer);
	con = 6;
}
if (con == 6 && !d_ex())
{
	image_speed = 0.5;
	snd_play(snd_joker_laugh0);
	con = 9;
	alarm[4] = 10;
}
if (con == 10)
{
	snd_play(snd_rudebuster_swing);
	bulcon = 1;
	smax = 2;
	con = 11;
	alarm[4] = 10;
}
if (bulcon == 1)
{
	for (i = 0; i < smax; i += 1)
	{
		sbul[i] = scr_dark_marker(s.x + 70, (-i * 100) - 40, spr_joker_scythebody);
		with (sbul[i])
			vspeed = 24;
		with (sbul[i])
			image_angle = random(360);
	}
	bulcon = 2;
}
if (bulcon == 2)
{
	below = 0;
	for (i = 0; i < smax; i += 1)
	{
		with (sbul[i])
		{
			image_angle += 24;
			aft = scr_afterimage();
			with (aft)
				image_alpha = 0.5;
		}
		if (sbul[i].y >= (__view_get(e__VW.YView, 0) + 580))
			below += 1;
	}
	if (below >= smax)
		bulcon = 3;
}
if (con == 12)
{
	with (s)
		sprite_index = spr_susie_shock_r;
	with (r)
		sprite_index = spr_ralsei_shock_overworld;
	for (i = 0; i < 3; i += 1)
	{
		with (c[i])
		{
			hspeed = -10;
			friction = 1;
		}
	}
	con = 13;
	alarm[4] = 45;
	if (quick == 1)
	{
		con = 22;
		alarm[4] = 40;
		snd_free_all();
	}
}
if (con == 14)
{
	image_speed = 0;
	with (s)
		sprite_index = spr_susier_dark_unhappy;
	with (r)
		sprite_index = spr_ralseir;
	global.typer = 30;
	global.fe = 0;
	global.typer = 35;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_140_0");
	scr_susface(1, 0);
	global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_142_0");
	global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_143_0");
	instance_create(0, 0, obj_dialoguer);
	con = 15.1;
}
if (con == 15.1 && !d_ex())
{
	with (s)
		sprite_index = spr_susieb_attack;
	with (r)
		sprite_index = spr_ralseib_attack;
	with (k)
		sprite_index = spr_krisb_attack;
	for (i = 0; i < 3; i += 1)
	{
		c[i].image_index = 0;
		c[i].image_speed = 0.25;
	}
	con = 16;
	alarm[4] = 60;
	snd_play(snd_laz_c);
}
if (con == 16)
{
	if (s.image_index >= 5)
		s.image_speed = 0;
	if (k.image_index >= 6)
		k.image_speed = 0;
	if (r.image_index >= 5)
		r.image_speed = 0;
}
if (con == 17)
{
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_175_0");
	instance_create(0, 0, obj_dialoguer);
	con = 18;
}
if (con == 18 && !d_ex())
{
	jlaugh = snd_loop(snd_joker_laugh0);
	image_speed = 0.25;
	con = 19;
	alarm[4] = 15;
}
if (con == 20)
{
	global.typer = 35;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_192_0");
	global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_193_0");
	con = 21;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 21 && !d_ex())
{
	snd_free_all();
	snd_stop(jlaugh);
	con = 22;
	alarm[4] = 1;
}
if (con == 23)
{
	obj_mainchara.x = k.x;
	obj_mainchara.y = k.y;
	global.cinstance[0].x = s.x;
	global.cinstance[0].y = s.y;
	global.cinstance[1].x = r.x;
	global.cinstance[1].y = r.y;
	with (global.cinstance[0])
		scr_caterpillar_interpolate();
	with (global.cinstance[1])
		scr_caterpillar_interpolate();
	scr_caterpillar_facing(1);
	with (obj_mainchara)
		visible = 1;
	with (global.cinstance[0])
		visible = 1;
	with (global.cinstance[1])
		visible = 1;
	with (k)
		visible = 0;
	with (r)
		visible = 0;
	with (s)
		visible = 0;
	global.flag[9] = 1;
	global.batmusic[0] = snd_init("joker.ogg");
	global.encounterno = 25;
	global.specialbattle = 3;
	instance_create(0, 0, obj_encounterbasic);
	con = 25;
	bultimer = 0;
	bulcon = 10;
}
if (bulcon == 10)
{
	image_speed = 0.5;
	bultimer += 1;
	aft = scr_afterimage();
	with (aft)
		image_alpha = 0.5;
	y -= 16;
	x += 5;
	bultimer += 1;
	if (bultimer >= 10)
		bulcon = 11;
}
if (con == 25)
{
	if (instance_exists(obj_battlecontroller))
	{
		visible = 0;
		with (obj_jokerbg_triangle_real)
			on = 1;
		if (global.flag[8] == 1)
		{
			with (obj_jokerbg_triangle_real)
				on = 0;
		}
		con = 28;
	}
}
if (con == 28)
{
	if (!instance_exists(obj_battlecontroller))
	{
		if (global.flag[241] != 6)
			global.flag[241] = 7;
		con = 29;
		alarm[4] = 30;
	}
}
if (con == 30)
{
	with (obj_caterpillarchara)
	{
		if (lsprite == spr_susier_dark)
		{
			lsprite = spr_susier_dark_unhappy;
			sprite_index = spr_susier_dark_unhappy;
		}
	}
	global.currentsong[0] = snd_init("prejoker.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 0.75);
	with (obj_joker_body)
	{
		fade = 1;
		dancelv = 0;
		floatsinerspeed = 1;
		condition = 0;
	}
	if (!instance_exists(obj_battlecontroller))
	{
		global.typer = 35;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_294_0");
		global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_295_0");
		global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_296_0");
		global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_297_0");
		global.msg[4] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_298_0");
		global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_299_0");
		global.msg[6] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_300_0");
		global.msg[7] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_301_0");
		global.msg[8] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_302_0");
		global.msg[9] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_303_0");
		if (global.flag[241] == 7)
		{
			global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_307_0");
			global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_308_0");
			global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_309_0");
			global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_310_0");
			global.msg[4] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_311_0");
			global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_312_0");
			global.msg[6] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_313_0");
			global.msg[7] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_314_0");
			global.msg[8] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_315_0");
			global.msg[9] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_316_0");
		}
		con = 31;
		instance_create(0, 0, obj_dialoguer);
	}
}
if (con == 31 && !d_ex())
{
	with (obj_joker_body)
	{
		condition = 5;
		timer = 0;
	}
	con = 32;
	alarm[4] = 60;
}
if (con == 33)
{
	con = 34;
	snd_play(snd_joker_laugh0);
	global.typer = 6;
	global.fc = 0;
	scr_keyitemget(13);
	global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_362_0");
	instance_create(0, 0, obj_dialoguer);
}
if (con == 34 && !d_ex())
{
	if (global.flag[241] == 6)
	{
		scr_weaponget(7);
		if (noroom == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_344_0");
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_348_0");
			global.flag[242] = 1;
		}
	}
	else
	{
		scr_armorget(7);
		if (noroom == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_357_0");
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_361_0");
			global.flag[242] = 2;
		}
	}
	con = 35;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 35 && !d_ex())
{
	fade = instance_create(0, 0, obj_fadeout);
	fade.fadespeed = 0.02;
	con = 36;
	alarm[4] = 60;
}
if (con == 37)
{
	global.entrance = 2;
	global.interact = 3;
	global.facing = 3;
	instance_create(0, 0, obj_persistentfadein);
	room_goto(room_cc_prison_prejoker);
	con = 38;
}
