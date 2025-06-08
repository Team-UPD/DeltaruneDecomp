function scr_movetowards(arg0, arg1, arg2)
{
	if (arg0 == arg1)
		return arg0;
	else if (arg0 > arg1)
		return max(arg0 - arg2, arg1);
	else
		return min(arg0 + arg2, arg1);
}
