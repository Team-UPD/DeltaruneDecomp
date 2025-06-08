if (con == 0)
{
	timer++;
	image_angle += (10 / timer);
	image_alpha -= 0.04;
}
if (con == 1)
{
	timer++;
	image_angle -= (10 / timer);
	image_alpha += 0.04;
	if (x > xstart)
		instance_destroy();
}
