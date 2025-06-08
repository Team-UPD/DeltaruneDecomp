function ease_out_circ(arg0, arg1, arg2, arg3)
{
	arg0 = (arg0 / arg3) - 1;
	return (arg2 * sqrt(1 - (arg0 * arg0))) + arg1;
}
