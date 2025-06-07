if (con == 1)
{
	global.facing = 2;
	s = scr_dark_marker(340, 1000, spr_susieu_dark);
	r = scr_dark_marker(260, 1008, spr_ralseiu);
	l = scr_dark_marker(280, 740, spr_lancer_ut_unhappy);
	with (obj_marker)
		scr_depth();
	con = 2;
	global.interact = 1;
	alarm[4] = 30;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	global.fc = 1;
	global.fe = 9;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_24_0");
	instance_create(0, 0, obj_dialoguer);
	con = 4;
}
if (con == 4 && !d_ex())
{
	with (l)
	{
		sprite_index = spr_lancer_dt_unhappy;
		vspeed = -3;
	}
	with (obj_mainchara)
	{
		fun = 1;
		vspeed = -8;
		image_speed = 0.25;
	}
	with (s)
	{
		vspeed = -8;
		image_speed = 0.25;
	}
	with (r)
	{
		vspeed = -8;
		image_speed = 0.25;
	}
	con = 5;
	alarm[4] = 48;
}
if (con == 6)
{
	snd_free_all();
	snd_play(snd_locker);
	instance_create(0, 0, obj_shake);
	door = scr_dark_marker(226, 534, spr_cardcastlefrontdoor);
	door.depth = 1000000;
	with (l)
		instance_destroy();
	with (s)
		scr_halt();
	with (r)
		scr_halt();
	with (obj_mainchara)
		scr_halt();
	con = 7;
	alarm[4] = 40;
}
if (con == 8)
{
	global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_58_0");
	instance_create(0, 0, obj_dialoguer);
	con = 15;
}
if (con == 15 && !d_ex())
{
	with (s)
		sprite_index = spr_susier_dark_unhappy;
	with (r)
		sprite_index = spr_ralseil;
	global.facing = 0;
	with (obj_mainchara)
		sprite_index = spr_krisd_dark;
	exc = instance_create(obj_mainchara.x + 20, obj_mainchara.y - 20, obj_excblcon);
	con = 16;
	alarm[4] = 20;
	for (i = 0; i < 4; i += 1)
	{
		spademanl[i] = scr_dark_marker(0 - (10 * i), 680 + (30 * i), spr_diamond_knight_overworld);
		with (spademanl[i])
		{
			image_xscale = -2;
			hspeed = 12;
			scr_depth();
		}
	}
	for (i = 0; i < 4; i += 1)
	{
		spademanr[i] = scr_dark_marker(640 + (10 * i), 680 + (30 * i), spr_diamond_knight_overworld);
		with (spademanr[i])
		{
			image_xscale = 2;
			hspeed = -12;
			scr_depth();
		}
	}
	spademand[0] = scr_dark_marker(320, 1100, spr_diamond_knight_overworld);
	with (spademand[0])
	{
		image_xscale = -2;
		vspeed = -12;
		scr_depth();
	}
	spademand[1] = scr_dark_marker(320, 1100, spr_diamond_knight_overworld);
	with (spademand[1])
	{
		image_xscale = 2;
		vspeed = -12;
		scr_depth();
	}
}
if (con == 17)
{
	with (exc)
		instance_destroy();
	with (obj_marker)
		scr_halt();
	con = 18;
	alarm[4] = 20;
}
if (con == 19)
{
	global.typer = 6;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_106_0");
	instance_create(0, 0, obj_dialoguer);
	con = 20;
	ftimer = 0;
	dcount = 0;
	so = 0;
	maxd = 36;
}
if (con == 20 && !d_ex())
{
	if (dcount < maxd)
	{
		if (so == 0)
		{
			snd_play(snd_noise);
			so = 1;
		}
		else
		{
			so = 0;
		}
		radius = 140;
		angle = (dcount / maxd) * 360;
		xpoint = obj_mainchara.x + 20;
		ypoint = obj_mainchara.y;
		xd = lengthdir_x(radius, angle);
		yd = lengthdir_y(radius, angle);
		db[dcount] = scr_dark_marker(xpoint + xd, ypoint + yd, spr_diamondbullet);
		db[dcount].image_angle = angle;
		with (db[dcount])
		{
			image_xscale = 1;
			image_yscale = 1;
			image_alpha = 0;
			direction = image_angle;
			speed = 2;
			depth = 10000;
			friction = 0.1;
		}
		dcount += 1;
	}
	for (i = 0; i < dcount; i += 1)
	{
		with (db[i])
			image_alpha += 0.1;
	}
	if (dcount >= maxd)
	{
		ftimer += 1;
		if (ftimer >= 20)
			con = 21;
	}
}
if (con == 21)
{
	global.typer = 31;
	global.fc = 2;
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_163_0");
	instance_create(0, 0, obj_dialoguer);
	con = 22;
}
if (con == 22 && !d_ex())
{
	for (i = 0; i < dcount; i += 1)
	{
		with (db[i])
		{
			gravity = 1;
			gravity_direction = image_angle + 180;
		}
	}
	con = 26;
}
if (con == 26)
{
	if (db[0].x <= (obj_mainchara.x + 90))
	{
		snd_free_all();
		snd_play(snd_hurt1);
		con = 27;
		black = 1;
		alarm[4] = 120;
	}
}
if (con == 28)
{
	global.entrance = 0;
	global.interact = 3;
	room_goto(room_cc_prison_cells);
}
