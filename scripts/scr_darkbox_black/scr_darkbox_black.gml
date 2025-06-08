function scr_darkbox_black(arg0, arg1, arg2, arg3)
{
	draw_set_color(c_black);
	draw_rectangle(arg0 + 20, arg1 + 20, arg2 - 20, arg3 - 20, false);
	scr_darkbox(arg0, arg1, arg2, arg3);
}
