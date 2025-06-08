function snd_play_pitch(arg0, arg1)
{
	var _mysnd = audio_play_sound(arg0, 50, 0);
	snd_pitch(_mysnd, arg1);
	return _mysnd;
}
