if (normalanim == 1)
{
	if (myinteract > 0 && instance_exists(obj_writer))
	{
		if (obj_writer.halt > 0)
		{
			image_speed_fake = 0;
			image_index_fake = 0;
		}
		if (obj_writer.halt == 0)
			image_speed_fake = remanimspeed;
	}
}
if (normalanim == 1 || normalanim == 2)
{
	if (myinteract == 0)
	{
		image_index_fake = 0;
		image_speed_fake = 0;
	}
}
if (normalanim == 3)
	image_speed_fake = 0.25;
