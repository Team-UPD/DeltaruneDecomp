if (shakex > 0)
	shakex--;
if (shakey > 0)
	shakey--;
if (global.turntimer < 51)
{
	global.turntimer = 50;
	attackcount = 0;
}
if (con == 0)
{
	if (difficulty == 1)
	{
		speed += (0.5 * heart_speed_scaling);
	}
	else if (difficulty == 2)
	{
		if (movementstyle == 1)
			speed += (0.1 * heart_speed_scaling);
		if (movementstyle != 0)
			speed += (0.4 * heart_speed_scaling);
	}
	else
	{
		if (movementstyle == 1)
			speed += (0.1 * heart_speed_scaling);
		if (movementstyle != 0)
			speed += (0.4 * heart_speed_scaling);
	}
	var destination = 70 + random(3);
	if (movementstyle != 2)
		destination = 152;
	if (distance_to_point(xstart, ystart) > destination)
	{
		if (movementstyle == 2)
			con = 2;
		else
			speed = 0;
		shootcon = 1;
		if (movementstyle == 2)
			shoottimer = -10;
	}
}
if (con == 2)
{
	if (difficulty == 1)
	{
		speed -= (0.3 * heart_speed_scaling);
	}
	else if (difficulty == 2)
	{
		if (movementstyle == 1)
			speed -= (0.1 * heart_speed_scaling);
		if (movementstyle != 0)
			speed -= (0.6 * heart_speed_scaling);
	}
	else
	{
		if (movementstyle == 1)
			speed -= (0.1 * heart_speed_scaling);
		if (movementstyle != 0)
			speed -= (0.6 * heart_speed_scaling);
	}
	if (x > (xstart - 12))
	{
		attackcount -= 1;
		if (attackcount > 0)
		{
			x = xstart;
			con = 2.1;
			shootcon = 0;
			shoottimer = 0;
			speed *= -0.4;
			visible = false;
			alarm[0] = 2;
			if (difficulty == 2)
				alarm[0] = 58;
			direction = 162 + random(36);
		}
		else
		{
			instance_destroy();
			with (obj_sneo_heartattack_intro)
			{
				timer = 0;
				con = 1;
			}
			with (obj_sneo_biglaser)
				instance_destroy();
			with (obj_rouxls_power_up_orb)
				instance_destroy();
		}
	}
}
if (con == 3)
{
	with (obj_sneo_guymaker)
		instance_destroy();
	with (obj_sneo_lilguy)
		instance_destroy();
	with (obj_sneo_heatattack_bullet)
		instance_destroy();
	with (obj_spamtonshot)
		instance_destroy();
	defeatedtimer++;
	image_index = 0;
	if (defeatedtimer == 1)
	{
		a = 0;
		repeat (12)
		{
			fx = instance_create(x, y, obj_sneo_heart_defeated_fx);
			fx.direction = a * 30;
			a++;
		}
	}
	if (defeatedtimer > 20 && defeatedtimer < 50)
	{
		x += ((xstart - x) * 0.1);
		y += ((ystart - y) * 0.1);
	}
	if (defeatedtimer > 50)
	{
		image_alpha -= 0.1;
		if (image_alpha < 0)
		{
			instance_destroy();
			with (obj_sneo_heartattack_intro)
			{
				timer = 0;
				con = 1;
			}
		}
	}
}
if (shootcon == 1)
{
	if (shoottimer == 0)
		image_index = 1;
	if (shoottimer == 2)
		image_index = 0;
	if (shoottimer == 4)
		image_index = 1;
	if (shoottimer == 6)
		image_index = 0;
	shoottimer++;
	if ((shoottimer == obj_spamton_neo_enemy.heart_1st_wave_timer && heart_health > 0) || (shoottimer == obj_spamton_neo_enemy.heart_2nd_wave_timer && heart_health > 0) || (shoottimer == obj_spamton_neo_enemy.heart_3rd_wave_timer && heart_health > 0))
	{
		var angle = 0 + rand_angle;
		if (shoottimer == obj_spamton_neo_enemy.heart_2nd_wave_timer)
			angle = 14 + rand_angle;
		repeat (10)
		{
			bullet = instance_create(x, y, obj_sneo_heatattack_bullet);
			bullet.image_angle = 0 + angle;
			bullet.direction = 0 + angle;
			bullet.gravity_direction = 0 + angle;
			bullet.image_xscale = obj_spamton_neo_enemy.heart_bullet_image_scale;
			bullet.image_yscale = obj_spamton_neo_enemy.heart_bullet_image_scale;
			bullet.depth = depth - 1;
			if (shoottimer == obj_spamton_neo_enemy.heart_1st_wave_timer)
			{
				bullet.speed = obj_spamton_neo_enemy.heart_bullet_speed_1st_wave;
				bullet.gravity = obj_spamton_neo_enemy.heart_bullet_friction_1st_wave;
			}
			if (shoottimer == obj_spamton_neo_enemy.heart_2nd_wave_timer)
			{
				bullet.speed = obj_spamton_neo_enemy.heart_bullet_speed_2nd_wave;
				bullet.gravity = obj_spamton_neo_enemy.heart_bullet_friction_2nd_wave;
			}
			if (shoottimer == obj_spamton_neo_enemy.heart_3rd_wave_timer)
			{
				bullet.speed = obj_spamton_neo_enemy.heart_bullet_speed_3rd_wave;
				bullet.gravity = obj_spamton_neo_enemy.heart_bullet_friction_3rd_wave;
			}
			angle += 36;
		}
	}
	if (shoottimer > 23)
	{
		shootcon = 0;
		con = 2;
		shoottimer = 0;
		rand_angle = random(40);
	}
}
if (heart_health < 1)
	exit;
