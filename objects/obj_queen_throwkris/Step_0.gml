if (throwcon == 1)
{
	if (obj_queen_enemy.aimact == 0)
	{
		if (throwready == 0)
			angle += anglespeed;
		if (angle >= 42)
			anglespeed = -2;
		if (angle <= -2)
			anglespeed = 2;
	}
	else
	{
		if (up_h() && angle < 42)
			angle += 2;
		if (down_h() && angle > -2)
			angle -= 2;
	}
	if (button3_p())
	{
		activatethrow = 1;
		with (obj_writer)
			instance_destroy();
	}
	if (activatethrow == 1)
	{
		throwready = 1;
		activatethrow = 0;
		image_index = 0;
		image_speed = 0.5;
		sprite_index = spr_susieb_attack_unarmed;
		angledraw = 0;
		throwcon = 2;
		snd_play(snd_ultraswing);
		if (throwXcon != 3)
		{
			kris = instance_create(kx, ky, obj_queen_kristhrown);
			kris.speed = mypower;
			kris.mypower = mypower;
			kris.image_xscale = 2;
			kris.image_yscale = 2;
			kris.direction = angle;
			kris.image_angle = angle;
			kris.gravity = krisgrav;
		}
		else
		{
			ralsei = instance_create(kx - 20, ky - 20, obj_queen_ralseithrown);
			ralsei.speed = mypower;
			ralsei.mypower = mypower;
			ralsei.image_xscale = 2;
			ralsei.image_yscale = 2;
			ralsei.direction = angle;
			ralsei.image_angle = angle;
			ralsei.gravity = krisgrav;
		}
		if (throwXcon == 1)
			throwXcon = 2;
	}
}
if (throwcon == 2)
{
	if (image_index >= 5)
		image_speed = 0;
}
if (throwXcon == 3 && !instance_exists(obj_queen_throwtarget))
{
	with (obj_herokris)
		visible = 1;
	with (obj_herosusie)
		visible = 1;
	with (obj_queen_throwkris)
		instance_destroy();
	with (obj_queen_kristhrown)
		instance_destroy();
	with (obj_queen_ralseithrown)
		instance_destroy();
	with (obj_queen_throwtarget)
		instance_destroy();
	throwXcon = 5;
}
if (throwXcon == 5 && !instance_exists(obj_writer))
{
	obj_queen_enemy.actcon = 35;
	instance_destroy();
}
if (angledraw == 1)
{
	lx = lengthdir_x(mypower, angle);
	ly = lengthdir_y(mypower, angle);
	for (i = 0; i < 42; i += 1)
	{
		krisyadd = krisgrav + (krisgrav * i);
		if (i > 0)
			krisyoff[i] = krisyoff[i - 1] + krisyadd;
		else
			krisyoff[0] = krisyadd;
	}
}
