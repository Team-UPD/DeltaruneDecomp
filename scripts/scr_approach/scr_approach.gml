function scr_approach(arg0, arg1, arg2)
{
	if (arg0 < arg1)
	{
		arg0 += arg2;
		if (arg0 > arg1)
			return arg1;
	}
	else
	{
		arg0 -= arg2;
		if (arg0 < arg1)
			return arg1;
	}
	return arg0;
}
