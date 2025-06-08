siner++;
x = xstart + (sin(siner / 6) * 4);
if (scale < 1)
{
	scale += 0.1;
	image_xscale = scale;
	image_yscale = scale;
}
if (y < 827 && depth != 0)
	depth = 0;
