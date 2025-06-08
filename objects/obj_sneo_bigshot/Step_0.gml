if (sprite_index == spr_sneo_bigshot_l)
{
	timer2++;
	if (timer2 < 11)
	{
		if (instance_exists(obj_sneo_lastattack))
			depth = obj_sneo_lastattack.depth + 1;
	}
	else if (instance_exists(obj_sneo_lastattack))
	{
		depth = obj_sneo_lastattack.depth - 1;
	}
	if (timer2 < 16)
	{
		image_xscale = lerp(0, 2, timer2 / 15);
		image_yscale = lerp(0, 2, timer2 / 15);
	}
	if (timer2 == 15)
	{
		hspeed = -1;
		friction = -0.05;
	}
	x += random_range(-1, 1);
	y = ystart + random_range(-4, 4);
	if (x < (camerax() + 400))
	{
		event_user(0);
		playerhit = 1;
		damage = 0;
		if (instance_exists(obj_sneo_lastattack))
			obj_sneo_lastattack.endattack = 2;
	}
}
else
{
	image_xscale = lerp(image_xscale, 2, 0.2);
}
if (timer != 0)
	timer++;
if (timer > 13)
{
	instance_create(camerax() + 320, cameray() + 240, obj_sneo_smoke);
	instance_destroy();
	snd_volume(snd_rumble, 0, 70);
	obj_spamton_neo_enemy.stoprumblesfx = 70;
}
