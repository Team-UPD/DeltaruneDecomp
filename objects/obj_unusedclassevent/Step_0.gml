if (con == 0)
{
	scr_windowcaption(" ");
	global.facing = 0;
	con = 1;
	alarm[4] = 90;
}
if (con == 2)
{
	global.darkzone = 0;
	global.flag[29] = 1;
	global.typer = 10;
	global.fe = 0;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_16_0");
	instance_create(0, 0, obj_dialoguer);
	con = 3;
}
if (con == 3 && !d_ex())
{
	snd_play(snd_impact);
	con = 4;
	alarm[4] = 15;
}
if (con == 5)
{
	snd_play(snd_drive);
	con = 6;
	alarm[4] = 15;
}
if (con == 7)
{
	snd_play(snd_locker);
	con = 8;
	alarm[4] = 15;
}
if (con == 9)
{
	snd_play(snd_squeaky);
	con = 10;
	alarm[4] = 15;
}
if (con == 11)
{
	snd_play(snd_sussurprise);
	global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_52_0");
	instance_create(0, 0, obj_dialoguer);
	con = 12;
	alarm[4] = 15;
}
if (con == 13 && !d_ex())
{
	snd_play(snd_wing);
	con = 14;
	alarm[4] = 15;
}
if (con == 15)
{
	snd_play(snd_pombark);
	con = 16;
	alarm[4] = 15;
}
if (con == 17)
{
	snd_play(snd_impact);
	con = 18;
	alarm[4] = 15;
}
if (con == 19)
{
	scr_windowcaption(scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_81_0"));
	snd_play(snd_noise);
	lightsoff = 0;
	s = scr_marker(146, 70, spr_susied_plain);
	with (s)
		depth = 100000;
	con = 24;
	alarm[4] = 50;
}
if (con == 25)
{
	global.fc = 1;
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_94_0");
	global.msg[1] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_95_0");
	global.msg[2] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_96_0");
	con = 26;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 26 && !d_ex())
{
	with (s)
	{
		image_speed = 0.1;
		vspeed = 0.5;
	}
	con = 27;
	alarm[4] = 40;
}
if (con == 28)
{
	with (s)
		scr_halt();
	con = 29;
	alarm[4] = 45;
	global.fe = 0;
}
if (con == 30)
{
	with (s)
		sprite_index = spr_susier_plain;
	global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_123_0");
	global.msg[1] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_124_0");
	global.msg[2] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_125_0");
	global.msg[3] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_126_0");
	instance_create(0, 0, obj_dialoguer);
	con = 31;
}
if (con == 31 && !d_ex())
{
	con = 32;
	alarm[4] = 60;
}
if (con == 33)
{
	with (s)
		sprite_index = spr_susied_plain;
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_141_0");
	global.msg[1] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_142_0");
	global.msg[2] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_143_0");
	instance_create(0, 0, obj_dialoguer);
	con = 34;
}
if (con == 34 && !d_ex())
{
	with (s)
	{
		vspeed = 2;
		image_speed = 0.2;
	}
	con = 35;
}
if (con == 35)
{
	if (s.y >= 140)
	{
		snd_play(snd_doorclose);
		with (s)
			visible = 0;
		con = 37;
	}
}
if (con == 37)
{
	global.interact = 0;
	if (global.plot < 250)
		global.plot = 250;
	con = 38;
}
