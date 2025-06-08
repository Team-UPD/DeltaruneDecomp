function ease_inout_cubic(arg0, arg1, arg2, arg3)
{
	arg0 /= (arg3 * 0.5);
	if (arg0 < 1)
		return (arg2 * 0.5 * power(arg0, 3)) + arg1;
	return (arg2 * 0.5 * (power(arg0 - 2, 3) + 2)) + arg1;
}
