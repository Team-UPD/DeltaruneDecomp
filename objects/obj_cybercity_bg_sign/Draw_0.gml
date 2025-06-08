for (i = 0; i < l; i++)
{
	for (j = 0; j < h; j++)
		draw_sprite_ext(sprite_index, image_index, x + (i * 80), y + (j * 80), 2, 2, 0, c_white, (sin(i + j + (siner / 8)) * 0.5) + 0.5);
}
siner--;
