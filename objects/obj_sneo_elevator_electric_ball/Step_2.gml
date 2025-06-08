if (alarm[0] == 179 && type == 2)
{
	if (y < obj_growtangle.y)
		vspeed = 2;
	else
		vspeed = -2;
}
if (type == 1)
{
	siner += 0.5;
	x = xstart + (sin(siner / 6) * 50);
}
