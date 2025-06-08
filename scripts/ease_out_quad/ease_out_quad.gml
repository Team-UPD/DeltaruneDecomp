function ease_out_quad(arg0, arg1, arg2, arg3)
{
	arg0 /= arg3;
	return (-arg2 * arg0 * (arg0 - 2)) + arg1;
}
