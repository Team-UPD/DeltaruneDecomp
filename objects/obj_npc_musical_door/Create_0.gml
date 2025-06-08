con = -1;
fade_timer = 0;
sold_out = false;
plugboynpc = instance_create(142, 304, obj_npc_room);
plugboynpc.sprite_index = spr_npc_plugboy_static;
if (global.plot < 60)
{
	capnnpc = instance_create(195, 137, obj_npc_room_animated);
	capnnpc.sprite_index = spr_npc_hatguy;
	kknpc = instance_create(355, 113, obj_npc_room_animated);
	kknpc.sprite_index = spr_npc_kk;
	rebelnpc = instance_create(430, 310, obj_npc_room);
	rebelnpc.sprite_index = spr_npc_plugboy_bandana;
}
else
{
	if (global.flag[416] == 0)
	{
		global.flag[416] = 1;
		scr_tempsave();
	}
	instance_destroy();
}
