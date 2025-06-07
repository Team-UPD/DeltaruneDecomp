if (paused && !pausing)
{
	pausing = true;
	audio_pause_all();
	instance_deactivate_all(true);
}
if (pausing && !os_is_paused())
{
	paused = false;
	pausing = false;
	instance_activate_all();
	audio_resume_all();
	alarm[0] = 1;
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
