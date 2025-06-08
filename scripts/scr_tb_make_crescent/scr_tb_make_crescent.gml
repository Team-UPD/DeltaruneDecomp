function scr_tb_make_crescent(arg0, arg1, arg2, arg3, arg4, arg5)
{
	for (var i = 0; i < arg5; i += 1)
		scr_tb_make(arg0, arg1 + (i * arg2), arg3, arg4, true);
}
