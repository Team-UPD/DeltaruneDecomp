if (init == 0)
{
	with (tasque)
		path_start(path_tasquePaintings_tasque, 200, path_action_continue, 1);
	with (swatch)
		path_start(path_tasquePaintings_swatchling, 200, path_action_continue, 1);
	init = 1;
}
if (i_ex(tasque) && i_ex(swatch))
{
	if (global.interact == 0)
	{
		pathProg += 0.6;
		timer++;
	}
	if (pathProg > 100)
		pathProg -= 100;
	pathProg2 = pathProg + 50;
	if (pathProg2 > 100)
		pathProg2 -= 100;
	tasque.path_position = pathProg / 100;
	swatch.path_position = pathProg2 / 100;
	with (swatch)
	{
		if (direction == 90 || direction == 180)
			facing = 0;
		if (direction == 270 || direction == 0)
			facing = 1;
	}
	with (tasque)
	{
		if (direction == 90 || direction == 180)
			sprite_index = spr_tasque_idle;
		if (direction == 270 || direction == 0)
			sprite_index = spr_tasque_idle_flipped;
	}
	if ((timer % 8) == 0)
	{
		with (tasque)
		{
			if (direction == 270)
			{
				printx = 360 + (random(10) * choose(-1, 1));
				printy = (y + sprite_height) - 8;
			}
			if (direction == 90)
			{
				printx = 720 + (random(10) * choose(-1, 1));
				printy = (y + sprite_height) - 8;
			}
			if (direction == 180)
			{
				printx = x + (sprite_width / 2);
				printy = 480 + ((10 + random(10)) * choose(-1, 1));
			}
			if (direction == 0)
			{
				printx = x + (sprite_width / 2);
				printy = 840 + ((10 + random(10)) * choose(-1, 1));
			}
			if (direction == 180 || direction == 90 || direction == 270 || direction == 0)
			{
				pawprint = instance_create(printx, printy, obj_tasquePawPrint);
				pawprint.image_angle = direction - 90;
				pawprint.depth = 800000;
				scr_darksize(pawprint);
			}
		}
	}
}
