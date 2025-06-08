if (y <= (((room_height / 2) + 180) - 620) && con == 0)
{
	with (obj_rocketpunch_fist)
		instance_destroy();
	con = 1;
	vspeed = 0;
	image_index = 8;
	shakeamt = 18;
	remx = x;
	remy = y;
	fade = instance_create(x, y, o_bq_whitefade);
	fade.dont_fade_out = 1;
	fade.depth = 800;
	alarm[0] = 60;
}
if (con == 1)
{
	split = 1;
	image_xscale += (shakeamt / 100);
	image_yscale += (shakeamt / 100);
	drawwhite = 1;
	x = remx + random_range(-shakeamt, shakeamt);
	y = remy + random_range(-shakeamt, shakeamt);
	if (shakeamt > 0)
		shakeamt -= 0.8;
	else
		shakeamt = 0;
}
