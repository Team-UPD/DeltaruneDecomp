function draw_sprite_ext_pivotscale(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
{
	draw_sprite_ext(arg0, arg1, arg2 - (arg9 * (arg4 - image_xscale)), arg3 - (arg10 * (arg5 - image_yscale)), arg4, arg5, arg6, arg7, arg8);
}
