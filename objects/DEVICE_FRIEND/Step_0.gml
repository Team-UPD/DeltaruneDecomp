if ((x + sprite_width) > camerax())
	active = 1;
if (active == 1)
{
	image_alpha *= 0.7;
	if (image_alpha < 0.01)
		instance_destroy();
}
