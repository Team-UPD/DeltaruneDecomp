if (boss == 1)
{
	newgreen = merge_color(c_green, c_lime, image_alpha);
	for (i = 0; i < (total - 1); i++)
	{
		draw_line_width_color(wx[i] - wd, wy[i], wx[i + 1] - wd, wy[i], 2, c_black, newgreen);
		draw_line_width_color(wx[i + 1] - wd, wy[i], wx[i + 1] - wd, wy[i + 1], 2, c_green, c_black);
	}
}
draw_sprite_ext(sprite_index, image_index, x + wd, y, image_xscale * 2, image_yscale * 2, image_angle, c_teal, image_alpha - 0.4);
draw_sprite_ext(sprite_index, image_index, x + (wd / 2), y, image_xscale * 1.5, image_yscale * 1.5, image_angle, c_green, image_alpha - 0.2);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
