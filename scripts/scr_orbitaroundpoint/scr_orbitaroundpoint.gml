function scr_orbitaroundpoint(arg0, arg1, arg2)
{
	var __theta = point_direction(arg0, arg1, x, y);
	var __radius = point_distance(arg0, arg1, x, y);
	__theta += arg2;
	x = arg0 + lengthdir_x(__radius, __theta);
	y = arg1 + lengthdir_y(__radius, __theta);
}
