function mus_fade(arg0, arg1)
{
	audio_sound_gain(arg0, 0, (arg1 * 1000) / fps);
}
