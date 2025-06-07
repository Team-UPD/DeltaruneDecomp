function ossafe_game_end()
{
	if (!global.is_console)
		game_end();
	else
		game_restart();
}
