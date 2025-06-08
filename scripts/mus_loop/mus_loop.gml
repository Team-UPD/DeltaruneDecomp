function mus_loop(arg0)
{
	_xsndinstance = audio_play_sound(arg0, 90, 1);
	snd_volume(_xsndinstance, 1 * global.flag[16], 0);
	return _xsndinstance;
}
