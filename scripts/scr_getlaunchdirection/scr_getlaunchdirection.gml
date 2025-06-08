function scr_getlaunchdirection(arg0, arg1, arg2, arg3)
{
	if ((sqr(arg0) / arg2) <= arg1)
		return 45;
	var __resultangle = radtodeg(arcsin((arg1 * arg2) / sqr(arg0))) / 2;
	if (arg3 >= 1)
		return 90 - __resultangle;
	else if (arg3 <= -1)
		return __resultangle;
	else
		return choose(__resultangle, 90 - __resultangle);
}
