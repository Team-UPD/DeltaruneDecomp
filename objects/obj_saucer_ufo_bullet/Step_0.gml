if (explosiontype == 0)
{
	if (image_xscale < 4)
		image_xscale += 0.1;
}
if (explosiontype == 1)
{
	if (image_xscale < 2)
		image_xscale += 0.05;
}
timer++;
if (timer > 150)
	active = 0;
if (active == 0)
{
	if (image_alpha > 0.1)
		image_alpha *= 0.7;
	else
		alarm[0] = 1;
}
friction -= 0.025;
speed = clamp(speed, -8, 8);
