gentimer += 1;
if (con == 0)
{
	y += 16;
	x += 4;
	if (y >= 128)
		con = 1;
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
		if (instance_exists(obj_mainchara))
		{
			if (obj_mainchara.x != obj_mainchara.xprevious)
			{
				if (i_ex(spear))
					spear.hspeed += (obj_mainchara.x - obj_mainchara.xprevious) / 8;
			}
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
	}
}
if (con == 1.5)
{
	newtimer = 0;
	speed = 0;
	hspeed = 0;
	vspeed = 0;
	global.interact = 1;
	scr_depth();
	con = 2;
}
if (con == 2)
{
	newtimer++;
	if (newtimer == 45)
		con = 3;
	global.interact = 1;
	scr_depth();
}
if (con == 3)
{
	scr_depth();
	global.interact = 1;
	sprite_index = spr_virovirokun_hurt;
	move_towards_point(room_width / 2, -128, 12);
	if (y <= -128)
	{
		global.flag[354] = 1;
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
		global.interact = 0;
		instance_destroy();
	}
}
