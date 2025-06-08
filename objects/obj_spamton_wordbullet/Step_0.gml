event_inherited();
if (init == 0)
{
	rawspeed = speed;
	init = 1;
}
if (x >= (mouthx - 16) && i_ex(creator))
	offset = (creator.y + creator.mouthy) - 4 - ystart;
else if (x < (mouthx - 16))
	offset = scr_movetowards(offset, 0, 3);
if (type == 1 && x < mouthx)
{
	speed = 0;
	if (!tracked)
	{
		var __targetdir = point_direction(x, truey, targetx, targety);
		var __diff = angle_difference(fauxdirection, __targetdir);
		if (abs(__diff) > 10)
		{
			fauxdirection -= (sign(__diff) * 10);
		}
		else
		{
			tracked = true;
			fauxdirection = __targetdir;
		}
	}
	var _xdir = lengthdir_x(5, fauxdirection);
	x += (_xdir * abs(5 / _xdir));
	truey += (lengthdir_y(5, fauxdirection) * abs(5 / _xdir));
}
y = truey + (cos(x / ((x > (mouthx - 16)) ? 12 : clamp(sinesize, 10, 20))) * 10 * sinesign) + offset;
if (type == 0 || x >= mouthx)
	speed = scr_movetowards(speed, 5, 0.25);
