function scr_chapterswitch(arg0 = 0)
{
	var parameters = get_chapter_switch_parameters();
	if (arg0 == 0)
	{
		if (scr_is_switch_os())
		{
			game_change("rom:/", parameters);
		}
		else
		{
			switch (os_type)
			{
				case os_windows:
					game_change("/../", "-game data.win" + parameters);
					break;
				case os_ps4:
					game_change("", "-game /app0/games/game.win" + parameters);
					break;
				case os_ps5:
					game_change("", "-game /app0/games/game.win" + parameters);
					break;
				case os_macosx:
					game_change("..", parameters);
					break;
			}
		}
	}
	else
	{
		var chapstring = string(arg0);
		show_debug_message("Attempting to launch Chapter " + string(arg0));
		if (scr_is_switch_os())
		{
			game_change("rom:/chapter" + chapstring + "_switch/", parameters);
		}
		else
		{
			switch (os_type)
			{
				case os_windows:
					game_change("/../chapter" + chapstring + "_windows", "-game data.win" + parameters);
					break;
				case os_ps4:
					game_change("", "-game /app0/games/chapter" + chapstring + "_ps4/game.win" + parameters);
					break;
				case os_ps5:
					game_change("", "-game /app0/games/chapter" + chapstring + "_ps5/game.win" + parameters);
					break;
				case os_macosx:
					game_change("../chapter" + chapstring + "_mac", parameters);
					break;
			}
		}
	}
}
