function scr_84_set_draw_font(arg0)
{
	global.chemg_font = arg0;
	draw_set_font(scr_84_get_font(arg0));
}
