if (alertcon >= 1 && frozen == 0 && ignoresolid == 0)
{
	if (slide == 0)
	{
		if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solidblock, false, true) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solidenemy, false, true))
		{
			x -= hspeed;
			y -= vspeed;
			hspeed = 0;
			vspeed = 0;
		}
	}
	if (slide == 1)
	{
		var repositioned = 0;
		if (place_meeting(x, y, obj_solidblock) || place_meeting(x, y, obj_solidenemy))
		{
			if (!place_meeting(x - hspeed, y, obj_solidblock) && !place_meeting(x - hspeed, y, obj_solidenemy))
			{
				x -= hspeed;
				repositioned = 1;
			}
			if (!repositioned && !place_meeting(x, y - vspeed, obj_solidblock) && !place_meeting(x, y - vspeed, obj_solidenemy))
			{
				y -= vspeed;
				repositioned = 1;
			}
			if (!repositioned)
			{
				x -= hspeed;
				y -= vspeed;
			}
		}
	}
}
if (pacetype == 11)
{
	if (global.interact == 0)
	{
		if (path_speed == 0)
			path_speed = pathSpeed;
	}
	else
	{
		path_speed = 0;
	}
}
if (customhitbox == 1)
	hitvar = collision_rectangle(x + hitx1, y + hity1, x + hitx2, y + hity2, obj_mainchara, true, true);
if ((place_meeting(x, y, obj_mainchara) && customhitbox == 0) || (customhitbox == 1 && hitvar != -4))
{
	if (global.interact == 0 || global.interact == 4)
	{
		if (encounterflag > 0)
			global.flag[54] = encounterflag;
		event_user(0);
	}
}
