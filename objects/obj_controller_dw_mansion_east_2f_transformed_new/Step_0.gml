if (sidea == 0 && global.flag[395] == 1)
{
	layer_set_visible("TILES_SIDE_A", 1);
	with (obj_solidblock_destructable)
	{
		if (flag == 1)
			instance_destroy();
	}
	sidea = true;
}
if (sideb == 0 && global.flag[396] == 1)
{
	layer_set_visible("TILES_SIDE_B", 1);
	with (obj_solidblock_destructable)
	{
		if (flag == 2)
			instance_destroy();
	}
	sideb = true;
}
