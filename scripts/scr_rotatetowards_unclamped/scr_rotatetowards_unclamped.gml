function scr_rotatetowards_unclamped(arg0, arg1, arg2)
{
	var __diff = angle_difference(arg1, arg0);
	return arg0 + (sign(__diff) * arg2);
}
