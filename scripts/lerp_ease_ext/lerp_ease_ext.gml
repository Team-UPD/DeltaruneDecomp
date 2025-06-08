function lerp_ease_ext(arg0, arg1, arg2, arg3, arg4, arg5)
{
	if (arg2 && !arg3)
		return lerp(arg0, arg1, scr_ease_in(arg4, arg5));
	else if (!arg2 && arg3)
		return lerp(arg0, arg1, scr_ease_out(arg4, arg5));
	else if (arg2 && arg3)
		return lerp(arg0, arg1, scr_ease_inout(arg4, arg5));
	return lerp(arg0, arg1, arg4);
}
