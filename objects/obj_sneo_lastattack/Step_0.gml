if (init == 0)
{
	remx = x;
	movetimer++;
	init = 1;
}
if (con == 0)
{
	movetimer++;
	if (movetimer <= 14)
	{
		y = lerp(y, yspot[ycurrent], 0.122);
	}
	else
	{
		movetimer = 0;
		count++;
		ycurrent++;
		if (ycurrent >= 2)
			ycurrent = 0;
	}
	shottimer++;
	if (shottimer >= choose(15))
	{
		lastshoty = y;
		bigshot = instance_create(x + 100, y + y_offset, obj_sneo_bigshot);
		bigshot.hspeed = -6;
		bigshot.friction = -0.25;
		shottimer = 0 + (count / 4);
		shotmouthopen = 1;
		shotmouthopentimer = 0;
		rand = 70 + irandom(5);
		snd_play_x(snd_chargeshot_fire, 0.75, 0.7);
	}
	if (count == 10 || endattack == 1)
	{
		con = 1;
		timer = 0;
		endattack = 1;
	}
}
if (shotmouthopen == 1)
{
	shotmouthopentimer++;
	mouthtopy = -sin(shotmouthopentimer / 3) * 30;
	mouthbottomy = -mouthtopy;
	mouthangle = mouthtopy;
	if (mouthbottomy < 0)
	{
		mouthangle = 0;
		mouthtopy = 0;
		mouthbottomy = 0;
		shotmouthopentimer = 0;
		shotmouthopen = 0;
	}
}
if (con == 1)
{
	timer++;
	y = lerp(y, (yspot[0] + yspot[1]) / 2, 0.1);
	if (timer < 10)
	{
		mouthbottomy = lerp(mouthbottomy, 0, 0.2);
		mouthtopy = lerp(mouthtopy, 20, 0.2);
	}
	if (timer >= 10 && timer < 25)
	{
		mouthbottomy = lerp(mouthbottomy, 120, 0.04);
		mouthtopy = lerp(mouthtopy, -100, 0.04);
		mouthangle = lerp(mouthangle, -45, 0.05);
	}
	if (timer >= 10)
	{
		mouthtopy += (sin(timer * 2) * 4);
		mouthbottomy -= (sin(timer * 2) * 4);
		mouthangle -= (sin(timer) * 5);
		x += random_range(-1, 1);
		y += random_range(-1, 1);
	}
	if (timer == 11)
	{
		bigshot = instance_create(x + 131, y + y_offset, obj_sneo_bigshot);
		bigshot.image_xscale = 0;
		bigshot.image_yscale = 0;
		bigshot.sprite_index = spr_sneo_bigshot_l;
		shottimer = 0;
		snd_play_x(snd_chargeshot_fire, 0.7, 0.4);
		snd_play_x(snd_chargeshot_fire, 0.7, 0.6);
		snd_play_x(snd_chargeshot_fire, 0.7, 0.8);
		snd_play_x(snd_chargeshot_fire, 0.7, 0.9);
	}
}
