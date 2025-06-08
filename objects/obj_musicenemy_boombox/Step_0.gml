if (global.turntimer < 1)
{
	instance_destroy();
	exit;
}
siner++;
image_yscale = 1 - (abs(sin(siner / 5)) * 0.1);
buffer--;
if (makebullet > 0)
{
	if (makebullet == 1)
	{
		bullet = instance_create(x, (y - sprite_height) + 90, obj_musical_note_bullet);
		bullet.direction = point_direction(bullet.x, bullet.y, obj_heart.x + 8, obj_heart.y + 8);
		bullet.speed = 3.5;
		bullet.depth = depth - 10;
		bullet.grow = 1;
		bullet.active = 1;
		bullet.damage = damage;
		bullet.target = target;
		if (irandom(100) < 50)
			bullet.y += 70;
	}
	if (makebullet == 2)
	{
		if (segmentcountmax == 0)
		{
			bullet = instance_create(x, (y - sprite_height) + 90, obj_musical_note_bullet);
			if (instance_exists(obj_growtangle))
			{
				if (lightningvary == 0)
					bullet.y = obj_growtangle.y + random_range(-obj_growtangle.sprite_height / 2, 0);
				if (lightningvary == 1)
					bullet.y = obj_growtangle.y + random_range(0, obj_growtangle.sprite_height / 2);
			}
			with (bullet)
				scr_afterimage_grow();
			bullet.image_yscale = 1;
			bullet.image_xscale = 0.4;
			bullet.speed = image_xscale;
			bullet.x -= image_xscale * 13;
			bullet.friction = -0.15;
			bullet.sprite_index = spr_electricity_wave;
			bullet.image_angle = bullet.direction;
			bullet.depth = depth - 10;
			bullet.growb = 1;
			bullet.image_angle = 90;
			bullet.copymake = 0;
			bullet.active = 1;
			bullet.damage = damage;
			bullet.target = target;
			if (lightningvary == 0)
				lightningvary = 1;
			else
				lightningvary = 0;
		}
		else
		{
			makelong = 1;
		}
	}
	if (makebullet == 3)
	{
		if (singlenote == 1)
		{
			with (obj_musicenemy_dancer)
				bultype = 0;
			if (type == 0)
			{
				with (obj_musicenemy_dancer)
				{
					if (headimage == 2)
						active = 1;
				}
			}
			if (type == 1)
			{
				with (obj_musicenemy_dancer)
				{
					if (headimage == 5)
						active = 1;
				}
			}
			if (type == 2)
			{
				with (obj_musicenemy_dancer)
				{
					if (headimage == 8)
						active = 1;
				}
			}
			type++;
			if (type > 2)
				type = 0;
		}
		else
		{
			with (obj_musicenemy_dancer)
			{
				active = 1;
				headframe = 0;
				bultype = 1;
			}
		}
	}
	buffer = 2;
}
makebullet = 0;
if (makelong == 1)
{
	makelongtimer++;
	if (makelongtimer >= 4)
	{
		var a = 0;
		repeat (4)
		{
			bullet = instance_create(x, (y - sprite_height) + 90, obj_musical_note_bullet_segment);
			if (instance_exists(obj_growtangle))
				bullet.y = obj_growtangle.y + random_range(-obj_growtangle.sprite_height / 2, obj_growtangle.sprite_height / 2);
			bullet.image_yscale = 0.75;
			bullet.image_xscale = 0.2;
			bullet.speed = image_xscale;
			bullet.x -= image_xscale * 13;
			bullet.friction = -0.2;
			bullet.speed = 0.37;
			bullet.y = y - 45;
			bullet.depth = depth - 10;
			bullet.active = 1;
			bullet.damage = damage;
			bullet.target = target;
			if (image_xscale < 0)
			{
				if (a == 0)
					bullet.direction = (direction + 180 + angleoffset) - 80;
				if (a == 1)
					bullet.direction = (direction + 180 + angleoffset) - 40;
				if (a == 2)
					bullet.direction = direction + 180 + angleoffset;
				if (a == 3)
					bullet.direction = direction + 180 + angleoffset + 40;
			}
			else
			{
				if (a == 0)
					bullet.direction = (direction + angleoffset) - 80;
				if (a == 0)
					bullet.direction = (direction + angleoffset) - 40;
				if (a == 1)
					bullet.direction = direction + angleoffset;
				if (a == 2)
					bullet.direction = direction + angleoffset + 40;
			}
			bullet.image_angle = bullet.direction;
			a++;
		}
		if (segmentcount < segmentcountmax)
		{
			segmentcount += 1;
			makelongtimer = 0;
		}
		else
		{
			segmentcountmax = 0;
			segmentcount = 0;
			makelong = 0;
			makelongtimer = 0;
		}
	}
}
