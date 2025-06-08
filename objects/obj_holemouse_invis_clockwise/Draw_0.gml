l = image_xscale / 2;
h = image_yscale / 2;
for (i = 0; i < l; i++)
{
	for (j = 0; j < h; j++)
		draw_sprite_ext(sprite_index, 0, x + (i * 40), y + (j * 40), 2, 2, 0, c_white, image_alpha);
}
