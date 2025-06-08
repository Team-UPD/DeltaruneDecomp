if (con == 1)
	image_angle += 10;
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
