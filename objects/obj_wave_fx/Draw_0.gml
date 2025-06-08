if (drawself)
	draw_self();
wave_siner += 1;
if (mode == 0)
{
	for (i = 0; i < wave_max; i += 1)
		draw_sprite_part(sprite_index, 0, i, 0, 1, sprite_height, x + i + (sin((wave_siner + i) / 30) * 2), y);
}
if (mode == 1)
{
	wave_max = sprite_height;
	for (i = 0; i < wave_max; i += thickness)
		draw_sprite_part(sprite_index, 0, 0, i * thickness, sprite_width, thickness, x + i + (sin((wave_siner + i) / 30) * 2), y);
}
