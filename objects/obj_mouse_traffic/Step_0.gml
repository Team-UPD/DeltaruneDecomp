scr_depth();
if (y < (cameray() - 40))
	instance_destroy();
if (con == 0)
{
	if (y < 1440)
	{
		y += spd;
	}
	else
	{
		y = 1440;
		con++;
	}
}
if (con == 1)
{
	if (x > 1280)
	{
		x -= spd;
	}
	else
	{
		x = 1280;
		con++;
	}
}
if (con == 2)
	y -= spd;
