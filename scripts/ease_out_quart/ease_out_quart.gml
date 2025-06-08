function ease_out_quart(arg0, arg1, arg2, arg3)
{
	return (-arg2 * (power((arg0 / arg3) - 1, 4) - 1)) + arg1;
}
