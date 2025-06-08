if (con == 1)
{
	image_alpha -= 0.2;
	if (image_alpha < -0.8)
		instance_destroy();
}
