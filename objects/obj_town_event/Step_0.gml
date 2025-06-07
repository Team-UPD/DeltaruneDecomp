if (room == room_town_mid)
{
	if (con == 20 && !d_ex())
	{
		alarm[4] = 5;
		con = 21;
	}
	if (con == 21)
		global.interact = 1;
	if (con == 22)
	{
		global.interact = 1;
		banim = scr_marker(bnpc.x - 1, bnpc.y - 14, spr_npc_icemascot_takeoff);
		banim.depth = bnpc.depth;
		with (bnpc)
			visible = 0;
		with (banim)
			image_speed = 0.334;
		con = 23;
		alarm[4] = 36;
	}
	if (con == 24)
	{
		with (bnpc)
			instance_destroy();
		bnpc = instance_create(banim.x + 9, banim.y + 18, obj_npc_room);
		with (bnpc)
			sprite_index = spr_npc_burgerpants;
		with (banim)
			instance_destroy();
		con = 25;
		alarm[4] = 20;
	}
	if (con == 26)
	{
		global.fc = 19;
		global.typer = 5;
		global.fe = 0;
		global.msc = 340;
		scr_text(global.msc);
		con = 27;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 27 && !d_ex())
	{
		global.interact = 0;
		con = 28;
		if (global.flag[271] == 0)
			global.flag[271] = 1;
	}
	if (con == 70 && global.flag[273] == 1)
	{
		if (global.interact == 0)
		{
			if (obj_mainchara.x <= 1060 || obj_mainchara.x >= 1200 || obj_mainchara.y >= 120)
			{
				global.interact = 1;
				if (obj_mainchara.x <= 1060)
					global.facing = 1;
				if (obj_mainchara.x >= 1200)
					global.facing = 3;
				if (obj_mainchara.y >= 120)
					global.facing = 2;
				con = 71;
				global.typer = 14;
				global.fc = 6;
				global.fe = 0;
				global.msc = 380;
				scr_text(global.msc);
				instance_create(0, 0, obj_dialoguer);
			}
		}
	}
	if (con == 71 && !d_ex())
	{
		con = 72;
		global.flag[273] = 2;
		global.interact = 0;
		global.facing = 0;
	}
}
if (room == room_town_south)
{
	if (con == 50 && !d_ex())
	{
		snd_play(snd_noise);
		con = 51;
		alarm[4] = 28;
	}
	if (con == 51)
	{
		global.interact = 1;
		with (policewindow)
			image_index += 0.1;
	}
	if (con == 52)
	{
		global.msg[0] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_120_0");
		instance_create(0, 0, obj_dialoguer);
		con = 53;
	}
	if (con == 53 && !d_ex())
	{
		global.interact = 0;
		global.facing = 0;
		con = 55;
	}
}
if (room == room_torbathroom)
{
	if (con == 60 && !d_ex())
	{
		snd_pause(global.currentsong[1]);
		snd_play(snd_toilet);
		con = 61;
		alarm[4] = 30;
	}
	if (con == 61)
		global.interact = 1;
	if (con == 62)
	{
		specflush = 0;
		snd_play(snd_won);
		flush += 1;
		global.msg[0] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_157_0");
		if (flush == 3)
			specflush = 1;
		if (flush == 6)
			specflush = 2;
		if (flush == 9)
			specflush = 3;
		instance_create(0, 0, obj_dialoguer);
		con = 63;
		if (specflush > 0)
			con = 67;
	}
	if (con == 63 && !d_ex())
	{
		snd_resume(global.currentsong[1]);
		con = 64;
		global.interact = 0;
		global.facing = 0;
	}
	if (con == 67 && !d_ex())
	{
		snd_play(snd_knock);
		con = 68;
		alarm[4] = 30;
	}
	if (con == 69)
	{
		if (specflush == 1)
		{
			scr_torface(0, 1);
			global.msg[1] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_186_0");
		}
		if (specflush == 2)
		{
			scr_torface(0, 3);
			global.msg[1] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_191_0");
			global.msg[2] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_192_0");
		}
		if (specflush == 3)
		{
			scr_torface(0, 5);
			global.msg[1] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_197_0");
		}
		instance_create(0, 0, obj_dialoguer);
		con = 63;
		specflush = 0;
	}
}
