function scr_rotatetowards_point(arg0, arg1, arg2, arg3)
{
	var __targetdir = point_direction(x, y, arg1, arg2);
	var __diff = angle_difference(__targetdir, arg0);
	if (abs(__diff) > arg3)
		return arg0 + (sign(__diff) * arg3);
	else
		return __targetdir;
}
