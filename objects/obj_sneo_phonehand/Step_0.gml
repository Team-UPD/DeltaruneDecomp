if (init == 0)
{
	if (i_ex(boss))
	{
		if (orientation == "top")
		{
			jointx = boss.x - 10;
			jointy = y - 30;
		}
		if (orientation == "bottom")
		{
			image_yscale = -1;
			jointx = boss.x - 10;
			jointy = y + 30;
		}
		remjointy = jointy;
		init = 1;
	}
}
if (btimer == 13)
{
	if (image_yscale > 0)
		image_yscale = 2;
	if (image_yscale < 0)
		image_yscale = -2;
}
if (image_yscale > 1)
	image_yscale -= 0.2;
if (image_yscale < -1)
	image_yscale += 0.2;
movingcheck = 0;
if (alt == 0)
{
	crawlsiner++;
	if (orientation == "top")
	{
		if (sin(crawlsiner / period) < 0)
		{
			wasmoving = 1;
			movingcheck = 1;
			y += (cos(crawlsiner / period) * amplitude * 2);
			x += (sin(crawlsiner / period) * amplitude);
		}
	}
	if (orientation == "bottom")
	{
		if (cos((crawlsiner / period) + 1.5707963267948966) < 0)
		{
			wasmoving = 1;
			movingcheck = 1;
			y += (sin((crawlsiner / period) + 1.5707963267948966) * amplitude * 2);
			x += (cos((crawlsiner / period) + 1.5707963267948966) * amplitude);
		}
	}
	if (i_ex(boss))
	{
		jointx = (x + boss.x) / 2;
		jointy = (remjointy + y) / 2;
	}
}
if (alt == 1 && i_ex(boss))
{
	if (orientation == "top")
		crawlsiner++;
	else
		crawlsiner--;
	xx = camerax() + 200;
	endx = boss.x - 20;
	x = xx + ((endx - xx) / 2) + (sin(crawlsiner / 12) * ((endx - xx) / 2));
	btimer++;
	threshold = 18;
	if (orientation == "top")
		threshold = 28;
	if (btimer >= threshold)
	{
		shot = instance_create(x, y, obj_basicbullet_sneo);
		if (orientation == "top")
			shot.direction = 270 + random_range(-2, 2);
		if (orientation == "bottom")
			shot.direction = 90 + random_range(-2, 2);
		shot.speed = 3;
		shot.sprite_index = spr_sneo_soundbullet;
		shot.image_angle = shot.direction;
		shot.grazepoints = 3;
		shot.target = target;
		btimer = 0;
		if (orientation == "top")
			btimer = 10;
		else
			btimer = 0;
	}
	if (i_ex(boss))
	{
		jointx = (x + boss.x) / 2;
		jointy = (remjointy + y) / 2;
	}
}
if (difficulty == 99)
{
	if (movingcheck == 0 && wasmoving == 1)
	{
		wasmoving = 0;
		repeat (3)
		{
			shot = instance_create(x, y, obj_basicbullet_sneo);
			if (orientation == "top")
				shot.direction = 270 + random_range(-10, 10);
			if (orientation == "bottom")
				shot.direction = 90 + random_range(-10, 10);
			shot.speed = 8;
			shot.sprite_index = spr_sneo_soundbullet;
			shot.image_angle = shot.direction;
			shot.target = target;
			shot.grazepoints = 3;
		}
	}
}
if (difficulty == 99)
{
	if (btimer >= 6)
	{
		shot = instance_create(x, y, obj_basicbullet_sneo);
		if (orientation == "top")
			shot.direction = 270 + random_range(-4, 4);
		if (orientation == "bottom")
			shot.direction = 90 + random_range(-4, 4);
		shot.speed = 4;
		shot.sprite_index = spr_sneo_soundbullet;
		shot.image_angle = shot.direction;
		shot.target = target;
		shot.grazepoints = 3;
		btimer = 0;
	}
}
