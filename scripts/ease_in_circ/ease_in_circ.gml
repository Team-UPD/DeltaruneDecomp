function ease_in_circ(arg0, arg1, arg2, arg3)
{
	arg0 /= arg3;
	return (arg2 * (1 - sqrt(1 - (arg0 * arg0)))) + arg1;
}
