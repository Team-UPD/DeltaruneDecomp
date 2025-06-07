if (con == 1)
{
	global.interact = 1;
	con = 2;
	alarm[4] = 10;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	global.typer = 12;
	global.fc = 3;
	global.fe = 4;
	global.msg[0] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_15_0");
	global.msg[1] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_16_0");
	scr_rudface(2, 0);
	global.msg[3] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_18_0");
	global.msg[4] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_19_0");
	scr_noeface(5, 2);
	global.msg[6] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_21_0");
	scr_rudface(7, 7);
	global.msg[8] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_23_0");
	con = 4;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 4 && !d_ex())
{
	sprite_index = spr_rudy_laugh;
	snd_play(snd_rudylaugh);
	image_speed = 0.25;
	con = 5;
	alarm[4] = 30;
}
if (con == 6)
{
	image_index = 0;
	snd_stop(snd_rudylaugh);
	sprite_index = spr_rudy_cough;
	snd_play(snd_rudycough);
	con = 7;
	alarm[4] = 30;
}
if (con == 8)
{
	global.typer = 12;
	global.fc = 3;
	global.fe = 4;
	sprite_index = spr_rudy_l;
	global.msg[0] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_53_0");
	scr_rudface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_55_0");
	scr_noeface(3, 4);
	global.msg[4] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_57_0");
	global.msg[5] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_58_0");
	scr_rudface(6, 4);
	global.msg[7] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_60_0");
	global.msg[8] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_61_0");
	scr_noeface(9, 7);
	global.msg[10] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_63_0");
	scr_rudface(11, 7);
	global.msg[12] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_65_0");
	scr_noeface(13, 8);
	global.msg[14] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_67_0");
	global.msg[15] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_68_0");
	global.msg[16] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_69_0");
	scr_rudface(17, 4);
	global.msg[18] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_71_0");
	global.msg[19] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_72_0");
	scr_noeface(20, 3);
	global.msg[21] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_74_0");
	scr_rudface(22, 6);
	global.msg[23] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_76_0");
	scr_noeface(24, 4);
	global.msg[25] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_78_0");
	scr_rudface(26, 7);
	global.msg[27] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_80_0");
	scr_noeface(28, 8);
	global.msg[29] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_82_0");
	scr_rudface(30, 2);
	global.msg[31] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_84_0");
	instance_create(0, 0, obj_dialoguer);
	con = 9;
}
if (con == 9 && !d_ex())
{
	with (n)
	{
		sprite_index = spr_noelle_d;
		vspeed = 2;
		image_speed = 0.25;
	}
	con = 10;
}
if (con == 10)
{
	if (n.y >= 150)
	{
		sprite_index = spr_rudy_d;
		with (n)
		{
			sprite_index = spr_noelle_r;
			hspeed = 2;
			vspeed = 0;
			image_speed = 0.25;
		}
		con = 11;
	}
}
if (con == 11)
{
	if (n.x >= 160)
	{
		with (n)
		{
			sprite_index = spr_noelle_dt;
			hspeed = 0;
			vspeed = 0;
			image_speed = 0;
			image_index = 0;
		}
		con = 12;
		alarm[4] = 30;
	}
}
if (con == 13)
{
	global.typer = 12;
	global.fc = 3;
	global.fe = 4;
	global.msg[0] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_140_0");
	instance_create(0, 0, obj_dialoguer);
	con = 14;
	kcon = 0;
}
if (con == 14 && !d_ex())
{
	with (n)
	{
		vspeed = 3;
		image_speed = 0.25;
		sprite_index = spr_noelle_d;
	}
	con = 15;
	kcon = 1;
	alarm[4] = 30;
}
if (con == 15)
{
	with (obj_mainchara)
	{
		if (x > 140)
			x -= 1;
	}
}
if (con == 16)
{
	instance_create(x, y, obj_npc_room);
	global.facing = 0;
	global.flag[255] = 1;
	global.interact = 0;
	instance_destroy();
	con = 17;
}
