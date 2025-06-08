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
	global.msg[0] = stringsetloc("* Wh..^1. what happened!^2?&* I can't see anything!!/%", "obj_unusedclassevent_slash_Step_0_gml_16_0");
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
	global.msg[0] = stringsetloc("* Hey^1, WATCH IT!/%", "obj_unusedclassevent_slash_Step_0_gml_52_0");
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
	scr_windowcaption("The Return");
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
	global.msg[0] = stringsetloc("* H..^1. Huh...?/", "obj_unusedclassevent_slash_Step_0_gml_94_0");
	global.msg[1] = stringsetloc("* The unused classroom...?/", "obj_unusedclassevent_slash_Step_0_gml_95_0");
	global.msg[2] = stringsetloc("\\E3* How'd we get here...?/%", "obj_unusedclassevent_slash_Step_0_gml_96_0");
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
	global.msg[0] = stringsetloc("* ... Hey, Kris.../", "obj_unusedclassevent_slash_Step_0_gml_123_0");
	global.msg[1] = stringsetloc("\\E1* What.../", "obj_unusedclassevent_slash_Step_0_gml_124_0");
	global.msg[2] = stringsetloc("\\E0* What just happened...?/", "obj_unusedclassevent_slash_Step_0_gml_125_0");
	global.msg[3] = stringsetloc("\\E3* Like^1, that wasn't a dream or anything^1, was it...?/%", "obj_unusedclassevent_slash_Step_0_gml_126_0");
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
	global.msg[0] = stringsetloc("\\E0* .../", "obj_unusedclassevent_slash_Step_0_gml_141_0");
	global.msg[1] = stringsetloc("\\E3* Anyway, as I was SAYING,/", "obj_unusedclassevent_slash_Step_0_gml_142_0");
	global.msg[2] = stringsetloc("\\E2* Let's just tell Alphys we couldn't find any chalk./%", "obj_unusedclassevent_slash_Step_0_gml_143_0");
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
if (con == 50)
{
	if (obj_mainchara.y <= (obj_markerC.y - 15) && global.interact == 0)
	{
		global.interact = 1;
		scr_speaker("none");
		msgsetloc(0, "* You gathered all the junk off the floor.../%", "obj_unusedclassevent_slash_Step_0_gml_186_0");
		d_make();
		fd = instance_create(0, 0, obj_fadeout);
		fd.depth = 3;
		con = 51;
		alarm[4] = 30;
	}
}
if (con == 52 && !d_ex())
{
	snd_play(snd_equip);
	con = 53;
	alarm[4] = 5;
	global.facing = 0;
	global.flag[302] = 1;
	trashball = instance_create(0, 0, obj_kris_headobj);
	trashball.sprite_index = spr_cutscene_04_trashball;
	lightsoff = 2;
	with (obj_solidblock)
	{
		if (x == 108)
			instance_destroy();
	}
	with (obj_readable_room1)
	{
		if (x >= 80 && x <= 210)
			instance_destroy();
	}
}
if (con == 54)
{
	with (obj_fadeout)
		instance_destroy();
	instance_create(0, 0, obj_fadein);
	con = 55;
	alarm[4] = 20;
}
if (con == 56)
{
	msgsetloc(0, "* ... and turned it into a giant dusty ball./%", "obj_unusedclassevent_slash_Step_0_gml_225_0");
	d_make();
	con = 57;
}
if (con == 57 && !d_ex())
{
	con = 58;
	if (global.plot < 9)
		global.plot = 9;
	global.interact = 0;
}
