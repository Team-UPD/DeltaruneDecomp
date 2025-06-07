timer += 1;
if (timer == 1)
{
	initsiner = random(400);
	for (i = 0; i < ringmax; i += 1)
	{
		ringsize[i] = 1 + (0.5 * i);
		ringradius[i] = 2 + (i * 12);
		ringspeed[i] = 0.3;
		ringalpha[i] = 0;
		ringsiner[i] = initsiner;
	}
}
if (timer >= 2)
{
	for (i = 0; i < ringmax; i += 1)
	{
		ringsiner[i] += (i + 2) * ringalpha[i];
		if (timer < 12 && ringalpha[i] < 1)
			ringalpha[i] += 0.2;
		if (timer >= 24)
			ringalpha[i] -= 0.1;
		draw_sprite_ext(spr_hypnoring, 0, x + (sin(ringsiner[i] / 12) * ringradius[i]), y + (cos(ringsiner[i] / 12) * ringradius[i]), ringsize[i], ringsize[i], 0, c_white, ringalpha[i]);
	}
	if (timer >= 38)
		instance_destroy();
}
