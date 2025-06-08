siner += image_xscale;
if (mode == 0)
	y += (sin(siner / 12) * 5);
if (mode == 1)
	y += (sin(siner / 16) * 3);
amp = 0;
threshold = 18;
if (mode == 0)
	threshold = 22;
timer++;
if (timer >= threshold)
{
	shot[shotcount] = instance_create(x, y, obj_collidebullet);
	shot[shotcount].sprite_index = spr_spadebullet;
	shot[shotcount].image_yscale = 0.5;
	shot[shotcount].image_xscale = 0.5 * image_xscale;
	shot[shotcount].active = 1;
	singletimer[shotcount] = 0;
	shotcount++;
	timer = 0;
}
for (i = 0; i < shotcount; i++)
{
	if (i_ex(shot[i]))
	{
		if (mode == 0)
			shot[i].x = x + (singletimer[i] * 3 * -image_xscale);
		if (mode == 0)
			shot[i].y = y + (sin(abs(siner / 14)) * 30);
		if (mode == 1)
		{
			shot[i].x = x + (singletimer[i] * 3 * ((amp / 60) + 1) * -image_xscale);
			amp = abs(sin(siner / 18) * 30);
			shot[i].y = y + (sin(abs(siner / 14) + (singletimer[i] / 14)) * amp);
		}
		singletimer[i]++;
	}
}
