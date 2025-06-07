if (hcon == 1)
{
	if (instance_exists(obj_mainchara))
	{
		if (obj_mainchara.x >= 220 && global.interact == 0)
		{
			global.interact = 1;
			hcon = 2;
			global.msc = 140;
			global.fc = 2;
			global.fe = 3;
			global.typer = 31;
			scr_text(global.msc);
			instance_create(0, 0, obj_dialoguer);
		}
	}
}
if (hcon == 2)
{
	if (d_ex() == 0)
	{
		if (global.plot < 32)
			global.plot = 32;
		hcon = 3;
		global.interact = 0;
	}
}
if (con == 1)
{
	if (instance_exists(obj_mainchara))
	{
		if (obj_mainchara.y <= 200 && global.interact == 0)
		{
			global.interact = 1;
			con = 2;
			mus_volume(global.currentsong[1], 0, 60);
			alarm[4] = 40;
		}
	}
}
if (con == 2)
{
	with (obj_mainchara)
		image_alpha -= 0.04;
}
if (con == 3)
{
	if (instance_exists(global.cinstance[0]))
		con = 4;
	else
		con = 20;
}
if (con == 4)
{
	r = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_ralseiu);
	with (global.cinstance[0])
		instance_destroy();
	with (r)
	{
		image_speed = 0.25;
		scr_move_to_point_over_time(420, obj_mainchara.y - 10, 20);
	}
	con = 5;
	alarm[4] = 20;
}
if (con == 6)
{
	with (r)
	{
		scr_halt();
		sprite_index = spr_ralseid;
	}
	con = 7;
	alarm[4] = 40;
}
if (con == 8)
{
	with (r)
		visible = 0;
	con = 20;
}
if (con == 20)
{
	image_index = 1;
	snd_play(snd_impact);
	instance_create(0, 0, obj_shake);
	con = 21;
	alarm[4] = 70;
}
if (con == 22)
{
	snd_free_all();
	f = instance_create(0, 0, obj_fadeout);
	f.fadespeed = 0.025;
	con = 23;
	alarm[4] = 60;
}
if (con == 24)
{
	global.plot = 33;
	global.interact = 0;
	global.facing = 0;
	instance_create(0, 0, obj_persistentfadein);
	room_goto(room_field_start);
}
