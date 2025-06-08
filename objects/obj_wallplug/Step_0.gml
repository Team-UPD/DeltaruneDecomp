if (con == 0)
{
	if (x >= (__view_get(e__VW.XView, 0) + 40) && x <= (__view_get(e__VW.XView, 0) + 600))
	{
		if (obj_mainchara.x == obj_mainchara.xprevious && eggcon == 0)
			eggtimer += 1;
		if (eggtimer >= 600 && eggcon == 0)
		{
			eggtimer = 0;
			eggcon = 1;
		}
	}
	if (eggcon == 1)
	{
		if (image_index <= 10)
			image_index += 0.1;
	}
	if ((obj_mainchara.x + 10) >= (x - 150) && (obj_mainchara.x + 10) <= (x + 150))
	{
		con = 1;
		sprite_index = spr_ch2_gimmick_wallplug_attack;
		if (obj_mainchara.x < x)
			image_yscale = -2;
		image_speed = 0.2;
		eggtimer = 0;
		eggcon = 0;
		image_index = 0;
		image_angle = point_direction(x, y, obj_mainchara.x + 10, obj_mainchara.y + 20);
		direction = image_angle;
		speed = 4;
		timer = 0;
		lerped = 0;
	}
}
if (con == 1)
{
	timer += 1;
	if (timer < 13)
	{
		if (timer == 1)
			snd_play(snd_wallclaw);
		speed += 2;
	}
	if (timer >= 13)
	{
		speed = 0;
		curx = x;
		cury = y;
	}
	if (timer >= 16)
	{
		lerped = lerped + (lerped / 10) + 0.02;
		x = lerp(curx, basex, lerped);
		y = lerp(cury, basey, lerped);
		if (lerped >= 1)
		{
			x = basex;
			y = basey;
			image_index = 0;
			image_speed = 0;
			con = 0;
			image_yscale = 2;
			if ((obj_mainchara.x + 10) >= (x - 150) && (obj_mainchara.x + 10) <= (x + 150))
			{
				con = 1;
				sprite_index = spr_ch2_gimmick_wallplug_attack;
				if (obj_mainchara.x < x)
					image_yscale = -2;
				image_speed = 0.5;
				eggtimer = 0;
				eggcon = 0;
				image_index = 0;
				image_angle = point_direction(x, y, obj_mainchara.x + 20, obj_mainchara.y + 35);
				direction = image_angle;
				speed = 4;
				timer = 0;
				lerped = 0;
			}
			else
			{
				sprite_index = spr_ch2_gimmick_wallplug;
			}
			eggtimer = 0;
			eggcon = 0;
		}
	}
}
