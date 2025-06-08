function snd_play_x(arg0, arg1, arg2)
{
	var _mysnd = audio_play_sound(arg0, 50, 0);
	snd_volume(_mysnd, arg1, 0);
	snd_pitch(_mysnd, arg2);
	return _mysnd;
}
