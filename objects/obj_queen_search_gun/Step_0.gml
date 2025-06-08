if (init == 0)
{
	if (firsttime)
		targetTime *= 2;
	init = 1;
	event_user(0);
}
if (loading > 0)
	exit;
if (smashed)
{
	timer++;
	if (timer >= 30)
	{
		var _xx = x + scr_orbitx(0, 0, 64 * flip, -20, image_angle);
		var _yy = y + scr_orbity(0, 0, 64 * flip, -20, image_angle);
		d = instance_create(_xx, _yy, obj_regularbullet);
		d.sprite_index = spr_spadebullet;
		d.image_angle = image_angle + (flip ? 0 : 180);
		d.damage = damage;
		d.target = target;
		d.speed = 12;
		obj_queen_search_flail.broken = 1;
		d.direction = image_angle + (flip ? 0 : 180);
		instance_destroy();
	}
	exit;
}
if (bufferstate == 0 && scr_queen_buffercheck())
{
	image_blend = c_gray;
	bufferstate = 1;
}
else if (bufferstate == 1 && !scr_queen_buffercheck())
{
	image_blend = c_white;
	bufferstate = 2;
}
if (bufferstate == 1)
	exit;
if (timer < targetTime && shootcon == 0 && shootmode == 0)
{
	timer++;
	if (timer < 0)
		exit;
	if (firsttime)
	{
		if (shottype == 0)
		{
			targetx = obj_heart.x + 8;
			targety = obj_heart.y + 8;
			targetAngle = point_direction(x, y - 24, targetx, targety);
			targetAngle %= 360;
			if (flip)
				targetAngle += 360;
			else
				targetAngle -= 540;
		}
	}
	image_angle = lerp(0, targetAngle, scr_ease_inout(timer / targetTime, -1));
	if (timer >= targetTime)
	{
		xx = x + scr_orbitx(0, 0, 64 * flip, -20, image_angle);
		yy = y + scr_orbity(0, 0, 64 * flip, -20, image_angle);
		direction = image_angle + (flip ? 0 : 180);
		shootmode = 1;
	}
}
if (shootcon == 0 && shootmode == 1)
{
	if (global.turntimer >= 40)
	{
		shootcon = 1;
		shoottimer = 0;
	}
	else
	{
		shootcon = 5;
		shootmode = 0;
	}
}
if (shootcon == 1)
{
	shootcon = 2;
	shoottimer = 0;
	shootcount = 0;
}
if (shootcon == 2)
{
	shoottimer--;
	if (shoottimer <= 0)
	{
		for (i = 0; i < 3; i += 1)
		{
			var lasercircle = instance_create(xx, yy, obj_werewire_bullet_lasercircle);
			lasercircle.damage = damage;
			lasercircle.target = target;
			lasercircle.depth = depth - 1;
			var laser_angle = direction + random_range(-2, 2);
			lasercircle.my_angle = (laser_angle - 5) + (5 * i);
			lasercircle.my_angle_change = (-1 + i) * 0.8 * m;
			with (lasercircle)
			{
				my_speed = 4;
				my_accel = 0.2;
				my_length = 4;
			}
			lasercircle.my_accel = 0.4;
		}
		shoottimer = 10 / m;
		shootcount += 1;
	}
	if (shootcount >= 3)
	{
		shootcon = 5;
		shoottimer = 20;
	}
}
if (shootcon == 3)
{
	bx1[0] = -24;
	bx1[1] = -40;
	bx1[2] = -48;
	bx1[3] = -46;
	bx1[4] = -26;
	by1[0] = -54;
	by1[1] = -30;
	by1[2] = 6;
	by1[3] = 46;
	by1[4] = 72;
	bullet_angle = (point_direction(x + bx1[2], y + by1[2], obj_heart.x + 8, obj_heart.y + 8) - 10) + random(20);
	shootcon = 4;
}
if (shootcon == 4)
{
	shoottimer += 1;
	if (shoottimer >= (15 / m))
	{
		image_index += (0.25 * m);
		if (image_index >= 2 && image_index <= 3)
		{
			repeat (2)
			{
				if (shootcount < 5)
				{
					bullet[shootcount] = instance_create(x + bx1[shootcount], y + by1[shootcount], obj_werewire_bullet_lasersquare);
					bullet[shootcount].damage = global.monsterat[myself] * 5;
					bullet[shootcount].sprite_index = spr_bullet_werewire_spark;
					bullet[shootcount].stretch = 0;
					bullet[shootcount].image_speed = 0.2;
					bullet[shootcount].image_xscale = 4;
					bullet[shootcount].image_yscale = 4;
					bullet[shootcount].direction = (bullet_angle - 28) + (shootcount * 14);
					bullet[shootcount].image_angle = bullet[shootcount].direction;
					bullet[shootcount].speed = 9 - initid - werewerewire;
					bullet[shootcount].friction = 1;
					shootcount += 1;
				}
			}
		}
		if (image_index >= 4)
		{
			for (i = 0; i < 5; i += 1)
			{
				with (bullet[i])
				{
					if (speed <= 0)
						speed = 0.2;
					friction = -0.25;
				}
			}
			shootcon = 0;
			image_index = 0;
			sprite_index = spr_werewire_idle;
			image_speed = 0.16;
			stop_anim = 0;
		}
	}
}
if (shootcon == 5)
{
	shoottimer--;
	if (shoottimer <= 0)
	{
		parentwindow.state = 5;
		instance_destroy();
	}
}
