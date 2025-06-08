function draw_sprite_ext_flash(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
	d3d_set_fog(true, arg7, 0, 1);
	draw_sprite_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
	d3d_set_fog(false, c_black, 0, 0);
}
