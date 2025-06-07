draw_self();
if (angledraw == 1)
{
	if (throwready == 1)
	{
		if (throwalpha < 1)
			throwalpha += 0.125;
		draw_set_alpha(throwalpha);
		draw_set_color(merge_color(c_blue, c_white, 0.5));
		for (i = 0; i < 12; i += 1)
		{
			fr = 2;
			draw_circle(rx + (lx * ((i * fr) + fro)), (ry + (ly * ((i * fr) + fro)) + ralyoff[(i * fr) + fro]) - 20, 4, 0);
			draw_line_width(rx + (lx * ((i * fr) + fro)), (ry + (ly * ((i * fr) + fro)) + ralyoff[(i * fr) + fro]) - 20, rx + (lx * (((i + 1) * fr) + fro)), (ry + (ly * (((i + 1) * fr) + fro)) + ralyoff[((i + 1) * fr) + fro]) - 20, 2);
			draw_sprite_ext(spr_throwarrow, 0, rx, ry - 20, 2, 2, angle, c_red, 1);
		}
		draw_set_alpha(1);
	}
	if (throwready == 0)
	{
		draw_set_color(c_red);
		draw_sprite_ext(spr_throwarrow, 0, rx, ry - 20, 2, 2, angle, c_white, 1);
	}
}
