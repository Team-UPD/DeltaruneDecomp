global.flag[917] = 2;
if (i_ex(obj_caterpillarchara))
{
	with (obj_caterpillarchara)
		instance_destroy();
}
snd_free_all();
if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init("man.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
