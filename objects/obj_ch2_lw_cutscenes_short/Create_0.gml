con = 0;
destroyme = 0;
if (global.chapter != 2)
{
	destroyme = 1;
}
else
{
	if (room == room_town_krisyard && global.plot < 2)
	{
		con = 1;
		global.facing = 0;
		with (obj_doorparent)
			instance_destroy();
		with (obj_npc_sign)
			instance_destroy();
	}
	if (room == room_schoollobby && global.plot == 5)
	{
		con = 1;
		global.facing = 0;
		global.interact = 1;
	}
	if (room == room_schooldoor && global.plot == 6)
	{
		con = 1;
		global.facing = 2;
		global.interact = 1;
		noelle_chalk = global.flag[276] >= 2;
		if (!noelle_chalk && global.is_console)
			noelle_chalk = global.game_won;
	}
	if (room == room_schoollobby && global.plot == 9)
	{
		global.flag[20] = 0;
		con = 50;
		alphys = scr_marker(469, 222, spr_alphysr);
		toriel = scr_marker(551, 201, spr_toriel_l);
		with (alphys)
			scr_depth();
		with (toriel)
			scr_depth();
	}
}
if (destroyme == 1)
	instance_destroy();
