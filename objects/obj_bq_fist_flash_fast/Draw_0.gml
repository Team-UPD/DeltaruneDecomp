repeat (2)
{
	timer++;
	if (state == 0)
	{
		x1 -= 30;
		x2 += 30;
		if (timer > (20 / f))
			state = 2;
	}
	if (state == 1)
	{
		if (timer > (30 / f))
			state = 2;
	}
	if (state == 2)
	{
		y1 -= 0.5;
		y2 += 0.5;
		image_alpha -= 0.14;
		if (image_alpha < 0)
			instance_destroy();
	}
	draw_set_color(c_white);
	draw_set_alpha(image_alpha);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_alpha(1);
}
