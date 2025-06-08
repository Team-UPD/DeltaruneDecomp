if (active == 1)
{
	alpha -= fadespeed;
	growth += growspeed;
	draw_set_alpha(alpha);
	draw_set_color(color);
	draw_rectangle(x - growth - 2, y - growth - 2, x + growth + 2, y + growth + 2, true);
	draw_set_alpha(1);
	if (alpha <= 0)
		instance_destroy();
}
