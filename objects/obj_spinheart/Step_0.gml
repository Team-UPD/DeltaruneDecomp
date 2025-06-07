if (con == 4)
{
	htimer += 1;
	if (htimer >= 10)
	{
		friction = 0;
		speed = 0;
	}
	if (htimer >= 20)
	{
		active = 0;
		image_alpha -= 0.2;
	}
	if (htimer >= 25)
	{
		if (global.turntimer >= 0)
			global.turntimer = -2;
	}
}
if (con == 3)
{
	htimer += 1;
	if (htimer >= hmax)
	{
		direction = image_angle;
		speed = 2.5;
		friction = -0.5;
		if (joker == 1)
			speed = 5;
		con = 4;
		htimer = 0;
	}
}
if (con == 2)
{
	htimer += 1;
	image_angle += 24;
	if (htimer >= spinmax)
	{
		hmax = 19;
		if (joker == 1)
			hmax = 15;
		image_angle = 270 + (spinmax * 24);
		con = 3;
		htimer = 0;
	}
}
if (con == 1)
{
	htimer += 1;
	if (htimer >= 10)
	{
		spinmax = choose(26.25, 30, 33.75, 37.5);
		if (joker == 1)
			spinmax = 15 + random(15);
		con = 2;
		htimer = 0;
	}
}
if (con == 0)
{
	image_alpha += 0.2;
	image_xscale -= 0.2;
	image_yscale -= 0.2;
	htimer += 1;
	if (htimer >= 5)
	{
		con = 1;
		htimer = 0;
		active = 1;
	}
}
if (grazed == 1)
	grazetimer += 1;
if (grazetimer >= 15)
{
	grazetimer = 0;
	grazed = 0;
}
