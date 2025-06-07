if (global.plot < 30)
{
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("creepydoor.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
	}
}
else if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init("castletown_empty.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
