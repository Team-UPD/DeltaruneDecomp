function scr_ease_in_dx(arg0, arg1, arg2, arg3, arg4)
{
	if (arg4 < -3 || arg4 > 6)
		return arg0;
	switch (arg4)
	{
		case -3:
			return ease_in_bounce(arg0, arg1, arg2, arg3);
		case -2:
			return ease_in_elastic(arg0, arg1, arg2, arg3);
		case -1:
			var _s = 1.70158;
			return arg0 * arg0 * (((_s + 1) * arg0) - _s);
		case 0:
			arg0 /= arg3;
			return -cos(arg0 * 1.5707963267948966) + 1;
		case 1:
			return power(2, 10 * (arg0 - 1));
		case 6:
			return -sqrt(1 - sqr(arg0));
		default:
			return (arg2 * power(arg0 / arg3, arg4)) + arg1;
	}
}
