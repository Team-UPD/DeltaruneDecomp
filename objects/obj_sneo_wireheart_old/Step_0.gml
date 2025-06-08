if (init == 0)
{
	image_xscale = 0.5;
	image_yscale = 0.5;
	destroyed = 0;
	shotcount = 0;
	bouncecount = 0;
	shottype = 0;
	shottimer = 0;
	init = 1;
	con = 1;
	if (i_ex(boss))
	{
		rembossx = boss.x;
		rembossy = boss.y;
	}
	else
	{
		rembossx = bossx;
		rembossy = bossy;
	}
	var xscale = 1.5;
	var yscale = 1.5;
	if (type == 1)
	{
		xscale = 1;
		yscale = 1;
		moveframes *= 0.8;
		hp = 10;
	}
	scr_lerpvar("image_xscale", 0.5, xscale, 20, -1, "out");
	scr_lerpvar("image_yscale", 0.5, yscale, 20, -1, "out");
	if (type == 3)
	{
		sprite_index = spr_sneo_wireheart_biter;
		hp = 3;
		moveframes = 12;
	}
	if (type == 4)
	{
		sprite_index = spr_sneo_wireheart_bomb;
		hp = 1;
	}
}
if (con == 1)
{
	if (bighearttype == 1)
		moveframes = 16;
	targetx = camerax() + 300 + random(70);
	targety = cameray() + 145 + random_range(-70, 70);
	if (type == 3)
	{
		if (altbiter > 0 && altbiter < 3)
		{
			targetx = camerax() + 150;
			if (altbiter == 1)
				targety = cameray() + 240;
			else
				targety = cameray() + 75;
		}
		else
		{
			targetx = camerax() + 170 + random(70);
			targety = cameray() + 145 + random_range(-60, 60);
		}
		if (altbiter == 3)
		{
			targetx = camerax() + 350;
			targety = cameray() + 130 + random_range(-45, 0);
		}
		if (altbiter == 4)
		{
			targetx = camerax() + 350;
			targety = cameray() + 160 + random_range(45, 0);
		}
	}
	if (i_ex(obj_heart) && obj_sneo_bulletcontroller.hearttargettimer < 1 && type != 3)
	{
		if (choose(0, 1, 2) == 0)
		{
			targety = obj_heart.y + 10;
			obj_sneo_bulletcontroller.hearttargettimer = 6;
		}
	}
	movetimer = 0;
	con = 2;
	if (type == 0 || type == 1)
	{
		with (boss)
			heart_release_con = 1;
	}
}
if (con == 2)
{
	movetimer += (1 / moveframes);
	x = lerp_ease_out(bossx, targetx, movetimer, 2);
	y = lerp_ease_out(bossy, targety, movetimer, 2);
	if (movetimer >= 1)
	{
		movetimer = 0;
		con = 3;
	}
}
if (con == 3)
{
	if (type == 3 && altbiter > 0 && altbiter < 3)
	{
		movetimer++;
		if (altbiter == 1)
			y = lerp(cameray() + 240, cameray() + 75, movetimer / 21);
		if (altbiter == 2)
			y = lerp(cameray() + 75, cameray() + 240, movetimer / 21);
		if (movetimer >= 20)
		{
			movetimer = 0;
			con = 10;
			targety = y;
		}
	}
	if (type == 3 && altbiter > 2)
	{
		movetimer++;
		if (movetimer == 1)
			instance_create(x, y, obj_sneo_heart_laser);
		if (movetimer >= 16)
		{
			movetimer = 0;
			con = 10;
		}
	}
	else
	{
		con = 10;
		movetimer = 0;
	}
}
if (con == 10)
{
	movetimer += (1 / moveframes);
	x = lerp_ease_in(targetx, bossx, movetimer, 2);
	y = lerp_ease_in(targety, bossy, movetimer, 2);
	if ((movetimer > 0.5 && type == 0) || (movetimer > 0.5 && type == 1 && obj_spamton_neo_enemy.difficulty > 2))
	{
		with (boss)
			heart_release_con = 0;
	}
	if (movetimer >= 1)
	{
		movetimer = 0;
		shottimer = 0;
		con = 1;
	}
}
if (con == 2 || con == 3 || con == 10)
{
	var radial = 5;
	if (abs((x - targetx) / (targetx - bossx)) < 0.2)
	{
		shottimer--;
		if (shottimer <= 0)
		{
			if (type == 0)
			{
				firedtimer = 4;
				var dir = 0;
				if (bighearttype == 1 && y < obj_growtangle.y)
					dir = 25 + random(10);
				if (bighearttype == 1 && y > obj_growtangle.y)
					dir = (random(10) * -1) - 25;
				for (i = 0; i < radial; i++)
				{
					radialshot = instance_create(x, y, obj_collidebullet);
					with (radialshot)
						scr_bullet_init();
					radialshot.sprite_index = spr_diamondbullet;
					radialshot.direction = ((i / radial) * 180) + 110 + dir;
					radialshot.image_angle = radialshot.direction;
					radialshot.active = 1;
					radialshot.speed = 1;
					radialshot.friction = -0.3;
					if (bighearttype == 1)
					{
						radialshot.speed = 1;
						radialshot.friction = -0.23;
					}
					radialshot.depth = depth - 1;
					radialshot.target = target;
					radialshot.damage = damage;
					radialshot.grazed = 0;
					radialshot.element = 6;
				}
				shottimer = 10;
				if (bighearttype == 1)
					shottimer = 6;
			}
			else if (type == 1)
			{
				firedtimer = 4;
				for (i = 0; i < radial; i++)
				{
					radialshot = instance_create(x, y, obj_collidebullet);
					with (radialshot)
						scr_bullet_init();
					radialshot.sprite_index = spr_diamondbullet;
					radialshot.direction = point_direction(radialshot.x, radialshot.y, obj_heart.x + 10, obj_heart.y + 10);
					radialshot.image_angle = radialshot.direction;
					radialshot.image_xscale = 0.5;
					radialshot.image_yscale = 0.5;
					radialshot.active = 1;
					radialshot.speed = 3;
					radialshot.friction = -0.2;
					radialshot.depth = depth - 1;
					radialshot.target = target;
					radialshot.damage = damage;
					radialshot.grazed = 0;
					radialshot.element = 6;
				}
				shottimer = 6;
			}
		}
	}
}
