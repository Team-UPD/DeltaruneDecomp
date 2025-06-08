if (global.flag[362] == 1 && global.flag[382] == 0)
{
	layer_set_visible("TILES_LOCKED_DOOR", 0);
	instance_destroy();
}
if (instance_exists(obj_npc_sign))
{
	with (obj_npc_sign)
	{
		if (global.flag[362] == 1 && global.flag[382] == 0)
			instance_destroy();
	}
}
