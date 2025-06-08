if (throwcon == 1)
{
	if (throwready == 0)
		angle += anglespeed;
	if (angle >= 42)
		anglespeed = -2;
	if (angle <= -2)
		anglespeed = 2;
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
		kris = instance_create(kx, ky, obj_werewire_kristhrown);
		kris.speed = mypower;
		kris.mypower = mypower;
		kris.image_xscale = 2;
		kris.image_yscale = 2;
		kris.direction = angle;
		kris.image_angle = angle;
		kris.gravity = krisgrav;
	}
}
if (throwcon == 2)
{
	if (image_index >= 5)
		image_speed = 0;
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
