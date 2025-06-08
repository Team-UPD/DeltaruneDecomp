function scr_rotatetowards(arg0, arg1, arg2)
{
	var __diff = angle_difference(arg1, arg0);
	if (abs(__diff) > arg2)
		return arg0 + (sign(__diff) * arg2);
	else
		return arg1;
}

function scr_angle_lerp(arg0, arg1, arg2)
{
	var __diff = angle_difference(arg1, arg0);
	return arg0 + lerp(0, __diff, arg2);
}
