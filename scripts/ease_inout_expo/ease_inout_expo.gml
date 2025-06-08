function ease_inout_expo(arg0, arg1, arg2, arg3)
{
	arg0 /= (arg3 * 0.5);
	if (arg0 < 1)
		return (arg2 * 0.5 * power(2, 10 * (arg0 - 1))) + arg1;
	arg0 -= 1;
	return (arg2 * 0.5 * (-power(2, -10 * arg0) + 2)) + arg1;
}
