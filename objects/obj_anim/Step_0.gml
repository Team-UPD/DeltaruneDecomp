if (active == 0)
	instance_destroy();
if (active == 2)
{
	if (instance_exists(target))
	{
		frame += framespeed;
		if (frame >= (maxframe - 1))
		{
			done = 1;
			frame = maxframe - 1;
		}
		target.sprite_index = sprite_index;
		target.image_index = frame;
	}
	else
	{
		instance_destroy();
	}
	if (done == 1)
		instance_destroy();
}
if (active == 1)
{
	if (instance_exists(target))
	{
		target.sprite_index = sprite_index;
		target.image_speed = 0;
		target.image_index = 0;
	}
	else
	{
		instance_destroy();
	}
	active = 2;
}
