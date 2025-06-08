if (encountered == 0)
{
	if (global.interact == 0 || global.interact == 4 || washit == 1)
	{
		encountered = 1;
		global.specialbattle = 0;
		global.flag[9] = 1;
		if (global.chapter == 2)
		{
			if (room == room_dw_mansion_potBalance)
			{
				with (obj_chaseenemy)
					encountered = 1;
				with (obj_testoverworldenemy)
					encountered = 1;
			}
			var roomrange = 0;
			if ((room >= room_dw_mansion_krisroom && room < room_dw_mansion_b_entrance) || (room >= room_dw_mansion_east_2f_a && room < room_dw_mansion_acid_tunnel) || room == room_dw_mansion_dininghall || room == room_dw_mansion_east_2f_c || room == room_dw_mansion_dining3)
				roomrange = 1;
			if (roomrange)
				global.flag[9] = 0;
			else
				global.flag[9] = 1;
		}
		if (global.flag[9] == 1)
		{
			if (global.encounterno != 62 && global.encounterno != 84)
				global.batmusic[0] = snd_init("battle.ogg");
		}
		alarm[5] = -300;
		vspeed = 0;
		global.interact = 1;
		con = 1;
	}
}
