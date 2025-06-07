_parent = -4;
roominit = 0;
if (os_type == os_windows)
	window_enable_borderless_fullscreen(true);

init = function(arg0, arg1)
{
	_parent = arg0;
	window_set_caption(get_title());
	var isoriginallauncher = is_original_launcher(arg1);
	var display_height = display_get_height();
	var display_width = display_get_width();
	window_size_multiplier = 1;
	for (var _ww = 2; _ww < 12; _ww += 1)
	{
		if (display_width > (640 * _ww) && display_height > (480 * _ww))
			window_size_multiplier = _ww;
	}
	var set_windowsize = false;
	if (isoriginallauncher)
	{
		if (ossafe_file_exists("true_config.ini"))
		{
			ossafe_ini_open("true_config.ini");
			var dofullscreen = ini_read_real("SCREEN", "FULLSCREEN", 0);
			if (dofullscreen)
				window_set_fullscreen(true);
			else
				set_windowsize = true;
			ossafe_ini_close();
		}
	}
	if (set_windowsize)
	{
		if (window_size_multiplier > 1)
		{
			window_set_size(640 * window_size_multiplier, 480 * window_size_multiplier);
			alarm[0] = 1;
		}
	}
	var _locale = os_get_language();
	var _lang = (substr(_locale, 1, 2) != "ja") ? "en" : "ja";
	global.lang = _lang;
	if (ossafe_file_exists("true_config.ini"))
	{
		ossafe_ini_open("true_config.ini");
		global.lang = ini_read_string("LANG", "LANG", _lang);
		ossafe_ini_close();
	}
	if (!scr_has_ura_data())
	{
		for (var i = 0; i < (4 << 0); i++)
		{
			var chapter = i + 1;
			scr_convert_ura_data(chapter);
		}
	}
	_parent.trigger_event("init_complete");
	isfullscreen = window_get_fullscreen();
	var _input = instance_create(0, 0, obj_input);
	_input.init();
};
