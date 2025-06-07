function draw_text_shadow(arg0, arg1, arg2)
{
	__txtcolor__ = draw_get_color();
	draw_set_color(c_black);
	draw_text(arg0 + 1, arg1 + 1, string_hash_to_newline(arg2));
	draw_set_color(__txtcolor__);
	draw_text(arg0, arg1, string_hash_to_newline(arg2));
}
