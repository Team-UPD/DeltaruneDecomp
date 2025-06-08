if (!rotated)
{
	if (letter == 0)
		image_angle = 0;
	else if (letter == 1)
		image_angle = 90;
	else if (letter == 2)
		image_angle = -90;
	else if (letter == 3)
		image_angle = 180;
	image_alpha = 1;
	image_xscale = 2;
	image_yscale = 2;
	active = 1;
	rotated = true;
}
