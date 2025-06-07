global.flag[31] = 1;
if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init("field_of_hopes.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
	if (global.flag[209] == 0)
	{
		global.flag[209] = 1;
		instance_create(0, 0, obj_fieldmuslogo);
	}
}
