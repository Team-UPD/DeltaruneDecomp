var nowfullscreen = window_get_fullscreen();
if (nowfullscreen != isfullscreen)
{
	ini_open("true_config.ini");
	ini_write_real("SCREEN", "FULLSCREEN", nowfullscreen);
	ini_close();
	if (!nowfullscreen)
	{
		window_set_size(640 * window_size_multiplier, 480 * window_size_multiplier);
		alarm[0] = 1;
	}
}
isfullscreen = nowfullscreen;
