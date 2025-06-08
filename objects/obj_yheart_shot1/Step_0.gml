if (big == 1)
{
	image_alpha += (0.1 * f);
	if (image_xscale < 1)
		image_xscale += (0.1 * f);
	if (image_yscale > 1)
		image_yscale -= (0.1 * f);
}
if (x >= (room_width + 80))
	instance_destroy();
