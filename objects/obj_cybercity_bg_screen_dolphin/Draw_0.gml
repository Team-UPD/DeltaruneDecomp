frametimer++;
frametimerthreshold = 2;
if (con == 2)
	frametimerthreshold = 4;
if (frametimer >= frametimerthreshold)
{
	if (con == 0)
	{
		timer++;
		image_xscale = lerp(image_xscale, 3, 0.5);
		image_yscale = image_xscale;
		if (image_xscale >= 2.5)
			con = 1;
	}
	if (con == 1)
	{
		image_xscale = lerp(image_xscale, 2, 0.5);
		image_yscale = image_xscale;
		if ((abs(image_xscale) - 2) <= 0.05)
		{
			image_xscale = 2;
			image_yscale = 2;
			con = 2;
		}
	}
	if (con == 2)
	{
		siner++;
		y += (sin(siner / 4) * 0.2);
		y = ystart + random_range(-2, 2);
		x = xstart + random_range(-2, 2);
	}
	frametimer = 0;
}
animtimer++;
if (animtimer == 15)
	image_index++;
if (animtimer == 30)
{
	image_index--;
	animtimer = 0;
}
draw_self();
