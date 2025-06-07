function mus_loop_ext(arg0, arg1, arg2)
{
	snd_volume(arg0, arg1 * global.flag[16], 0);
	snd_pitch(arg0, arg2);
	return mus_loop(arg0);
}
