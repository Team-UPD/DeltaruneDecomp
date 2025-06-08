sleeptimer++;
if (movecon == 0 || movecon == 1)
{
	if (con == 0)
	{
		if (movecon == 0)
		{
			hspeed = -4;
			sprite_index = lsprite;
		}
		if (movecon == 1)
		{
			hspeed = 4;
			sprite_index = rsprite;
		}
		con = 1;
		contimer = 0;
		contimermax = 30;
		flipchance = choose(0, 1, 2);
		if (flipchance == 2)
		{
			sprite_index = choose(dsprite, spr_lancer_ut_flip);
			image_speed = 0.25;
		}
	}
	if (con == 1)
	{
		stop = 0;
		contimer++;
		if (x < minx)
			stop = 1;
		if (x > maxx)
			stop = 1;
		if (contimer > contimermax)
			stop = 1;
		if (stop == 1)
		{
			hspeed = 0;
			sprite_index = choose(dsprite, dsprite, spr_lancer_ut_flip);
			image_speed = 0.25;
			alarm[0] = 30;
			con = 2;
		}
	}
}
if (movecon == 2 || movecon == 3)
{
	if (con == 0)
	{
		if (movecon == 3)
		{
			vspeed = -8;
			gravity = 1;
			y -= 4;
			hspeed = random_range(-4, 4);
		}
		spincount = 0;
		spintimer = 0;
		spinmax = 8;
		con = 1;
		sprite_index = dsprite;
	}
	if (con == 1)
	{
		if (y >= maxy)
		{
			gravity = 0;
			vspeed = 0;
		}
		if (x <= minx)
		{
			x += 4;
			hspeed = -hspeed;
		}
		if (x >= maxx)
		{
			x -= 4;
			hspeed = -hspeed;
		}
		spintimer++;
		if (spintimer >= 3)
		{
			if (sprite_index == dsprite)
				sprite_index = lsprite;
			else if (sprite_index == lsprite)
				sprite_index = usprite;
			else if (sprite_index == usprite)
				sprite_index = rsprite;
			else if (sprite_index == rsprite)
				sprite_index = dsprite;
			spincount++;
			spintimer = 0;
		}
		if (spincount >= 8)
		{
			hspeed = 0;
			vspeed = 0;
			gravity = 0;
			con = 2;
			alarm[0] = 30;
		}
	}
}
if (movecon == 4)
{
	if (con == 0)
	{
		sprite_index = spr_lancer_wave;
		image_index = 0;
		image_speed = 0.5;
		wavetimer = 0;
		con = 1;
	}
	if (con == 1)
	{
		wavetimer++;
		if (wavetimer >= 16)
			image_speed = 0;
		if (wavetimer >= 40)
		{
			alarm[0] = 2;
			con = 2;
		}
	}
}
if (movecon == 10)
{
	sprite_index = spr_lancer_sleep;
	image_speed = 0.1;
	speed = 0;
	hspeed = 0;
	gravity = 0;
}
if (movecon == 11)
{
	sprite_index = spr_cutscene_20_lancer_stone;
	image_speed = 0;
	speed = 0;
	hspeed = 0;
	gravity = 0;
}
if (global.submenu != 4 || global.interact != 5)
	instance_destroy();
