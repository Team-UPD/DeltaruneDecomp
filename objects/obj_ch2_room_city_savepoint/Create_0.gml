con = -1;
if (global.plot < 75)
	global.plot = 75;
if (global.plot < 100)
{
	capntalked = 0;
	sweetnpc = instance_create(210, 100, obj_npc_room_animated);
	sweetnpc.sprite_index = spr_npc_sweet;
	with (sweetnpc)
		scr_depth();
	capnnpc = instance_create(282, 133, obj_npc_room_animated);
	capnnpc.sprite_index = spr_npc_hatguy;
	with (capnnpc)
		scr_depth();
	kknpc = instance_create(355, 83, obj_npc_room_animated);
	kknpc.sprite_index = spr_npc_kk;
	with (kknpc)
		scr_depth();
}
else
{
	plugboy_npc = instance_create(288, 144, obj_npc_room);
	plugboy_npc.sprite_index = spr_npc_plugboy_bandana;
	with (plugboy_npc)
		scr_depth();
}
