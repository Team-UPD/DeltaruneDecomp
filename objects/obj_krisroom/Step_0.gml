if (con > 0 && con < 50)
{
	if (con == 1 && instance_exists(obj_dialoguer) == false)
	{
		with (t)
		{
			image_index = 0;
			image_speed = 0.25;
			vspeed = -2;
			sprite_index = spr_toriel_u;
		}
		alarm[4] = 20;
		con = 2;
	}
	if (con == 3)
	{
		with (t)
		{
			image_index = 0;
			image_speed = 0;
			vspeed = 0;
		}
		alarm[4] = 10;
		con = 4;
	}
	if (con == 5)
	{
		with (t)
		{
			image_speed = 0.25;
			sprite_index = spr_toriel_windowopen;
		}
		alarm[4] = 10;
		con = 6;
		with (wallwindow)
			image_index = 1;
		snd_play(snd_wing);
	}
	if (con == 7)
	{
		with (t)
			image_speed = 0;
		con = 8;
		alarm[4] = 20;
	}
	if (con == 9)
	{
		with (t)
		{
			sprite_index = spr_toriel_d;
			image_index = 0;
			image_speed = 0.25;
			vspeed = 2;
		}
		alarm[4] = 20;
		con = 10;
	}
	if (con == 11)
	{
		with (t)
		{
			image_index = 0;
			image_speed = 0;
			vspeed = 0;
		}
		alarm[4] = 20;
		con = 12;
	}
	if (con == 13)
	{
		with (t)
			sprite_index = spr_toriel_rt;
		alarm[4] = 20;
		con = 14;
	}
	if (con == 15)
	{
		global.fe = 0;
		with (t)
			image_speed = 0.25;
		global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_92_0");
		d = instance_create(0, 0, obj_dialoguer);
		con = 20;
	}
	if (con == 20 && instance_exists(obj_dialoguer) == false)
	{
		with (t)
		{
			image_index = 0;
			sprite_index = spr_toriel_d;
			image_speed = 0.25;
			vspeed = 3;
		}
		alarm[4] = 90;
		con = 21;
	}
	if (con == 22)
	{
		snd_play(snd_wing);
		image_index = 1;
		alarm[4] = 40;
		con = 23;
	}
	if (con == 24)
	{
		with (obj_mainchara)
		{
			fun = 1;
			image_speed = 0.25;
			sprite_index = spr_krisl;
			hspeed = -1;
		}
		alarm[4] = 40;
		if (button2_h())
		{
			with (obj_mainchara)
			{
				fun = 1;
				image_speed = 0.25;
				sprite_index = spr_krisl;
				hspeed = -4;
			}
			alarm[4] = 10;
		}
		con = 25;
	}
	if (con == 26)
	{
		global.facing = 3;
		with (obj_mainchara)
		{
			image_index = 0;
			hspeed = 0;
			image_speed = 0;
			fun = 0;
		}
		con = 27;
		alarm[4] = 20;
		if (button2_h())
			alarm[4] = 5;
	}
	if (con == 28)
	{
		global.flag[10] = 1;
		global.facing = 0;
		with (obj_mainchara)
		{
			image_index = 0;
			hspeed = 0;
			sprite_index = spr_krisd;
			image_speed = 0;
			fun = 0;
		}
		scr_depth();
		con = 30;
		global.interact = 0;
		scr_tempsave();
		if (global.plot < 1)
			global.plot = 1;
	}
}
if (con >= 50 && con < 100)
{
	global.interact = 1;
	global.facing = 1;
	if (con == 50 && !d_ex())
	{
		if (scr_keyitemcheck(2) == 0)
		{
			with (obj_event_manager)
				trigger_event((0 << 0), (1 << 0));
		}
		with (obj_event_manager)
			trigger_event((2 << 0), (1 << 0));
		_remfilechoice = global.filechoice;
		global.filechoice += 3;
		scr_save();
		global.filechoice = _remfilechoice;
		mus_volume(global.currentsong[1], 0, 100);
		fade = instance_create(0, 0, obj_fadeout);
		with (fade)
			fadespeed = 0.01;
		con = 51;
		alarm[4] = 100;
	}
	if (con == 52)
	{
		snd_free_all();
		con = 53;
		alarm[4] = 150;
	}
	if (con == 54)
	{
		scr_windowcaption(" ");
		room_goto(room_myroom_dark);
	}
}
if (con >= 100 && con < 150)
{
	global.interact = 1;
	global.facing = 1;
	if (con == 100 && !d_ex())
	{
		mus_volume(global.currentsong[1], 0, 50);
		fade = instance_create(0, 0, obj_fadeout);
		with (fade)
		{
			fadespeed = 0.02;
			depth = 10000;
		}
		con = 101;
		alarm[4] = 50;
	}
	if (con == 102)
	{
		snd_free_all();
		con = 103;
		alarm[4] = 50;
	}
	if (con == 104)
	{
		scr_windowcaption(" ");
		global.typer = 5;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_281_0");
		instance_create(0, 0, obj_dialoguer);
		con = 105;
	}
	if (con == 105 && !d_ex())
	{
		instance_create(0, 0, obj_persistentfadein);
		scr_windowcaption(scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_289_0"));
		global.plot = 10;
		scr_become_dark();
		room_goto(room_dark1);
	}
}
