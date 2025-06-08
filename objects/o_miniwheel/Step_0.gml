timer += 1;
image_xscale += 0.05;
image_yscale += 0.05;
image_angle += rotspeed;
if (timer >= 10)
{
	image_alpha -= 0.05;
	if (image_alpha <= 0)
		instance_destroy();
}
