timer++;
minitimer++;
minitimerthreshold = 2;
timerthreshold = 12;
for (i = 0; i < l; i++)
{
	if (mode < 2)
	{
		yscale[i] = lerp(yscale[i], 0, 0.06);
		if (yscale[i] > 0)
			yscale[i] -= 0.02;
	}
	if (mode == 2 && minitimer >= minitimerthreshold)
	{
		barsiner[i]++;
		yscale[i] = (0.6 * h) + (sin(barsiner[i] / 2) * 0.3 * h) + (sin(barsiner[i] / 3) * 0.1 * h);
	}
	if (mode == 0)
	{
		if (yscale[i] < (0.8 * h))
		{
			if (floor(random(12)) == 0)
				yscale[i] = 1 * h;
		}
	}
	if (mode == 1)
	{
		if (timer >= timerthreshold)
			yscale[i] = min(yscale[i] + random(0.5 * h), 1 * h);
	}
	draw_sprite_ext(sprite_index, image_index, x + (i * 40), y, 1, yscale[i], 0, color[i], image_alpha);
}
if (timer >= timerthreshold)
	timer = 0;
if (minitimer >= minitimerthreshold)
	minitimer = 0;
