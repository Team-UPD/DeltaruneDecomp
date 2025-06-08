function scr_draw_outline_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
	gpu_set_fog(true, arg7, 0, 0);
	var __xdirA = arg9;
	var __xdirB = 0;
	var __ydirA = 0;
	var __ydirB = arg9;
	if ((arg6 % 90) != 0)
	{
		__xdirA = lengthdir_x(arg9, arg6);
		__xdirB = lengthdir_x(arg9, arg6 + 90);
		__ydirA = lengthdir_y(arg9, arg6 + 90);
		__ydirB = lengthdir_y(arg9, arg6);
	}
	draw_sprite_ext(arg0, arg1, arg2 + __xdirA, arg3 + __ydirA, arg4, arg5, arg6, c_white, arg8);
	draw_sprite_ext(arg0, arg1, arg2 - __xdirA, arg3 - __ydirA, arg4, arg5, arg6, c_white, arg8);
	draw_sprite_ext(arg0, arg1, arg2 + __xdirB, arg3 + __ydirB, arg4, arg5, arg6, c_white, arg8);
	draw_sprite_ext(arg0, arg1, arg2 - __xdirB, arg3 - __ydirB, arg4, arg5, arg6, c_white, arg8);
	gpu_set_fog(false, c_white, 0, 0);
}
