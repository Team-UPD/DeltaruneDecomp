draw_set_color(c_white);
if (state < 2)
{
	siner += swingdir;
	if (flash)
		d3d_set_fog(true, c_white, 0, 1);
	draw_self();
	if (flash)
	{
		d3d_set_fog(false, c_black, 0, 0);
		flash = 0;
	}
	draw_line_width(x, y, xstart, -20, 2);
	image_angle = sin(siner / 20) * 15;
	x = xstart + (sin(siner / 20) * 15);
	if (ydrop < 1)
		ydrop += 0.02;
	y = lerp(-30, ystart, scr_ease_out(ydrop, -2));
}
else if (state == 3)
{
}
