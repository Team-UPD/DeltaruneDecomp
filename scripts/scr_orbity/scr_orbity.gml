function scr_orbity(arg0, arg1, arg2, arg3, arg4)
{
	if (arg4 == 0)
		return arg3;
	var __theta = point_direction(arg0, arg1, arg2, arg3);
	var __radius = point_distance(arg0, arg1, arg2, arg3);
	__theta += arg4;
	return arg1 + lengthdir_y(__radius, __theta);
}
