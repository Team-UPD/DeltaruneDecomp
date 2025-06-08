con = -1;
customcon = 0;
nisesusie = -1;
exitcollider = -1;
if (global.chapter != 2 || global.plot >= 105)
{
	if (global.flag[357] == 1)
	{
		hackernpc = instance_create(98, 320, obj_npc_sign);
		hackernpc.sprite_index = spr_npc_cursor_walk_right;
	}
	if (global.plot >= 120)
	{
		if (i_ex(obj_shapepuzzle))
		{
			with (obj_shapepuzzle)
				x = 120;
		}
		var puzzle_b = instance_create(260, 280, obj_shapepuzzle);
		puzzle_b.sprite_index = spr_darkbulb_puzzle1;
		puzzle_b.image_xscale = 2;
		puzzle_b.image_yscale = 2;
		puzzle_b.depth = 100000;
		var puzzle_c = instance_create(400, 280, obj_shapepuzzle);
		puzzle_c.sprite_index = spr_darkbulb_puzzle2;
		puzzle_c.image_xscale = 2;
		puzzle_c.image_yscale = 2;
		puzzle_c.depth = 100000;
	}
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	leftcollider = instance_create(0, 240, obj_soliddark);
	leftcollider.image_xscale = 2;
	leftcollider.image_yscale = 2;
	exitcollider = instance_create(575, 240, obj_soliddark);
	exitcollider.image_xscale = 2;
	exitcollider.image_yscale = 2;
}
