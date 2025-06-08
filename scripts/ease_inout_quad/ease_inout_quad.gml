function ease_inout_quad(arg0, arg1, arg2, arg3)
{
	arg0 /= (arg3 * 0.5);
	if (arg0 < 1)
		return (arg2 * 0.5 * (arg0 * arg0)) + arg1;
	return (-arg2 * 0.5 * ((--arg0 * (arg0 - 2)) - 1)) + arg1;
}
