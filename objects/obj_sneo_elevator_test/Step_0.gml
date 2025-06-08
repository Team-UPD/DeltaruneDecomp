if (movecon == 1)
	movecon = 2;
if (movecon == 2)
{
	yspeed = 15;
	if (abs(ypos[idealpos] - y) > yspeed)
	{
		if (ypos[idealpos] < y)
		{
			y -= yspeed;
			heartobj.y -= yspeed / 1.2;
		}
		if (ypos[idealpos] > y)
		{
			y += yspeed;
			heartobj.y += yspeed / 1.2;
		}
	}
	else
	{
		y = ypos[idealpos];
		pos = idealpos;
		movecon = 0;
	}
}
bullettimer++;
if (bullettimer >= 20)
{
	bullettimer = 0;
	if (lightningcon > 0 && lightninghandicap == 1)
		bullettimer = -10;
	if (bulletcount == 3)
		bullettimer = -7;
	if (bulletcount == 4)
	{
		bullettimer = 90;
		bulletcount = 0;
	}
	bulletcount++;
}
if (lightningcon == 1)
{
	n = 0;
	lightningtimer = 0;
	for (j = 0; j < 2; j++)
	{
		for (i = 0; i < 2; i++)
			n++;
	}
	lightningcon = 2;
}
if (lightningcon == 2)
{
	lightningtimer++;
	i = 0;
	while (i < n)
		i++;
}
