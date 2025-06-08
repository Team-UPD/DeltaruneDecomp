function ease_inout_bounce(arg0, arg1, arg2, arg3)
{
	if (arg0 < (arg3 * 0.5))
		return (ease_in_bounce(arg0 * 2, 0, arg2, arg3) * 0.5) + arg1;
	return (ease_out_bounce((arg0 * 2) - arg3, 0, arg2, arg3) * 0.5) + (arg2 * 0.5) + arg1;
}
