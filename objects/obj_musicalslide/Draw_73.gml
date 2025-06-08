if (fadingOut)
{
	var _fadeAmt = ease_out_quad(fadeToWhite, 0, 1, 1);
	draw_set_color(c_white);
	draw_set_alpha(_fadeAmt);
	draw_rectangle(-20, -20, room_width + 20, room_height + 20, false);
	draw_set_alpha(1);
}
