function snd_pause(arg0)
{
	if (global.is_console)
		snd_volume(arg0, 0, 0);
	audio_pause_sound(arg0);
}
