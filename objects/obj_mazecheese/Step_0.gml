if (con == 1 && myinteract == 3 && !d_ex())
{
	myinteract = 0;
	if (type == 1)
		mousemarker = scr_dark_marker(camerax() + 640 + 35 + 15, 278, spr_maus_idle);
	if (type == 2)
	{
		if (room == room_dw_city_postbaseball_2)
		{
			mousemarker = scr_dark_marker(camerax() + 640 + 35 + 15, 310, spr_maus_idle);
		}
		else
		{
			var yax = charaY() - 18;
			if (yax < 240)
				yax = 240;
			mousemarker = scr_dark_marker(camerax() + 640 + 35 + 15, yax, spr_maus_idle);
		}
	}
	mousemarker.hspeed = -10;
	with (obj_caterpillarchara)
	{
		if (name == "noelle")
		{
			fun = 1;
			sprite_index = spr_noelle_shocked_dw;
		}
	}
	snd_play(snd_mouse);
	con = 2;
	alarm[4] = 20;
}
if (con == 3)
{
	with (mousemarker)
		speed = 0;
	with (obj_caterpillarchara)
	{
		if (name == "noelle")
		{
			fun = 0;
			sprite_index = spr_noelle_walk_right_dw;
		}
	}
	con = 4;
	alarm[4] = 10;
}
if (con == 5 && !d_ex())
{
	if (type == 1)
		encounterflag = 536;
	if (type == 2)
		encounterflag = 537;
	global.flag[54] = encounterflag;
	if (type == 1)
		scr_battle(66, 0, mousemarker, 0, 0);
	if (type == 2)
	{
		if (room == room_dw_city_postbaseball_2)
			scr_battle(79, 0, mousemarker, 0, 0);
		else
			scr_battle(54, 0, mousemarker, 0, 0);
	}
	con = 6;
	alarm[4] = 25;
}
if (con == 7)
{
	if (x > 840)
	{
		with (obj_mazecheese)
		{
			image_index = 1;
			type = 4;
			con = 99;
		}
		global.flag[361] = 1;
	}
	if (x < 840)
	{
		with (obj_mazecheese)
			con = 0;
		if (instance_exists(obj_controller_city_cheesemaze))
			obj_controller_city_cheesemaze.cheeseCrushed = 1;
		image_index = 1;
		type = 4;
		con = 8;
		alarm[4] = 10;
	}
}
if (con == 9 && !instance_exists(obj_battlecontroller))
{
	con = 10;
	alarm[4] = 30;
}
if (con == 10)
	global.interact = 1;
if (con == 11)
{
	global.interact = 1;
	global.fe = 0;
	if (global.flag[310] == 0)
	{
		global.flag[310] = 1;
		if (scr_havechar(4))
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\E8* I..^1. I never want to see cheese ever again.../%", "obj_mazecheese_slash_Step_0_gml_97_0");
		}
		else
		{
			global.flag[311] = 1;
			scr_speaker("no_name");
			msgsetloc(0, "* (The cheese was destroyed in the heat of battle...)/", "obj_mazecheese_slash_Step_0_gml_102_0");
			msgnextloc("* (You realized you lost sight of what was important...)/%", "obj_mazecheese_slash_Step_0_gml_103_0");
		}
		d_make();
	}
	con = 12;
}
if (con == 12 && !d_ex())
{
	global.interact = 0;
	global.facing = 0;
	con = 99;
	type = 4;
}
if (con == 15 && !d_ex())
{
	global.interact = 0;
	global.facing = 0;
	read = 0;
	con = 0;
}
if (room == room_dw_city_postbaseball_2)
{
	if (fallcon == 0)
	{
		snd_play(snd_fall);
		fallcon++;
	}
	if (fallcon == 1)
	{
		if (y < 352)
		{
			vspeed += 1;
			if (vspeed >= 12)
				vspeed = 12;
		}
		if (y > 312)
		{
			vspeed = 0;
			y = 312;
			fallcon++;
		}
	}
}
