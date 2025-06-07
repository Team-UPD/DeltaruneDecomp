if (con == 1)
{
	alarm[4] = 30;
	con = 1.5;
}
if (con == 2.5)
{
	global.currentsong[0] = snd_init("mus_school.ogg");
	global.fe = 0;
	global.fc = 11;
	global.typer = 20;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_14_0");
	d = instance_create(0, 0, obj_dialoguer);
	con = 3;
}
if (con == 3 && instance_exists(obj_dialoguer) == false)
{
	snd_play(snd_dooropen);
	with (door)
		image_index = 1;
	con = 4;
	with (alphys)
		sprite_index = spr_alphysr;
	alarm[4] = 30;
}
if (con == 5)
{
	with (obj_mainchara)
	{
		fun = 1;
		sprite_index = spr_krisd;
		image_speed = 0.2;
		vspeed = 2;
	}
	con = 6;
	alarm[4] = 10;
}
if (con == 7)
{
	with (obj_mainchara)
	{
		image_index = 0;
		vspeed = 0;
		image_speed = 0;
	}
	with (door)
		image_index = 0;
	snd_play(snd_doorclose);
	con = 8;
	alarm[4] = 30;
}
if (con == 9)
{
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_60_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_61_0");
	global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_62_0");
	con = 10;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 10 && instance_exists(obj_dialoguer) == false)
{
	mus_loop(global.currentsong[0]);
	__view_set(e__VW.Object, 0, -4);
	door_readable = instance_create(244, 51, obj_readable_room1);
	alphys2 = alphys;
	alphys = instance_create(alphys.x, alphys.y + alphys.sprite_height, obj_npc_facing);
	with (alphys2)
		instance_destroy();
	doorsolid = instance_create(236, 52, obj_solidblock);
	with (doorsolid)
		image_xscale = 2;
	with (door)
		depth = 500000;
	with (obj_mainchara)
		fun = 0;
	global.plot = 2;
	global.interact = 0;
	con = 11;
}
if (con == 20 && instance_exists(obj_dialoguer) == false)
{
	global.interact = 1;
	con = 21;
	alarm[4] = 2;
}
if (con == 21)
	global.interact = 1;
if (con == 22)
{
	global.typer = 13;
	global.fc = 12;
	global.fe = 3;
	global.facing = 2;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_107_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_108_0");
	global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_109_0");
	global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_110_0");
	global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_111_0");
	global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_112_0");
	con = 23;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 23 && instance_exists(obj_dialoguer) == false)
{
	instance_create(0, 0, obj_shake);
	snd_stop_all();
	snd_free(global.currentsong[0]);
	with (door)
	{
		image_index = 0;
		image_speed = 0.5;
		sprite_index = spr_classdoorslam;
		depth = 5000;
	}
	sus = scr_marker(237, 24, spr_susied_plain);
	with (sus)
		scr_depth();
	con = 24;
	alarm[4] = 4;
	with (doorsolid)
		instance_destroy();
}
if (con == 25)
{
	snd_play(snd_impact);
	alphys2 = alphys;
	alphys = scr_marker(alphys.x, alphys.y, spr_alphysr_shock);
	with (alphys)
		scr_depth();
	with (alphys2)
		instance_destroy();
	con = 26;
	alarm[4] = 6;
}
if (con == 27)
{
	with (door)
	{
		image_speed = 0;
		depth = 500000;
	}
	con = 32;
	alarm[4] = 50;
}
if (con == 29 && instance_exists(obj_dialoguer) == false)
{
	with (sus)
	{
		image_speed = 0.1;
		vspeed = 0.5;
	}
	con = 30;
	alarm[4] = 40;
}
if (con == 31)
{
	with (sus)
	{
		image_index = 0;
		image_speed = 0;
		vspeed = 0;
	}
	con = 34;
	alarm[4] = 30;
}
if (con == 33)
{
	global.fe = 2;
	global.fc = 11;
	global.typer = 22;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_190_0");
	instance_create(0, 0, obj_dialoguer);
	con = 28;
	alarm[4] = 20;
}
if (con == 35)
{
	global.fc = 1;
	global.fe = 0;
	global.typer = 10;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_203_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_204_0");
	global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_205_0");
	global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_206_0");
	global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_207_0");
	scr_susface(5, 0);
	global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_209_0");
	global.msg[7] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_210_0");
	con = 36;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 36 && instance_exists(obj_dialoguer) == false)
{
	con = 37;
	alarm[4] = 40;
	with (alphys)
		sprite_index = spr_alphysd;
}
if (con == 38)
{
	global.fc = 11;
	global.typer = 20;
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_230_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_231_0");
	instance_create(0, 0, obj_dialoguer);
	con = 39;
}
if (con == 39 && instance_exists(obj_dialoguer) == false)
{
	with (alphys)
	{
		sprite_index = spr_alphysr;
		hspeed = 3;
		image_speed = 0.2;
	}
	con = 40;
	alarm[4] = 26;
}
if (con == 41)
{
	with (alphys)
	{
		sprite_index = spr_alphysu;
		image_index = 0;
		image_speed = 0;
		hspeed = 0;
	}
	con = 42;
	alarm[4] = 30;
}
if (con == 43)
{
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_263_0");
	con = 44;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 44 && instance_exists(obj_dialoguer) == false)
{
	con = 45;
	with (alphys)
		sprite_index = spr_alphysl;
	con = 46;
	alarm[4] = 20;
}
if (con == 47)
{
	with (alphys)
		sprite_index = spr_alphysr;
	con = 48;
	alarm[4] = 20;
}
if (con == 49)
{
	with (alphys)
		sprite_index = spr_alphysd;
	con = 50;
	alarm[4] = 30;
}
if (con == 51)
{
	global.fe = 8;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_294_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_295_0");
	global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_296_0");
	global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_298_0");
	global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_299_0");
	global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_300_0");
	global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_301_0");
	global.msg[7] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_302_0");
	global.msg[8] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_303_0");
	instance_create(0, 0, obj_dialoguer);
	con = 51.1;
}
if (con == 51.1 && d_ex() == 0)
{
	with (alphys)
		sprite_index = spr_alphysd;
	con = 50.2;
	alarm[4] = 90;
}
if (con == 51.2)
{
	with (alphys)
		sprite_index = spr_alphysd;
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_319_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_320_0");
	con = 51.3;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 51.3 && d_ex() == 0)
{
	with (alphys)
		sprite_index = spr_alphysr;
	con = 50.4;
	alarm[4] = 90;
}
if (con == 51.4)
{
	with (alphys)
		sprite_index = spr_alphysd;
	global.fe = 9;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_336_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_337_0");
	global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_338_0");
	global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_339_0");
	global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_340_0");
	global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_341_0");
	global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_342_0");
	instance_create(0, 0, obj_dialoguer);
	con = 52;
}
if (con == 52)
{
	if (instance_exists(obj_writer))
	{
		if (obj_writer.msgno == 4)
		{
			with (alphys)
				sprite_index = spr_alphysr;
		}
	}
}
if (con == 52 && instance_exists(obj_dialoguer) == false)
{
	with (sus)
	{
		vspeed = -1;
		sprite_index = spr_susieu;
		image_speed = 0.2;
	}
	con = 53;
	alarm[4] = 15;
}
if (con == 54)
{
	with (sus)
		instance_destroy();
	instance_create(0, 0, obj_shake);
	snd_play(snd_impact);
	with (door)
		image_index = 0;
	con = 55;
	alarm[4] = 50;
}
if (con == 56)
{
	with (sus)
		instance_destroy();
	with (alphys)
		sprite_index = spr_alphysd;
	global.fc = 11;
	global.typer = 20;
	global.fe = 4;
	global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_394_0");
	global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_395_0");
	global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_396_0");
	instance_create(0, 0, obj_dialoguer);
	con = 57;
}
if (con == 57 && instance_exists(obj_dialoguer) == false)
{
	with (door_readable)
		instance_destroy();
	doorb = instance_create(242, 51, obj_doorB);
	global.plot = 3;
	global.facing = 0;
	alphys2 = alphys;
	alphys = instance_create(alphys.x, alphys.y + alphys.sprite_height, obj_npc_facing);
	with (obj_npc_facing)
		talked = 0;
	with (alphys2)
		instance_destroy();
	with (doorsolid)
		instance_destroy();
	global.interact = 0;
	con = 58;
}
