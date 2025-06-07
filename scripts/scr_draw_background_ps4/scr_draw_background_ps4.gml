function scr_draw_background_ps4(arg0, arg1, arg2)
{
	var bg = arg0;
	var xx = arg1;
	var yy = arg2;
	if (os_type == os_ps4 || scr_is_switch_os() || os_type == os_ps5)
	{
		var scale = window_get_width() / 1920;
		draw_background_stretched(bg, xx * scale, yy * scale, background_get_width(bg) * scale, background_get_height(bg) * scale);
	}
	else
	{
		var scale = window_get_width() / 1920;
		draw_background_stretched(bg, xx * scale, yy * scale, background_get_width(bg) * scale, background_get_height(bg) * scale);
	}
}
