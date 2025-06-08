if (room != room_dw_mansion_east_2f_c)
{
	if (instance_exists(obj_controller_dw_mansion_east_1f_a))
		obj_controller_dw_mansion_east_1f_a.triggered = 1;
	image_index = 1;
	snd_play(choose(snd_break1, snd_break2));
	brokenpot = scr_dark_marker(x, y, sprite_index);
	brokenpot.image_index = 1;
	brokenpot.depth = 800000;
	if (room == room_dw_mansion_east_2f_c)
	{
		if (instance_exists(obj_npc_sign))
		{
			with (obj_npc_sign)
			{
				newenem = instance_create(x, y, obj_chaseenemy);
				with (newenem)
				{
					if (image_xscale > 0)
						x -= sprite_width;
					myencounter = 56;
					sprite_index = spr_npc_swatchling_sweep;
					touchsprite = spr_swatchling_hurt;
					radius = 10000;
					ignoresolid = 1;
					alertcon = 0;
					eraser = 1;
				}
				instance_destroy();
			}
		}
		if (instance_exists(obj_controller_dw_mansion_potBalance))
			obj_controller_dw_mansion_potBalance.triggered = 1;
	}
	instance_destroy();
}
else
{
	if (type == 0 && image_index == 0)
		con = 999;
	if (type == 1 && image_index == 0)
		con = 9999;
}
