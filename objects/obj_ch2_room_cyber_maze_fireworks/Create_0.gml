if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	hacker = instance_create(394, 206, obj_npc_sign);
	with (hacker)
		scr_depth();
	hacker.sprite_index = spr_npc_cursor_walk_left;
}
check1 = 0;
check2 = 0;
check3 = 0;
fireworks_con = 0;
