function scr_wave(arg0, arg1, arg2, arg3)
{
	var a4 = (arg1 - arg0) * 0.5;
	return arg0 + a4 + (sin((((current_time * 0.001) + (arg2 * arg3)) / arg2) * (2 * pi)) * a4);
}
