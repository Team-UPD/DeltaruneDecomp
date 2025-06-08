function ease_out_expo(arg0, arg1, arg2, arg3)
{
	return (arg2 * (-power(2, (-10 * arg0) / arg3) + 1)) + arg1;
}
