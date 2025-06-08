function scr_is_switch_os()
{
	return os_type == os_switch || os_type == 25;
}

function scr_is_valid_mic_platform()
{
	var __validPlat = false;
	if (os_type == os_windows || os_type == os_macosx)
		__validPlat = true;
	if (onSteamDeck())
		__validPlat = false;
	return __validPlat;
}
