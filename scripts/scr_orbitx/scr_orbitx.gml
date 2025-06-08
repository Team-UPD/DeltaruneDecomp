function scr_orbitx(arg0, arg1, arg2, arg3, arg4)
{
	if (arg4 == 0)
		return arg2;
	var __theta = point_direction(arg0, arg1, arg2, arg3);
	var __radius = point_distance(arg0, arg1, arg2, arg3);
	__theta += arg4;
	return arg0 + lengthdir_x(__radius, __theta);
}
