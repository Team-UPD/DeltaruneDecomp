if (init == 0)
{
	if (caralert)
		shottimer = 20;
	lborder += ((fleetsize - 1) * 20);
	rborder -= ((fleetsize - 1) * 20);
	if (fleetspeed == 1)
	{
		moveinterval = 1;
		timer = 1;
		movedirection = sign(movedirection) * 6;
	}
	shottimer -= 10;
	if (!caralert)
		moveinterval = sqr(fleetspeed) * 2;
	else
		moveinterval = 4;
	init = 1;
	boys[0].image_alpha = 1;
	boys[0].damage = damage;
	boys[0].target = target;
	boys[0].grazepoints = grazepoints;
	if (fleetsize == 2)
	{
		boys[0].x += 16;
		boys[1] = scr_childbullet(x - 16, y, obj_viro_invader);
		boys[1].target = targetB;
		boys[1].grazepoints = grazepoints;
	}
	else if (fleetsize == 3)
	{
		boys[0].x += 32;
		boys[1] = scr_childbullet(x, y, obj_viro_invader);
		boys[2] = scr_childbullet(x - 32, y, obj_viro_invader);
		boys[1].target = targetB;
		boys[1].grazepoints = grazepoints;
		boys[2].grazepoints = grazepoints;
	}
	firingspeed = 1;
	if (fleetsize > 1)
		firingspeed = (fleetsize == 3) ? 2.3 : 1.6;
	for (i = 0; i < fleetsize; i++)
	{
		boys[i].caralert = caralert;
		boys[i].firingspeed = firingspeed;
		boys[i].bigshot = bigshot;
	}
	var loopdir = choose(-1, 1);
	shotqueue[0] = irandom(fleetsize - 1);
	for (i = 1; i < fleetsize; i++)
	{
		shotqueue[i] = shotqueue[i + loopdir];
		if (shotqueue[i] < 0)
			shotqueue[i] = fleetsize + shotqueue[i];
		else if (shotqueue[i] >= fleetsize)
			shotqueue[i] = shotqueue[i] - fleetsize;
	}
}
timer++;
if (timer >= moveinterval)
{
	nextx = x + movedirection;
	if ((nextx > rborder && movedirection > 0) || (nextx < lborder && movedirection < 0))
	{
		y += 20;
		movedirection *= -1;
		if (shottimer < 10 && !caralert)
			shottimer = 10;
	}
	else
	{
		x = nextx;
	}
	if (fleetspeed > 1)
		timer = 0;
}
var force_shot = false;
var force_target = 0;
var temp_move = movedirection;
if (shottimer < ((fleetsize == 1) ? 12 : 16) && bigshot)
{
	for (mv = 0; mv < fleetsize; mv++)
	{
		if (i_ex(boys[mv]))
		{
			if (abs((boys[mv].x + ((temp_move / moveinterval) * 16)) - obj_heart.x) < 4)
			{
				force_shot = true;
				force_target = mv;
				break;
			}
		}
		temp_move *= -1;
	}
}
if ((shottimer <= 0 && y < (obj_growtangle.y + 50)) || force_shot)
{
	var shootingboy = irandom(fleetsize - 1);
	if (force_shot)
		shootingboy = force_target;
	if (i_ex(boys[shootingboy]))
	{
		boys[shootingboy].shotready = 1;
		boys[shootingboy].target = choose(target, targetB);
		ratio = 1;
		if (fleetsize > 1)
			ratio = (fleetsize == 2) ? 1.6 : 2.3;
		if (fleetsize == 1 || caralert)
			shottimer = irandom(20) + 20;
		else
			shottimer = irandom(30) + 40;
	}
}
else
{
	shottimer -= fleetsize;
}
reverse = fleetsize > 1 && movedirection < 0;
for (i = 0; i < fleetsize; i++)
{
	if (fleetsize == 1 && timer >= moveinterval)
	{
		if (!i_ex(boys[i]))
			continue;
		boys[i].x = x;
		boys[i].image_index = 1 - boys[i].image_index;
	}
	else if ((timer + ((i + 1) * 2)) == moveinterval)
	{
		target = reverse ? (fleetsize - i - 1) : i;
		if (!i_ex(boys[target]))
			continue;
		boys[target].x += movedirection;
		boys[i].image_index = 1 - boys[i].image_index;
	}
	if (!i_ex(boys[i]))
		continue;
	boys[i].y = y;
}
