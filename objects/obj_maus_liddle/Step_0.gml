if (con == 0)
{
	timer++;
	if (timer >= 20)
	{
		timer = 0;
		fakey = 0;
		con = 1;
		hspeed = 0;
		vspeed = 0;
	}
}
if (con == 1)
{
	siner += sineradd;
	x += random_range(1, -1);
	y += random_range(1, -1);
	amplitude = lerp(amplitude, maxamplitude, 0.2);
	x += (sin(siner / 8) * amplitude);
	x = clamp(x, xx + 200, xx + 600);
	y = clamp(y, yy + 40, yy + 240);
	timer++;
	btimer = 0;
}
if (con == 5)
{
}
if (captured == 1)
{
	if (instance_exists(obj_maus_split_basket))
	{
		image_alpha = obj_maus_split_basket.image_alpha;
		if (image_alpha <= 0.2)
			instance_destroy();
	}
}
if (con == 2)
{
	if (!i_ex(creator))
	{
		instance_destroy();
	}
	else
	{
		timer++;
		if (timer >= 3)
		{
			timer = 0;
			move_towards_point(creator.x + (creator.sprite_width / 2), creator.y + (creator.sprite_height / 2), 10 + random(6));
		}
		btimer++;
		if (btimer >= 30)
		{
			with (creator)
			{
				if (mcon == 2)
					mcon = 3;
			}
			image_xscale -= 0.2;
			image_yscale -= 0.2;
			if (image_xscale <= 0)
				instance_destroy();
		}
	}
}
