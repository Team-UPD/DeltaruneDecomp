function scr_wall_intersect_y(arg0, arg1, arg2, arg3, arg4)
{
	var xlength = lengthdir_x(arg2, arg3);
	if (sign(xlength - x) != sign(arg4 - x))
		return arg0 + lengthdir_x(arg2, arg3);
	return arg1 + lengthdir_y(abs(arg0 - arg4) / xlength, arg3);
}
