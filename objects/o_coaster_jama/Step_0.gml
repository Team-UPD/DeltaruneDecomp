if (type == 0)
{
	if (con == 0)
	{
		if (chancer == 1)
			sprite_index = spr_coaster_barricade_alt;
		contimer++;
		flashtimer++;
		if (flashtimer == 2)
		{
			if (image_alpha == 0)
				image_alpha = 1;
			else
				image_alpha = 0;
			flashtimer = 0;
		}
		if (contimer >= waitamount && image_alpha == 1)
			con = 1;
	}
	if (con == 1)
	{
		hspeed = -2;
		gravity_direction = 180;
		gravity = 0.5;
		con = 2;
	}
	if (con == 2)
	{
		if (x <= -20)
			instance_destroy();
	}
}
if (type == 1)
{
	contimer++;
	if (contimer >= waitamount)
	{
		active = 0;
		image_alpha -= 0.1;
		if (image_alpha <= 0)
			instance_destroy();
	}
}
