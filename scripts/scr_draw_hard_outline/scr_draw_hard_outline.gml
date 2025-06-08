function scr_draw_hard_outline(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
	var __surf = -1;
	if (!surface_exists(__surf))
		__surf = surface_create(arg2 * 2, arg2 * 2);
	surface_set_target(__surf);
	draw_clear_alpha(c_black, 0);
	var __xdirA = arg9;
	var __xdirB = 0;
	var __ydirA = 0;
	var __ydirB = arg9;
	draw_sprite_ext(arg0, arg1, arg2 + __xdirA, arg3 + __ydirA, arg4, arg5, 0, c_white, 1);
	draw_sprite_ext(arg0, arg1, arg2 - __xdirA, arg3 - __ydirA, arg4, arg5, 0, c_white, 1);
	draw_sprite_ext(arg0, arg1, arg2 + __xdirB, arg3 + __ydirB, arg4, arg5, 0, c_white, 1);
	draw_sprite_ext(arg0, arg1, arg2 - __xdirB, arg3 - __ydirB, arg4, arg5, 0, c_white, 1);
	surface_reset_target();
	gpu_set_fog(true, arg7, 0, 0);
	draw_surface_ext(__surf, arg2, arg3, 1, 1, arg6, c_white, arg8);
	gpu_set_fog(false, c_white, 0, 0);
	if (surface_exists(__surf))
		surface_free(__surf);
}
