function ease_in_bounce(arg0, arg1, arg2, arg3)
{
	return (arg2 - ease_out_bounce(arg3 - arg0, 0, arg2, arg3)) + arg1;
}
