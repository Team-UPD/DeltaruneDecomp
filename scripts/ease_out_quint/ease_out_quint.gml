function ease_out_quint(arg0, arg1, arg2, arg3)
{
	return (arg2 * (power((arg0 / arg3) - 1, 5) + 1)) + arg1;
}
