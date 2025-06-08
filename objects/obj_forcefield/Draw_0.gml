if (black_override == 1)
{
	draw_set_color(c_black);
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false);
}
else
{
	if (basic == 1 && ignorealpha == 0)
	{
		cl = distance_to_object(obj_mainchara) / f;
		if (cl > 40)
			cl = 40;
		if (cl < 10)
			cl = 10;
		image_alpha = 1 - ((cl - 10) / 30);
	}
	if (stayVisible == 1 && ignorealpha == 0)
		image_alpha = 1;
	var height = image_yscale / f;
	if (image_yscale > 2)
	{
		for (i = 0; i < height; i += 1)
		{
			done = 0;
			if (i == 0)
			{
				draw_sprite_ext(spr_forcefield_top, siner / 3, x, y + (i * 20 * f), 1 * f, 1 * f, 0, c_white, image_alpha);
				done = 1;
			}
			if (i > 0 && done == 0)
			{
				if ((i + 1) >= height)
					draw_sprite_ext(spr_forcefield_top, siner / 3, x, y + (i * 20 * f) + (20 * f), 1 * f, -1 * f, 0, c_white, image_alpha);
				else
					draw_sprite_ext(spr_forcefield_middle, siner / 3, x, y + (i * 20 * f), 1 * f, 1 * f, 0, c_white, image_alpha);
				done = 1;
			}
		}
	}
	var width = image_xscale / f;
	if (image_xscale > 2)
	{
		for (j = 0; j < width; j += 1)
		{
			done = 0;
			if (j == 0)
			{
				draw_sprite_ext(spr_forcefield_right, siner / 3, x + (j * 20 * f), y, 1 * f, 1 * f, 0, c_white, image_alpha);
				done = 1;
			}
			if (j > 0 && done == 0)
			{
				if ((j + 1) >= width)
					draw_sprite_ext(spr_forcefield_right, siner / 3, x + (j * 20 * f) + (20 * f), y, -1 * f, 1 * f, 0, c_white, image_alpha);
				else
					draw_sprite_ext(spr_forcefield_right_middle, siner / 3, x + (j * 20 * f) + (20 * f), y, -1 * f, 1 * f, 0, c_white, image_alpha);
				done = 1;
			}
		}
	}
	if (global.flag[8] == 0)
		siner += 1;
	else
		siner += 0.25;
}
