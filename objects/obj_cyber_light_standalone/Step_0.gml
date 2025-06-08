siner++;
if (init == 0)
{
	wd = sprite_width / 2;
	if (bosscheck == 0)
	{
		with (obj_cyber_light)
			bosscheck = 1;
		boss = 1;
		depth += 1;
		total = instance_number(object_index);
		for (i = 0; i < total; i++)
		{
			which[i] = instance_find(object_index, i);
			which[i].siner = i * 4;
			wx[i] = which[i].x;
			wy[i] = which[i].y;
		}
	}
	init = 1;
}
image_alpha = (sin(siner / 12) * 0.2) + 0.8;
