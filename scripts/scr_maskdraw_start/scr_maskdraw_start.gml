function scr_maskdraw_start(arg0, arg1, arg2, arg3)
{
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(arg0, arg1, arg2, arg3, false);
	draw_set_alpha(1);
}
