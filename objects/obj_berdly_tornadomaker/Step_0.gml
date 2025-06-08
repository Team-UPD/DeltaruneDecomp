if (global.turntimer < 1)
	instance_destroy();
if (difficulty != 3 && lerpintimer < 16)
{
	y = lerp(ystart - 200, ystart + 20, lerpintimer / 15);
	lerpintimer++;
}
if (difficulty == 3 && lerpintimer < 11)
{
	y = lerp(ystart - 200, ystart + 20, lerpintimer / 10);
	lerpintimer++;
}
if (con == 0)
{
	image_index = 0;
	timer++;
	remx = x;
	remy = y;
	timerthreshold = 15;
	if (difficulty == 3)
		timerthreshold = 10;
	if (timer >= timerthreshold)
	{
		timer = 0;
		con = 1;
	}
}
if (con == 1)
{
	x = remx + random_range(-2, 2);
	y = remy + random_range(-2, 2);
	image_index = 1;
	timer++;
	if (timer >= 15)
	{
		timer = 0;
		x = remx;
		y = remy;
		con = 2;
		image_index = 2;
	}
}
if (con == 2)
{
	con = 3;
	if (difficulty == 0)
	{
		for (i = 0; i < 3; i++)
		{
			tornadol = instance_create(x, (y - 20) + (i * 20), obj_berdly_tornadomaker_tornado);
			tornadol.maxhspeed = 6;
			tornadol.hspeed = -12;
			tornadol.howlong = 32 + (i * 8);
			tornadol.howfar = -1 + i;
			tornador = instance_create(x, (y - 20) + (i * 20), obj_berdly_tornadomaker_tornado);
			tornador.maxhspeed = -6;
			tornador.hspeed = 12;
			tornador.howlong = 32 + (i * 8);
			tornador.howfar = -1 + i;
		}
	}
	if (difficulty == 1 || difficulty == 3)
	{
		yorder[0] = 0;
		yorder[1] = 0;
		yorder[2] = 0;
		yorder[choose(0, 1, 2)] = 1;
		chosen = 0;
		while (chosen == 0)
		{
			nextyorder = choose(0, 1, 2);
			if (yorder[nextyorder] == 0)
			{
				yorder[nextyorder] = 2;
				chosen = 1;
			}
		}
		hvariance = random_range(-1, 1);
		for (i = 0; i < 3; i++)
		{
			tornadol = instance_create(x, (y - 20) + (i * 20), obj_berdly_tornadomaker_tornado);
			tornadol.maxhspeed = 6;
			tornadol.hspeed = -12 + hvariance;
			tornadol.howlong = 32 + (i * 8);
			tornadol.howfar = -1 + yorder[i];
			tornador = instance_create(x, (y - 20) + (i * 20), obj_berdly_tornadomaker_tornado);
			tornador.maxhspeed = -6;
			tornador.hspeed = 12 + hvariance;
			tornador.howlong = 32 + (i * 8);
			tornador.howfar = -1 + yorder[i];
		}
	}
	if (difficulty == 2)
	{
		yorder[0] = 0;
		yorder[1] = 0;
		yorder[2] = 0;
		yorder[choose(0, 1, 2)] = 1;
		chosen = 0;
		while (chosen == 0)
		{
			nextyorder = choose(0, 1, 2);
			if (yorder[nextyorder] == 0)
			{
				yorder[nextyorder] = 2;
				chosen = 1;
			}
		}
		for (i = 0; i < 3; i++)
		{
			hvariance = random(2) * choose(-1, 1);
			timevariance = random(4);
			tornadol = instance_create(x, (y - 20) + (i * 20), obj_berdly_tornadomaker_tornado);
			tornadol.maxhspeed = 6;
			tornadol.hspeed = -12 + hvariance;
			tornadol.howlong = 32 + (i * 8) + timevariance;
			tornadol.howfar = -1 + yorder[i];
			tornador = instance_create(x, (y - 20) + (i * 20), obj_berdly_tornadomaker_tornado);
			tornador.maxhspeed = -6;
			tornador.hspeed = 12 + hvariance;
			tornador.howlong = 32 + (i * 8) + timevariance;
			tornador.howfar = -1 + yorder[i];
		}
	}
}
if (con == 3)
{
	timer++;
	timerthreshold = 33;
	if (difficulty == 3)
		timerthreshold = 24;
	if (timer >= 2)
		image_index = 3;
	if (timer >= 4)
		image_index = 4;
	if (timer >= timerthreshold)
	{
		image_index = 0;
		timer = 0;
		con = 0;
	}
}
