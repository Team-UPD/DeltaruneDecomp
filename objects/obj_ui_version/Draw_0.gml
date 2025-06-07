draw_set_color(c_gray);
draw_set_alpha(_alpha);
draw_set_font(_font);
if (_copyright_enabled)
	draw_text_transformed(x + 16, y + 24, _copyright_text, _scale, _scale, 0);
draw_text_transformed(x + 16, y + 40, _version_text, _scale, _scale, 0);
draw_set_color(c_white);
draw_set_alpha(1);
