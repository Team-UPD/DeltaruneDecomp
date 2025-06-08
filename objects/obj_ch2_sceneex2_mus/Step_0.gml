if (con == -1)
{
	var offset = 0;
	if (obj_mainchara.press_l == 1)
		offset = -0.003;
	else if (obj_mainchara.press_r == 1)
		offset = 0.003;
	if (offset != 0)
	{
		var gain = clamp(audio_sound_get_gain(global.currentsong[0]) + offset, 0.5, 1);
		audio_sound_gain(global.currentsong[0], gain, 0);
	}
}
if (con == 10)
{
	con = 99;
	alarm[0] = 10;
	snd_play(snd_noise);
	snd_free(global.currentsong[0]);
}
if (con == 100)
{
	con = 111;
	audio_stop_all();
	snd_free_all();
}
