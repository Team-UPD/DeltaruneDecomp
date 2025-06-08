if (stayVisible == 1)
	image_alpha = 1;
if (fadeout)
{
	if (stayVisible == 1)
		stayVisible = 0;
	image_alpha = clamp(image_alpha - 0.1, 0, 1);
}
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
siner += 1;
if (fadeout && image_alpha == 0)
	instance_destroy();
