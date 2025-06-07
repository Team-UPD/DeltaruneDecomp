if (!_init)
	exit;
draw_set_font(_font);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(room_width / 2, (room_height / 2) - 16, _initialize_text, 1, 1, 0);
draw_set_halign(fa_left);
