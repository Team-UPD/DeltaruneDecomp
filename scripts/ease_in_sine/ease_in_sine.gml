function ease_in_sine(arg0, arg1, arg2, arg3)
{
	return (arg2 * (1 - cos((arg0 / arg3) * 1.5707963267948966))) + arg1;
}
