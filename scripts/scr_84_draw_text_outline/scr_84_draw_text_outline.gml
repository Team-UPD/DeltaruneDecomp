function scr_84_draw_text_outline(arg0, arg1, arg2)
{
	var xx = arg0;
	var yy = arg1;
	var str = arg2;
	var __txtcolor__ = draw_get_color();
	draw_set_colour(c_black);
	draw_text(xx - 1, yy - 1, str);
	draw_text(xx + 1, yy - 1, str);
	draw_text(xx - 1, yy + 1, str);
	draw_text(xx + 1, yy + 1, str);
	draw_set_colour(__txtcolor__);
	draw_text(xx, yy, str);
}
