function scr_inverselerp(arg0, arg1, arg2)
{
	if (arg1 == arg0)
		return 0;
	return (arg2 - arg0) / (arg1 - arg0);
}
