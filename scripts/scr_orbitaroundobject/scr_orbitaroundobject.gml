function scr_orbitaroundobject(arg0, arg1)
{
	var __theta = point_direction(arg0.x, arg0.y, x, y);
	var __radius = point_distance(arg0.x, arg0.y, x, y);
	__theta += arg1;
	x = arg0.x + lengthdir_x(__radius, __theta);
	y = arg0.y + lengthdir_y(__radius, __theta);
}
