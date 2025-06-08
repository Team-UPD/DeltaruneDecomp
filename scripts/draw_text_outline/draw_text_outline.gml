function draw_text_outline(arg0, arg1, arg2, arg3)
{
	resetcolor = draw_get_color();
	draw_set_color(arg3);
	draw_text(arg0 - 1, arg1, arg2);
	draw_text(arg0 - 1, arg1 - 1, arg2);
	draw_text(arg0 - 1, arg1 + 1, arg2);
	draw_text(arg0 + 1, arg1, arg2);
	draw_text(arg0 + 1, arg1 + 1, arg2);
	draw_text(arg0 + 1, arg1 - 1, arg2);
	draw_text(arg0, arg1 + 1, arg2);
	draw_text(arg0, arg1 - 1, arg2);
	draw_set_color(resetcolor);
	draw_text(arg0, arg1, arg2);
}
