function scr_ease_out(arg0, arg1)
{
	if (arg1 < -3 || arg1 > 7)
		return arg0;
	switch (arg1)
	{
		case -3:
			return ease_out_bounce(arg0, 0, 1, 1);
		case -2:
			return ease_out_elastic(arg0, 0, 1, 1);
		case -1:
			return ease_out_back(arg0, 0, 1, 1);
		case 0:
			return arg0;
		case 1:
			return sin(arg0 * 1.5707963267948966);
		case 2:
			return -arg0 * (arg0 - 2);
		case 6:
			return -power(2, -10 * arg0) + 1;
		case 7:
			arg0--;
			return sqrt(1 - (arg0 * arg0));
		default:
			arg0--;
			if (arg1 == 4)
			{
				return -1 * (power(arg0, arg1) - 1);
				break;
			}
			return power(arg0, arg1) + 1;
	}
}
