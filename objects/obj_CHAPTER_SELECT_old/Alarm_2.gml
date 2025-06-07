audio_stop_all();
var chapstring = string(chaptertoload_temp);
var parameters = get_chapter_switch_parameters();
switch (os_type)
{
	case os_windows:
		game_change("/chapter" + chapstring + "_windows", "-game data.win" + parameters);
		break;
	case os_switch:
		game_change("rom:/chapter" + chapstring + "_switch/", parameters);
		break;
	case os_ps4:
		game_change("", "-game /app0/games/chapter" + chapstring + "_ps4/game.win" + parameters);
		break;
	case os_ps5:
		game_change("", "-game /app0/games/chapter" + chapstring + "_ps5/game.win" + parameters);
		break;
	case os_macosx:
		game_change("chapter" + chapstring + "_mac", parameters);
		break;
}
