if (homing == 1)
{
	dir = random(360);
	radius = 200 + random(40);
	dirx = lengthdir_x(radius, dir);
	diry = lengthdir_y(radius, dir);
	xx = dirx + obj_mainchara.x + 10;
	yy = diry + obj_mainchara.y + 40;
	instance_create(xx, yy, obj_overworld_spade_homing);
	alarm[0] = 10;
}
if (homing == 0)
{
	radius = -300 + random(1000);
	if (global.facing == 3)
		radius *= -1;
	alarm[0] = 5;
	fallspade = instance_create(obj_mainchara.x + radius, __view_get(e__VW.YView, 0) - 500, obj_overworld_spade);
	with (fallspade)
	{
		image_angle = 270;
		gravity = 0.08;
		speed = 0;
		vspeed = 6;
		hspeed = -0.8 + random(1.6);
	}
}
if (homing == 2)
{
	alarmamt = 10 - (intensity / 20);
	if (alarmamt < 5)
		alarmamt = 5;
	with (sidespade[side])
		speed = 11;
	alarm[0] = alarmamt;
	if (side == 0)
		radius = 80;
	else
		radius = 560;
	sidespade[side] = instance_create(radius, __view_get(e__VW.YView, 0) + 30 + random(420), obj_overworld_spade);
	if (side == 0)
		sidespade[side].direction = 0;
	if (side == 1)
		sidespade[side].direction = 180;
	with (sidespade[side])
	{
		damage = 17;
		if (global.hp[1] <= 40)
			damage = 13;
		image_angle = direction;
	}
	intensity += 1;
}
if (homing == 3)
{
	radius = 100 + random(900);
	if (global.facing == 3)
		radius -= 500;
	alarm[0] = 7;
	fallspade = instance_create(obj_mainchara.x + radius, choose(__view_get(e__VW.YView, 0) + 550, __view_get(e__VW.YView, 0) - 100), obj_overworld_spade);
	with (fallspade)
	{
		damage -= 4;
		damage += (global.battledf[0] * 2);
		image_xscale = 1.5;
		image_yscale = 1.5;
		friction = -0.1;
		sprite_index = spr_diamondbullet;
		if (y >= (room_height / 2))
		{
			image_angle = 135;
			vspeed = -5;
			hspeed = -5;
		}
		else
		{
			image_angle = 225;
			vspeed = 5;
			hspeed = -5;
		}
	}
}
if (homing == 4)
{
	slow_bonus = 1 - (global.hp[1] / global.maxhp[1]);
	alarm[0] = 20 + (15 * slow_bonus);
	side = choose(0, 1);
	if (obj_mainchara.y >= 400)
	{
		for (i = 0; i < 6; i += 1)
		{
			fallspade = instance_create(220 + (20 * i) + (side * 120), __view_get(e__VW.YView, 0) + 500, obj_overworld_spade);
			fallspade.vvalue = -10 + (3 * slow_bonus);
			fallspade.fvalue = -0.5 + (0.2 * slow_bonus);
			with (fallspade)
			{
				damage -= 4;
				damage += (global.battledf[0] * 2);
				image_angle = 90;
				image_xscale = 1.5;
				image_yscale = 1.5;
				vspeed = vvalue;
				friction = fvalue;
				sprite_index = spr_diamondbullet;
			}
		}
	}
}
if (side == 0)
	side = 1;
else
	side = 0;
