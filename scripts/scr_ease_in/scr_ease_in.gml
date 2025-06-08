function scr_ease_in(arg0, arg1)
{
	if (arg1 < -3 || arg1 > 7)
		return arg0;
	switch (arg1)
	{
		case -3:
			return ease_in_bounce(arg0, 0, 1, 1);
		case -2:
			return ease_in_elastic(arg0, 0, 1, 1);
		case -1:
			var _s = 1.70158;
			return arg0 * arg0 * (((_s + 1) * arg0) - _s);
		case 0:
			return arg0;
		case 1:
			return -cos(arg0 * 1.5707963267948966) + 1;
		case 6:
			return power(2, 10 * (arg0 - 1));
		case 7:
			return -(sqrt(1 - sqr(arg0)) - 1);
		default:
			return power(arg0, arg1);
	}
}
