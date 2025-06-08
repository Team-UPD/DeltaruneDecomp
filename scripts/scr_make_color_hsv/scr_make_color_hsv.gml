function scr_make_color_hsv(arg0, arg1, arg2)
{
	var hue = arg0;
	if (hue < 0)
		hue = 256 - (-hue % 256);
	else
		hue %= 256;
	return make_color_hsv(hue, arg1, arg2);
}
