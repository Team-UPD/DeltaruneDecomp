ctimer++;
if (vertState == 0)
{
	if (pauseInit == 1)
	{
		vspeed = memvspeed;
		hsp = memhsp;
		hspeed = memhspeed;
		pauseInit = 0;
	}
	if (abs(vspeed) < maxvspeed)
		vspeed += (1 * sign(vspeed));
	if (abs(vspeed) > maxvspeed)
		vspeed *= 0.9;
	if (place_meeting(x, y + vspeed, obj_solidblock) && room != room_dw_mansion_dininghall)
		vspeed *= -1;
	if (left_h())
	{
		if (hsp >= 0)
			hsp = -1;
		hsp *= 1.2;
		if (room != room_dw_mansion_dininghall)
			maxvspeed = halfmaxvspeed;
		if ((ctimer % 4) == 0)
		{
			dust = instance_create(x - 34, y, obj_slidedust);
			dust.depth = depth + 100;
		}
	}
	else if (right_h())
	{
		if (hsp <= 0)
			hsp = 1;
		hsp *= 1.2;
		if (room != room_dw_mansion_dininghall)
			maxvspeed = halfmaxvspeed;
		if ((ctimer % 4) == 0)
		{
			dust = instance_create(x + 34, y, obj_slidedust);
			dust.depth = depth + 100;
		}
	}
	else
	{
		image_angle = 0;
		if (hsp > 0.1)
			hsp *= 0.9;
		else if (hsp < -0.1)
			hsp *= 0.9;
		else
			hsp = 0;
		maxvspeed = realmaxvspeed;
		if ((ctimer % 4) == 0)
		{
			dust1 = instance_create(x - 34, y, obj_slidedust);
			dust1.depth = depth + 100;
			dust2 = instance_create(x + 34, y, obj_slidedust);
			dust2.depth = depth + 100;
		}
	}
	if (left_h() && right_h())
	{
		image_angle = 0;
		hsp = 0;
		if (room != room_dw_mansion_dininghall)
			maxvspeed = halfmaxvspeed;
	}
	hsp = clamp(hsp, -16, 16);
	hspeed = hsp;
	if (place_meeting(x + hspeed, y, obj_solidblock))
	{
		hsp = -(hsp / 2);
		hspeed = hsp;
	}
}
if (vertState == 1)
{
	if (pauseInit == 0)
	{
		memvspeed = vspeed;
		memhsp = hsp;
		memhspeed = hspeed;
		pauseInit = 1;
	}
	vspeed = 0;
	hsp = 0;
	hspeed = 0;
}
if (drawtype == 0)
	scr_depth_alt();
if (active == 1 && drawtype == 0)
{
	obj_mainchara.x = x - 24;
	obj_mainchara.y = y - 60;
}
if (global.interact != 0)
	vertState = 1;
if (global.interact == 0)
	vertState = 0;
