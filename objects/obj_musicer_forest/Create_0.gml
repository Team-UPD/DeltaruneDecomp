doit = 1;
if (global.plot < 70 && room == room_forest_area1)
	doit = 0;
if (doit == 1)
{
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("forest.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
	}
}
