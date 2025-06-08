if (decorative == true)
	active = 0;
if (con == 0)
{
	image_index = 0;
	timer++;
	threshold = 60;
	if (type == 0)
		threshold = 60;
	if (type == 1)
		threshold = 20;
	if (type == 2)
		threshold = 35;
	if (type == 3)
		threshold = 15;
	if (timer >= threshold && active == 1)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1)
{
	timer++;
	flashamt = sin(timer / 2);
	if (flashamt < 0 && timer >= 5)
	{
		con = 2;
		timer = 0;
	}
}
if (con == 2)
{
	image_index = 1;
	timer++;
	if (type == 0)
		flameangle = -25;
	if (type == 1)
		flameangle = -30;
	if (type == 2)
		flameangle = -140;
	if (type == 3)
		flameangle = -25;
	if (type == 4)
		flameangle = -15;
	flameanglemax = abs(flameangle);
	flameangle = sin(timer / 4) * flameanglemax;
	if (movetype == 1)
		flameangle = 0;
	rate = 4;
	if (type == 1)
		rate = 3;
	if (type == 2)
		rate = 1;
	if (type == 3)
		rate = 3;
	if (type == 4)
		rate = 3;
	if ((timer % rate) == 0)
	{
		if (scr_onscreen_tolerance(id, -40))
		{
			if (type != 4)
			{
				with (bossid)
					flamesfx = 1;
			}
		}
		flame = instance_create(x + 34, y + 40, obj_queenartfire);
		flame.image_xscale = 0.2;
		flame.image_yscale = 0.2;
		flame.growamt = 0.2;
		flame.image_alpha = 3;
		flame.fadespeed = 0.2;
		flame.direction = 270 + flameangle;
		flame.speed = 15;
		flame.friction = 1;
		flame.vspeed += 8;
		if (type == 2)
		{
			flame.fadespeed = 0.15;
			flame.vspeed -= 6;
			flame.speed += 5;
		}
		if (type == 3)
		{
			flame.vspeed -= 6;
			flame.speed += 3;
			flame.fadespeed = 0.16;
		}
		if (type == 4)
		{
			flame.damage = 60;
			flame.vspeed = 20;
			flame.fadespeed = 0.12;
		}
	}
	threshold = 57;
	if (type == 1)
		threshold = 30;
	if (type == 2)
		threshold = 18;
	if (type == 3)
		threshold = 15;
	if (timer >= threshold && type != 4)
	{
		image_index = 0;
		con = 0;
		timer = 0;
	}
}
if (con == 3)
{
	flashamt = 0;
	if (type == 4)
		con = 2;
	laughtimer++;
	if ((laughtimer % 9) == 0)
		image_index = 1;
	if ((laughtimer % 9) == 3)
		image_index = 0;
	if (laughtimer >= 40)
	{
		timer = 0;
		image_index = 0;
		laughtimer = 0;
		con = 0;
	}
}
if (movetype == 1)
{
	movesiner++;
	x += (sin(movesiner / 9) * 9);
}
if (instance_exists(obj_musictracker))
	trackpos = obj_musictracker.trackpos;
if (trackpos >= 18.862 && trackpos <= 18.902)
	con = 3;
if (id == bossid && con != 3)
{
	if (flamesfx == 1)
	{
		snd_stop(snd_rocket_mona);
		flame = snd_play_pitch(snd_rocket_mona, 1.5);
		snd_volume(flame, 0.35, 0);
		flamesfx = 0;
	}
	if (dingsfx == 1)
	{
		snd_stop(snd_spearappear);
		snd_play_pitch(snd_spearappear, 0.9);
		dingsfx = 0;
	}
}
