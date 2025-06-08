function scr_ease_inout(arg0, arg1)
{
	if (arg1 < -3 || arg1 > 7)
		return arg0;
	if (arg1 == -3)
		return ease_inout_bounce(arg0, 0, 1, 1);
	else if (arg1 == -2)
		return ease_inout_elastic(arg0, 0, 1, 1);
	else if (arg1 == -1)
		return ease_inout_back(arg0, 0, 1, 1);
	else if (arg1 == 1)
		return -0.5 * cos((pi * arg0) - 1);
	else if (arg1 == 0)
		return arg0;
	arg0 *= 2;
	if (arg0 < 1)
	{
		return 0.5 * scr_ease_in(arg0, arg1);
	}
	else
	{
		arg0--;
		return 0.5 * (scr_ease_out(arg0, arg1) + 1);
	}
}
