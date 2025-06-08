event_inherited();
timer++;
if (timer == 4)
{
	image_xscale = 1.5;
	image_yscale = 1.5;
	image_angle = random(360);
}
if (timer == 8)
{
	timer = 1;
	image_xscale = 2;
	image_yscale = 2;
	image_angle = random(360);
}
