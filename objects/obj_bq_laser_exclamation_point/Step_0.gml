if (state == 2)
{
	image_index -= 3;
	image_speed = 0;
	if (image_index < 0)
		instance_destroy();
}
