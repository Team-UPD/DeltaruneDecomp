leavecon = 0;
leavetimer = 0;
noellemarker = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	if (room == room_dw_city_traffic_1)
	{
		werewire_npc = instance_create(523, 139, obj_npc_room);
		werewire_npc.sprite_index = spr_npc_werewire;
		werewire_npc.image_xscale = -2;
		with (werewire_npc)
			depth = 98000;
		if (global.plot < 68)
		{
			noellemarker = scr_dark_marker(2100, 245, spr_noelle_walk_right_dw);
			noellemarker.image_speed = 0;
		}
		else
		{
			instance_destroy();
		}
	}
	if (room == room_dw_city_roadblock)
	{
		if (global.plot < 69)
		{
			noellemarker = scr_dark_marker(920, 670, spr_noelle_walk_right_dw);
			noellemarker.image_speed = 0;
		}
		else
		{
			instance_destroy();
		}
	}
}
if (i_ex(noellemarker))
{
	with (noellemarker)
		scr_depth();
}
