function ease_out_sine(arg0, arg1, arg2, arg3)
{
	return (arg2 * sin((arg0 / arg3) * 1.5707963267948966)) + arg1;
}
