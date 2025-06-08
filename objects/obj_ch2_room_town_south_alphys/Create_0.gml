con = -1;
cutscene_master = noone;
leaveCounter = 0;
susiewaiting = false;
nisesusie = -1;
susxpos = 0;
susypos = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	alphys = instance_create(150, 100, obj_npc_sign);
	alphys.sprite_index = spr_alphysd;
	alphysbike = instance_create(177, 110, obj_npc_sign);
	alphysbike.sprite_index = spr_npc_alphys_bike_broken;
	if (global.flag[336] == 1)
	{
		nisesusie = scr_marker(310, 125, spr_susie_walk_left_lw);
		with (nisesusie)
			scr_depth();
	}
}
