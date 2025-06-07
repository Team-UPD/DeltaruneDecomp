if (actual == 0)
{
	siner += 1;
	dir += 2;
	xdir = dir + 180;
	if (norot == 1)
	{
		for (i = 0; i < 20; i += 1)
		{
			t = ((i * 2 * pi) / 20) + (siner / 60);
			xx = 16 * (sin(t) * sin(t) * sin(t));
			yy = (13 * cos(t)) - (5 * cos(2 * t)) - (2 * cos(3 * t)) - cos(4 * t);
			xxx = obj_heart.x + 8 + (xx * radius);
			yyy = (obj_heart.y + 8) - (yy * radius);
			draw_sprite(spr_heartbullet, 0, xxx, yyy);
		}
	}
}
if (actual == 1)
{
	if (made == 0)
	{
		for (t = 0; t < 16; t += 1)
		{
			bul[t] = instance_create(-20, -20, obj_regularbullet_permanent);
			bul[t].damage = damage;
			with (bul[t])
			{
				grazepoints = 2;
				timepoints = 1;
				depth = 0;
				image_alpha = 0;
				sprite_index = spr_heartbullet;
			}
		}
		made = 1;
	}
	if (type == 0)
	{
		if (radius > maxradius)
			radius -= 5;
		else
			radius += (sin(siner / 10) / 2);
	}
	if (type == 1)
	{
		if (radius > maxradius && radcon == 0)
		{
			radius -= 4;
		}
		else
		{
			radcon = 1;
			radius += 8;
			active = 0;
			image_alpha -= 0.1;
		}
	}
	dir += 2;
	siner += 1.5;
	tcount = 0;
	for (t = 0; t < 16; t += 1)
	{
		if (instance_exists(bul[t]))
		{
			tcount += 1;
			if (radcon == 0)
			{
				with (bul[t])
				{
					if (image_alpha < 1)
						image_alpha += 0.1;
				}
			}
			xx = sin(((pi * t) / 8) + (siner / 20)) * radius;
			yy = cos(((pi * t) / 8) + (siner / 20)) * radius;
			xxx = thisx + 8 + xx;
			yyy = (thisy + 8) - yy;
			bul[t].x = xxx;
			bul[t].y = yyy;
			if (radcon == 1)
			{
				with (bul[t])
				{
					image_alpha -= 0.1;
					active = 0;
					if (image_alpha <= 0.1)
						instance_destroy();
				}
			}
		}
	}
	if (tcount == 0)
		instance_destroy();
}
