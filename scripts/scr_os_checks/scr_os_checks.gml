function scr_is_switch_os()
{
	return os_type == os_switch;
}

function scr_is_valid_mic_platform()
{
	return os_type == os_windows || os_type == os_macosx || os_type == os_ps5;
}
