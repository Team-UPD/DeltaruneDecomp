if (scr_debug())
{
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
