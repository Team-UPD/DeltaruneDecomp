if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init("bird.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
image_index = 1;
image_speed = 0;
visible = 1;
if (room != room_field_start)
{
	visible = 0;
	instance_destroy();
}
