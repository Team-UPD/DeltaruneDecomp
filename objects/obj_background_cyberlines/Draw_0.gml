depth = 1005400;
xx = camerax() * 0.95;
yy = cameray();
if (init == 0)
{
	linesiner = 0;
	for (i = 0; i < 20; i++)
		liney[i] = 200 + (40 * (i * i));
	for (i = 0; i < 8; i++)
	{
		patha[i] = path_add();
		pathb[i] = path_add();
		path_set_closed(patha[i], 0);
		path_set_closed(pathb[i], 0);
		path_set_precision(patha[i], 6);
		path_set_precision(pathb[i], 6);
		for (j = 0; j < 6; j++)
		{
			path_add_point(patha[i], (i * 20) + (i * j * j * 8), -70 * j, 1);
			path_add_point(pathb[i], -((i * 20) + (i * j * j * 8)), -70 * j, 1);
		}
	}
	init = 1;
}
draw_set_color(c_lime);
linesiner++;
if (init == 1)
{
	draw_set_alpha(0.1);
	for (i = 0; i < 19; i++)
	{
		draw_set_color(merge_color(c_navy, c_black, i * 0.05));
		draw_rectangle(-100, yy - 50, room_width + 100, (yy - 50) + (i * 15), false);
	}
	draw_set_alpha(0.5 + (sin(linesiner / 12) * 0.1));
	draw_set_color(c_lime);
	for (i = 0; i < 8; i++)
	{
		draw_path(patha[i], xx + 320, yy + 320, false);
		draw_path(patha[i], xx + 319, yy + 320, false);
		draw_path(pathb[i], xx + 320, yy + 320, false);
		draw_path(pathb[i], xx + 321, yy + 320, false);
	}
	for (i = 0; i < 19; i++)
	{
		liney[i] = lerp(liney[i], -400, 0.005);
		if (liney[i] <= -100)
			liney[i] += liney[19];
		draw_ellipse((xx - 100) + (liney[i] / 2), yy + liney[i], (xx + 640 + 100) - (liney[i] / 2), yy + 600, true);
	}
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(-100, room_height - 240, room_width + 100, room_height + 2, false);
}
draw_set_alpha(1);
