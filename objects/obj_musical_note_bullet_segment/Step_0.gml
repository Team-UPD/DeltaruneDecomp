timer++;
if (timer > 90)
{
	image_alpha -= 0.05;
	if (image_alpha < 0)
		instance_destroy();
}
if (image_xscale < 0.75)
	image_xscale += 0.01;
