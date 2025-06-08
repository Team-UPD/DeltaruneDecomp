if (visible == true && pushable == true)
{
	if (global.interact == 0)
	{
		movedir = global.facing;
		wd = sprite_width;
		ht = sprite_height;
		ix = 0;
		iy = 0;
		confirm = 1;
		if (movedir == 0)
		{
			ix = x + 2;
			iy = y + ht;
		}
		if (movedir == 1)
		{
			ix = x + wd;
			iy = y + 2;
		}
		if (movedir == 2)
		{
			ix = x + 2;
			iy = (y - ht) + 5;
		}
		if (movedir == 3)
		{
			ix = (x - wd) + 5;
			iy = y + 2;
		}
		if (collision_rectangle(ix, iy, ix + 15, iy + 15, obj_solidblock, false, true))
			confirm = 0;
		if (collision_rectangle(ix, iy, ix + 15, iy + 15, obj_interactablesolid, false, true))
			confirm = 0;
		if (collision_rectangle(ix, iy, ix + 15, iy + 15, obj_solidenemy, false, true))
			confirm = 0;
		snd_play(snd_noise);
		if (confirm == 1)
		{
			global.interact = 1;
			movecourse = 1;
			movetimer = 0;
		}
	}
}
