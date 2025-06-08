repeat (f)
{
	radLast = radCurrent;
	radA += 0.079;
	if (radA >= pi)
		instance_destroy();
	radCurrent = ((cos(radA) + 1) / 2) * radStart;
	widthC = sin(radA) * width;
	if (radA < 3 && radA > 0.1)
	{
		if (choose(0, 1) == 0)
		{
			angle = random(360);
			temp1 = random_range(radLast, radCurrent);
			o = instance_create(x + (cos(angle) * temp1), y + (sin(angle) * temp1), o_charge_ring_particle);
			o.xs = cos(angle) * (radCurrent - radLast) * 0.5;
			o.ys = sin(angle) * (radCurrent - radLast) * 0.5;
			o.sprite_index = spr_ring_particle1;
		}
	}
}
