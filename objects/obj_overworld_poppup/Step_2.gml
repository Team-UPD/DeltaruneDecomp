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
