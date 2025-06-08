if (con == 0)
{
	draw_self();
	if (fallnow == 1)
		con = -5;
}
if (con == -5)
{
	friction = 0.2;
	remremy = y;
	vspeed = -3;
	hspeed = -6;
	timer = 0;
	con = -4;
}
if (con == -4)
{
	draw_self();
	timer++;
	if (timer >= 30)
	{
		con = -3;
		timer = 0;
	}
}
if (con == -3)
{
	timer++;
	draw_self();
}
if (con == 1)
{
	snd_play(snd_petrify);
	image_index = 0;
	image_speed = 0.2;
	draw_self();
	timer = 0;
	shaketimer = 0;
	con = 4;
	falltimer = 0;
	remx = x;
	remy = y;
}
if (con == 3)
	draw_self();
if (con == 4)
{
	draw_self();
	if (image_index >= 8)
	{
		image_speed = 0;
		image_index = 8;
	}
	timer++;
}
if (con == 2)
{
	draw_self();
	if (image_index >= 8)
	{
		image_speed = 0;
		image_index = 8;
		if (y < (remremy + 40))
		{
			gravity += 1;
		}
		else
		{
			if (bumped == 0)
			{
				snd_play(snd_bump);
				bumped = 1;
			}
			gravity = 0;
			vspeed = 0;
			timer++;
			y = remremy + 100;
		}
		if (timer >= 60)
		{
			if (bumped == 1)
			{
				snd_play(snd_fall);
				bumped = 2;
			}
			image_angle += (abs(image_angle / 3) + 2);
			if (image_angle >= 90)
			{
				if (bumped == 2)
				{
					snd_play(snd_bump);
					bumped = 3;
				}
				image_angle = 90;
				con = 3;
				shaketimer++;
				if (shaketimer >= 6)
				{
					con = 3;
					x = remx;
					y = remy;
				}
			}
		}
	}
}
if (con == 5)
{
	initangle = 2;
	angle = 2;
	anglespeed = 0;
	angleaccel = 0.015;
	con = 6;
}
if (con == 6)
{
	if (fallnow == 1)
	{
		fallnow = 2;
		with (object_index)
		{
			if (isrouxls == 1)
				drawthrash = 1;
		}
	}
	if (fallnow == 2)
	{
		angle -= anglespeed;
		anglespeed += ((anglespeed / 10) + angleaccel);
		if (angle <= 0)
			angle = 0;
	}
	boatcolor = merge_color(c_white, c_black, (2 - angle) / 4);
	for (i = 0; i < 5; i++)
		draw_sprite_ext(spr_boat_origin, image_index, x, y + i, 2, angle, 0, boatcolor, 1);
}
