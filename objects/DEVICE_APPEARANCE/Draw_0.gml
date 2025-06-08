if (t <= 0)
{
	xs = 1 + (t / 10);
	if (xs < 0)
		xs = 0;
	draw_sprite_part_ext(sprite_index, 0, 0, m, sprite_width, 1, (x - ((sprite_width / 2) * xs)) + (sprite_width / 2), (y + m) - 400, xs, 800, c_white, 1);
}
if (t > 0 && t < m)
{
	draw_sprite_part(sprite_index, 0, 0, m - t, sprite_width, 1 + (t * 2), x, (y - t) + m);
	draw_sprite_part_ext(sprite_index, 0, 0, m - t - 1, sprite_width, 1, x, (y - 400 - t) + m, 1, 400, c_white, 1);
	draw_sprite_part_ext(sprite_index, 0, 0, m + t, sprite_width, 1, x, y + t + m, 1, 400, c_white, 1);
}
if (t >= m)
	draw_sprite(sprite_index, 0, x, y);
if (momentum > 0)
{
	if (t < (tmax + 2))
		t += momentum;
}
if (momentum < 0)
	t += momentum;
