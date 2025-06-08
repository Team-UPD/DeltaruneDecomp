FA = (10 - FADEBUFFER) / 10;
if (FA > 1)
	FA = 1;
for (k = 0; k < STEP; k += 1)
{
	img = IMAGE_GONERHEAD;
	if (k == 1)
		img = IMAGE_GONERBODY;
	if (k == 2)
		img = IMAGE_GONERLEGS;
	if (LOCK[k] == 1)
	{
		s_size = abs(sin(siner / 16) / 2);
		draw_sprite_ext(img, PART[k], x - ((s_size * sprite_width) / 2), (y + sy[k]) - ((s_size * sprite_height) / 2), 2 + s_size, 2 + s_size, 0, c_white, 0.4 * FA);
		s_size = abs(sin(siner / 21) / 2);
		draw_sprite_ext(img, PART[k], x - ((s_size * sprite_width) / 2), (y + sy[k]) - ((s_size * sprite_height) / 2), 2 + s_size, 2 + s_size, 0, c_white, 0.4 * FA);
	}
}
if (CANCEL == 0)
	draw_sprite_ext(IMAGE_SOUL_BLUR, 0, initx + 10, inity - 30, 1, 1, 0, c_white, 1 * FA);
for (j = 0; j < STEP; j += 1)
{
	img = IMAGE_GONERHEAD;
	if (j == 1)
		img = IMAGE_GONERBODY;
	if (j == 2)
		img = IMAGE_GONERLEGS;
	if (s == j)
	{
		for (i = 0; i <= PARTMAX[j]; i += 1)
		{
			alpha = 1 - (abs(PARTX[j] + (i * 50)) / 120);
			draw_sprite_ext(img, i, x + PARTX[j] + (i * 50), y + sy[j], 2, 2, 0, c_white, alpha * FA);
		}
	}
	else
	{
		draw_sprite_ext(img, PART[j], x, y + sy[j], 2, 2, 0, c_white, 1 * FA);
	}
}
