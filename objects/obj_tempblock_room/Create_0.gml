block = instance_create(x, y, obj_soliddark);
block.image_xscale = image_xscale;
block.image_yscale = image_yscale;
destroymarker = 0;
if (room == room_forest_area5)
{
	talkto = instance_create(x, y, obj_readable_room1);
	talkto.image_xscale = image_xscale;
	talkto.image_yscale = image_yscale;
	tree = instance_create(x - 40, y - 120, obj_blocktree_bg);
	with (tree)
		scr_depth();
	if (global.flag[237] > 0)
	{
		with (tree)
			instance_destroy();
		with (block)
			instance_destroy();
	}
}
