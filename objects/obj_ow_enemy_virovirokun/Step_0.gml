gentimer += 1;
if (con == 0)
{
	if (obj_mainchara.x >= 360)
	{
		con = 1;
		shottimer = 0;
		hspeed = choose(4, 6, 7);
	}
}
if (con == 1)
{
	timer += 1;
	if (x >= ((camerax() + 640) - 60) && hspeed > 0)
		hspeed = -hspeed;
	if (x <= camerax() && hspeed < 0)
		hspeed = -hspeed;
	if (timer >= timermax)
	{
		shotcount += 1;
		hspeed = choose(4, 6, 7);
		hspeed = clamp(hspeed, -7, 7);
		if (obj_mainchara.x < x)
			hspeed *= (-1 * multiplier);
		spear = instance_create(x + (sprite_width / 2) + (hspeed * 4), y + 65, obj_virospear);
		if (obj_mainchara.x != obj_mainchara.xprevious)
		{
			if (i_ex(spear))
				spear.hspeed += (obj_mainchara.x - obj_mainchara.xprevious) / 8;
		}
		if (i_ex(spear))
			spear.direction += random(15) - random(15);
		if (i_ex(spear))
			spear.image_angle = spear.direction;
		if (i_ex(spear))
			spear.depth = depth - 20;
		timer = 0;
		timermax = choose(16, 22, 26);
		vspeed = (-sin(gentimer / 12) * 12.5) / 10;
		if (obj_mainchara.x >= battleEndPos)
		{
			con = 2;
			shottimer = 0;
			y = floor(y);
			x = floor(x);
		}
	}
}
if (con == 2)
{
	hspeed *= 9;
	if (hspeed > -0.1)
		hspeed = 0;
	if (hspeed < 0.1)
		hspeed = 0;
	if (y > 142)
		y -= 2;
	if (x > 1560)
		x -= 2;
	if (y <= 142)
	{
		y = 142;
		hspeed = 0;
		vspeed = 0;
	}
	if (y <= 142 && obj_mainchara.y < 360)
		con = 3;
}
if (con == 3)
{
	if (y < 156)
		y += 2;
	if (x > 1560)
		x -= 2;
	if (y >= 156)
	{
		sprite_index = spr_virovirokun_hurt;
		y = 156;
		con = 4;
	}
}
if (con == 4)
{
	x -= 2;
	if ((x + nottooclose) > obj_mainchara.x)
	{
		nottooclose -= 0.5;
		nottooclose = clamp(nottooclose, 10, 999);
		x = obj_mainchara.x - nottooclose;
	}
	if (x <= 180)
		con = 5;
}
if (con == 5)
{
	tenemy1 = instance_create(x, y, obj_chaseenemy);
	with (tenemy1)
	{
		myencounter = 55;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 1;
		moveradius = 0;
		pacetype = 9;
		chasetype = 3;
		alertskip = 1;
		ignoresolid = 0;
	}
	instance_destroy();
}
