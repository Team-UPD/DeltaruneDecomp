function onSteamDeck()
{
	if (!variable_global_exists("steamdeck"))
	{
		global.steamdeck = environment_get_variable("SteamDeck") == "1";
		return global.steamdeck;
	}
	else
	{
		return global.steamdeck;
	}
}
