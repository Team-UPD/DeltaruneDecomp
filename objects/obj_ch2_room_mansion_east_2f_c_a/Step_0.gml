if (dothis == true)
{
	saucerCount = 0;
	with (obj_saucer)
	{
		if (mode == 2 && con == 0)
			other.saucerCount++;
	}
	if (saucerCount == 1)
	{
		with (obj_saucer)
		{
			if (mode == 2 && con == 0)
			{
				treasure = instance_create(x, y, obj_saucer);
				treasure.mode = 0;
				treasure.makecontent = 1;
				treasure.contentsprite = spr_treasurebox;
				instance_destroy();
			}
		}
	}
	if (instance_exists(obj_marker))
	{
		with (obj_marker)
		{
			if (sprite_index == spr_treasurebox)
			{
				box = instance_create(x + 30, y + 12, obj_treasure_room);
				with (box)
					depth = other.depth - 10;
				if (other.complete == 0)
					other.complete = 1;
				instance_destroy();
			}
		}
	}
}
if (complete == 1)
{
	if (instance_exists(obj_saucer_ufo_bullet))
	{
		with (obj_saucer_ufo_bullet)
			active = 0;
	}
	if (instance_exists(obj_saucer_ufo))
	{
		with (obj_saucer_ufo)
		{
			con = 2;
			hspeed = 24;
		}
	}
}
