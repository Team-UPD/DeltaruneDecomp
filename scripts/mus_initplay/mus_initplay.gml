function mus_initplay(arg0)
{
	global.currentsong[0] = snd_init(arg0);
	global.currentsong[1] = mus_play(global.currentsong[0]);
}
