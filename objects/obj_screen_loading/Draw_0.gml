if (!_init)
	exit;
draw_set_color(c_black);
ossafe_fill_rectangle(0, 0, room_width, room_height);
draw_set_font(_font);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(camera_get_view_width(view_camera[0]) / 2, (camera_get_view_height(view_camera[0]) / 2) + _y_offset, _initialize_text, 1, 1, 0);
draw_set_halign(fa_left);
