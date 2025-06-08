if (con == 0)
{
	image_alpha += 0.25;
	y += 4;
	if (image_alpha >= 1.5)
	{
		image_alpha = 1;
		con = 1;
		y = ystart + 40;
	}
}
if (con == 1 && !d_ex())
{
	timer++;
	if (timer >= 2)
	{
		if (direction == 90 || direction == 270)
		{
			if (direction == 90)
			{
				if (place_meeting(x, y - 40, obj_solidblock))
				{
					direction = 0;
					x += 40;
				}
				else
				{
					direction = 90;
					y -= 40;
				}
			}
			if (direction == 270)
			{
				if (place_meeting(x, y + 40, obj_solidblock))
				{
					direction = 0;
					x += 40;
				}
				else
				{
					direction = 270;
					y += 40;
				}
			}
		}
		else if (place_meeting(x, y - 40, obj_solidblock) && place_meeting(x, y + 40, obj_solidblock))
		{
			direction = 0;
			x += 40;
		}
		else if (!place_meeting(x, y - 40, obj_solidblock))
		{
			direction = 90;
			y -= 40;
		}
		else if (!place_meeting(x, y + 40, obj_solidblock))
		{
			direction = 270;
			y += 40;
		}
		movex = 0;
		movey = 0;
		timer = 0;
	}
}
if (con == 2)
{
	depth += 1;
	y -= 4;
	image_alpha -= 0.25;
	deathtimer++;
	if (deathtimer >= 3)
		instance_destroy();
}
