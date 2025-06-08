function scr_intersection_x(arg0, arg1, arg2, arg3, arg4)
{
	var ylength = lengthdir_y(arg2, arg3);
	if (sign(ylength - y) != sign(arg4 - y))
		return arg0 + lengthdir_x(arg2, arg3);
	else
		return arg0 + lengthdir_x(abs(arg1 - arg4) / ylength, arg3);
}
