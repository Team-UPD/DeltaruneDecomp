buffer += 1;
if (buffer == 19)
{
	gravity = 0;
	vspeed = 0;
	hspeed = 4 * dir;
	depth = -10;
}
if (buffer >= 19)
{
	y = obj_battlesolid.y - (obj_battlesolid.sprite_height / 2);
	if (x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 20))
	{
		x += 4;
		if (hspeed < 0)
			hspeed = -hspeed;
	}
	if (x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 20))
	{
		x += 4;
		if (hspeed < 0)
			hspeed = -hspeed;
	}
	if (x >= ((obj_battlesolid.x + (obj_battlesolid.sprite_width / 2)) - 20))
	{
		x -= 4;
		if (hspeed > 0)
			hspeed = -hspeed;
	}
	if (buffer >= 20 && con == 0 && abs(x - (obj_heart.x + 10)) < 30)
		con = 5;
	if (con == 5)
	{
		image_speed = 0.5;
		con = 6;
	}
	if (con == 6)
	{
		if (image_index >= 2 && throw_n == 0)
		{
			throw_n = 1;
			carrot = instance_create(x, y, obj_collidebullet);
			scr_bullet_inherit(carrot);
			with (carrot)
			{
				speedmax = 7;
				if (scr_monsterpop() == 2)
					speedmax = 6;
				if (scr_monsterpop() == 3)
					speedmax = 5;
				active = 1;
				image_xscale = 2;
				image_yscale = 2;
				vspeed = speedmax;
				image_speed = 0.25;
				sprite_index = spr_carrotbullet;
			}
		}
		if (image_index >= 3)
		{
			throw_n = 0;
			image_speed = 0;
			con = 7;
			alarm[4] = 15;
			if (scr_monsterpop() == 2)
				alarm[4] = 22;
			if (scr_monsterpop() == 3)
				alarm[4] = 30;
		}
	}
	if (con == 8)
	{
		image_index = 0;
		con = 0;
	}
}
