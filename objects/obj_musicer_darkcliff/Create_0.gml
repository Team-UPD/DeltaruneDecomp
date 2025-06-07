if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init("creepylandscape.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 0.95);
}
