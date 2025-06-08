con = -1;
cutscene_master = noone;
leaveCounter = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.plot >= 200 && global.flag[387] == 1)
{
	if (global.flag[388] == 1 || scr_get_total_recruits(2) == 0)
	{
		var queen_npc = instance_create(1054, 175, obj_npc_sign);
		queen_npc.sprite_index = spr_queen_walk_up;
		queen_npc.image_speed = 0;
		with (queen_npc)
			scr_depth();
	}
	else if (scr_get_total_recruits(2) >= 9)
	{
		var queen_npc = instance_create(990, 225, obj_npc_sign);
		queen_npc.sprite_index = spr_npc_queen_relax;
		queen_npc.image_speed = 0;
		with (queen_npc)
			scr_depth();
		var lancer_npc = instance_create(875, 235, obj_npc_sign);
		lancer_npc.sprite_index = spr_lancer_dark_relax;
		lancer_npc.image_speed = 0;
		with (lancer_npc)
			scr_depth();
		var rudinn_npc = instance_create(1120, 240, obj_npc_room_animated);
		rudinn_npc.sprite_index = spr_diamond_fan;
		with (rudinn_npc)
		{
			scr_depth();
			image_speed = 0.1;
		}
	}
	else
	{
		var queen_npc = instance_create(1054, 175, obj_npc_facing);
		with (queen_npc)
			scr_depth();
	}
}
