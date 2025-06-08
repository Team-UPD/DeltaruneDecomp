function ease_in_cubic(arg0, arg1, arg2, arg3)
{
	return (arg2 * power(arg0 / arg3, 3)) + arg1;
}
