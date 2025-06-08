timer++;
if (fade == true)
{
	image_alpha *= 0.9;
	image_xscale *= 0.8;
	image_yscale *= 0.8;
	if (image_alpha < 0.01)
		instance_destroy();
}
if (con == 0)
{
	image_alpha += 0.1;
	if (image_alpha == 1)
		con = 1;
}
if (con == 1)
{
	if (x < 380)
		x++;
	else
		con = 2;
}
if (con == 2)
{
	if (x > 261)
		x--;
	else
		con = 1;
}
