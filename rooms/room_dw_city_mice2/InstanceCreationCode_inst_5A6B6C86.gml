extflag = "toilet";
if ((global.flag[915] != 0 && global.flag[916] == 0) || global.plot < 120)
{
	instance_destroy();
}
else
{
	sprite_index = spr_toilet_together;
	scr_darksize(id);
	scr_depth();
	with (obj_npc_sign)
	{
		if (sprite_index != spr_toilet_together)
			instance_destroy();
	}
	safe_delete(obj_rotationTile_track1);
	safe_delete(obj_rotationTile_track2);
	safe_delete(obj_rotationTile_track3);
	safe_delete(obj_rotationController_track);
	layer_set_visible(layer_get_id("SPRITES_Decor"), 0);
	safe_delete(obj_holemouse_generator);
	safe_delete(obj_holemouse_goal);
}
