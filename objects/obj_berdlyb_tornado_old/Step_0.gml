if (!init)
{
	init = true;
	start_angle = ((direction + 180) % 360) + 15;
	if (middespawn)
	{
		psuedo_speed = speed;
		speed = 0;
		active = false;
		start_depth = depth;
		depth = obj_growtangle.depth + 1;
		fader = -3;
		x = obj_growtangle.x;
		y = obj_growtangle.y;
	}
}
if (middespawn)
{
	if (traveldistance >= maxdistance)
		instance_destroy();
}
if (spindir != 0)
{
	if (depth != start_depth && traveldistance >= (maxdistance / 2))
	{
		depth = start_depth;
		active = true;
	}
	var _progress = traveldistance / maxdistance;
	var _dist = sin(_progress * pi) * 150;
	var __theta = start_angle + (_progress * spindir * 45);
	x = obj_growtangle.x + lengthdir_x(_dist, __theta);
	y = obj_growtangle.y + lengthdir_y(_dist, __theta);
	direction = point_direction(x, y, obj_growtangle.x, obj_growtangle.y);
}
else if (wall_destroy == 1)
{
	if (x < (__view_get(e__VW.XView, 0) - 80))
		instance_destroy();
	if (x > (__view_get(e__VW.XView, 0) + 760))
		instance_destroy();
	if (y < (__view_get(e__VW.YView, 0) - 80))
		instance_destroy();
	if (y > (__view_get(e__VW.YView, 0) + 580))
		instance_destroy();
}
if (updateimageangle == 1)
	image_angle = direction;
