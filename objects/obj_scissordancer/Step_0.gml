dancetimer += 1;
if (dancetimer >= 30 && dancetimer <= 75)
	image_index += 0.25;
if (dancetimer >= 112 && dancetimer <= 157)
	image_index -= 0.25;
if (dancetimer >= 166)
	dancetimer = 0;
if (specturn == 1)
{
	if (x >= (xstart + 170) && y <= (ystart + 10))
	{
		y -= vspeed;
		x -= hspeed;
		direction -= 90;
		x = xstart + 169;
	}
	if (y >= (ystart + 160))
	{
		y -= vspeed;
		x -= hspeed;
		direction -= 90;
		y = ystart + 159;
	}
	if (x <= xstart)
	{
		y -= vspeed;
		x -= hspeed;
		direction -= 90;
		x = xstart + 1;
	}
	if (y <= ystart)
	{
		y -= vspeed;
		x -= hspeed;
		direction -= 90;
		y = ystart + 1;
	}
}
if (myinteract == 1 && sndcon == 0)
{
	sndcon = 1;
	myinteract = 0;
}
else
{
	myinteract = 2;
}
if (sndcon >= 1 && sndcon <= 5)
{
	sndtimer -= 1;
	if (sndtimer <= 0)
	{
		p = 0.5 + random(0.7);
		b = snd_play(snd_scissorbell);
		snd_pitch(b, p);
		sndcon += 1;
		sndtimer = 3;
	}
}
if (sndcon == 6)
{
	sndtimer += 1;
	if (sndtimer >= 15)
	{
		myinteract = 0;
		sndcon = 0;
		sndtimer = 0;
	}
}
scr_depth();
if (instance_exists(bullet))
{
	bullet.x = x + hspeed;
	bullet.y = y + vspeed;
}
