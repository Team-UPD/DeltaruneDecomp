if (global.chapter != 2 || global.plot >= 64)
{
	with (obj_solidblock_destructable)
		instance_destroy();
	layer_set_visible(layer_get_id("SLIDE_DECOR"), 1);
	layer_set_visible(layer_get_id("SLIDE_TILES"), 1);
	layer_set_visible(layer_get_id("SLIDE_TILES_Overlay"), 1);
	with (obj_doorA_musfade)
		instance_destroy();
	if (i_ex(obj_cyber_wall_lights))
	{
		with (obj_cyber_wall_lights)
		{
			if (x == 2840)
				visible = 0;
		}
	}
}
else
{
	with (obj_npc_sign)
		instance_destroy();
	layer_set_visible(layer_get_id("SLIDE_DECOR"), 0);
	layer_set_visible(layer_get_id("SLIDE_TILES"), 0);
	layer_set_visible(layer_get_id("SLIDE_TILES_Overlay"), 0);
	if (i_ex(obj_cyber_wall_lights))
	{
		with (obj_cyber_wall_lights)
		{
			if (x == 2840)
				visible = 1;
		}
	}
}
