timer++;
if (spin == -1)
	image_angle -= 4;
if (spin == 1)
	image_angle += 4;
if (timer > 11)
{
	image_alpha -= 0.1;
	if (image_alpha < 0)
		instance_destroy();
}
