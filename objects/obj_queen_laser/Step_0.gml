if (image_xscale < 10)
	image_xscale += 0.5;
if (image_xscale >= 6)
{
	speed += 4;
	if (speed >= 20)
	{
		active = 0;
		if (image_yscale >= 1)
			image_yscale += 0.2;
		image_alpha -= 0.2;
		if (image_alpha <= 0)
			instance_destroy();
	}
}
