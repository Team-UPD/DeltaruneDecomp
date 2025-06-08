function mus_volume(arg0, arg1, arg2)
{
	audio_sound_gain(arg0, arg1 * global.flag[16], (arg2 * 1000) / fps);
}
