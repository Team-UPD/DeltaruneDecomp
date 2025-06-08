if (global.plot < 100)
{
	plugboy_npc = instance_create(420, 270, obj_npc_room);
	plugboy_npc.sprite_index = spr_npc_plugboy_bandana;
	with (plugboy_npc)
		scr_depth();
}
else
{
	instance_destroy();
}
