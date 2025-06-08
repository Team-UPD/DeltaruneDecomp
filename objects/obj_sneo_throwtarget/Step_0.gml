if (growstate == 0 && image_xscale < 1)
	image_xscale += 0.08;
if (growstate == 1)
{
	image_xscale -= 0.08;
	if (image_xscale < 0)
		instance_destroy();
}
if (stopmoving == 0)
	siner += (0.07 + n);
path_speed = 4;
path_position = 0.25 + (sin(siner) / 8);
if (con == 5)
{
	if (x < (xstart + 40))
		x += 10;
	con = 6;
}
if (con == 6)
{
	if (x > xstart)
		x -= 2;
}
if (con == 7)
{
	if (x < (xstart + 40))
		x += 8;
	con = 6;
}
