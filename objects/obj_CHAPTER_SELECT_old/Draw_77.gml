if (os_type == os_switch || os_type == os_ps4)
{
	var ww = window_get_width();
	var wh = window_get_height();
	var sw = surface_get_width(application_surface);
	var sh = surface_get_height(application_surface);
	var xx = floor((ww - (sw * global.window_scale)) / 2);
	var yy = floor((wh - (sh * global.window_scale)) / 2);
	global.window_xofs = xx;
	global.window_yofs = yy;
	if (os_type == os_switch && wh == 720)
		texture_set_interpolation(true);
	else
		texture_set_interpolation(false);
	draw_enable_alphablend(false);
	draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1);
	draw_enable_alphablend(true);
	texture_set_interpolation(false);
}
else
{
	global.window_xofs = 0;
	global.window_yofs = 0;
}
if (!global.is_console)
{
	var nowfullscreen = window_get_fullscreen();
	if (nowfullscreen != isfullscreen)
	{
		ini_open("true_config.ini");
		ini_write_real("SCREEN", "FULLSCREEN", nowfullscreen);
		ini_close();
		show_debug_message("fullscreen switched:" + string(nowfullscreen));
		if (!nowfullscreen)
		{
			window_set_size(640 * window_size_multiplier, 480 * window_size_multiplier);
			alarm[2] = 1;
		}
	}
	isfullscreen = nowfullscreen;
}
