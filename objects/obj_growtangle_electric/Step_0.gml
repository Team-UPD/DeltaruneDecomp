if (grazed == 1)
{
	grazetimer += 1;
	if (grazetimer >= 30)
	{
		grazetimer = 0;
		grazed = 0;
	}
}
if (instance_exists(obj_growtangle))
{
	if (con == 0)
	{
		timer++;
		if (type == 1)
		{
			plugxend = -23;
			plugx = lerp(plugx, plugxend, 0.2);
		}
		else
		{
			plugxend = 0;
			plugx = lerp(plugx, plugxend, 0.15);
		}
		plugalpha = lerp(plugalpha, 1, 0.1);
		if (timer >= 15 && timer <= 25)
		{
			obj_growtangle.x = obj_growtangle.xstart + random_range((-35 + timer) / 2, (35 - timer) / 2);
			obj_growtangle.y = obj_growtangle.ystart + random_range((-35 + timer) / 2, (35 - timer) / 2);
		}
		if (timer >= 15)
		{
			plugalpha = 1;
			plugx = plugxend;
			image_alpha += 0.1;
			if (image_alpha >= 1)
				active = 1;
			else
				active = 0;
		}
		if (timer >= 25)
		{
			con = 1;
			timer = 0;
			plugx = 0;
		}
	}
	if (con == 1)
	{
		timer++;
		shottimer++;
		if (type == 0)
			moveamount = sin(timer / 20) * amplitude;
		if (type == 1)
			moveamount = 1;
		shotthreshold = 8;
		if (type == 1)
			shotthreshold = 15;
		if (shottimer >= shotthreshold)
		{
			shottimer = 0;
			lightning = instance_create(-100, y, obj_growtangle_spark);
			with (lightning)
			{
				scr_bullet_init();
				destroyonhit = 1;
			}
			if (speedmode == 1)
			{
				wx = lengthdir_x(obj_growtangle.sprite_width / 2, image_angle);
				wy = lengthdir_y(obj_growtangle.sprite_width / 2, image_angle);
				if (moveamount > 0)
				{
					lightning.x = x + xx + wx;
					lightning.y = y + yy + wy;
					lightning.gravity_direction = 180 + image_angle;
				}
				if (moveamount < 0)
				{
					lightning.x = (x + xx) - wx;
					lightning.y = y + yy + wy;
					lightning.gravity_direction = image_angle;
				}
				lightning.direction = lightning.gravity_direction + 180;
				lightning.speed = 5 + random(1);
				lightning.depth = depth - 5;
				if (type == 1)
					lightning.speed = 6 + random(1);
				with (lightning)
					motion_add(direction + choose(90, 270), random(1.5));
			}
			lightning.gravity = 0.3;
			lightning.image_xscale = 1.5;
			lightning.image_yscale = 1.5;
			with (lightning)
			{
				if (instance_exists(obj_queen_enemy))
					damage = global.monsterat[obj_queen_enemy.myself] * 5;
			}
			scr_bullet_inherit(lightning);
			lightning.active = 1;
			lightning.sprite_index = spr_growtangle_elecbullet;
		}
		if (timer >= 150)
		{
			if (amplitude > 0)
				amplitude -= 2;
		}
		else
		{
			amplitude = lerp(amplitude, maxamplitude, 0.1);
		}
		if (type == 0)
			obj_growtangle.x = obj_growtangle.xstart + moveamount;
		if (type == 1)
		{
			moveamount = sin(timer / 20) * amplitude;
			obj_growtangle.x = obj_growtangle.xstart + moveamount;
			obj_growtangle.image_angle += 1.9565217391304348;
		}
		if (amplitude <= 0 && timer >= 230 && global.turntimer > 2)
			global.turntimer = 2;
	}
	x = obj_growtangle.x - xx;
	y = obj_growtangle.y - yy;
	image_xscale = obj_growtangle.image_xscale;
	image_yscale = obj_growtangle.image_yscale;
	image_angle = obj_growtangle.image_angle;
}
else
{
	instance_destroy();
}
