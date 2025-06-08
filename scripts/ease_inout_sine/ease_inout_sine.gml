function ease_inout_sine(arg0, arg1, arg2, arg3)
{
	return (arg2 * 0.5 * (1 - cos((pi * arg0) / arg3))) + arg1;
}
