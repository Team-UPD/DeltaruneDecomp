con = -1;
customcon = 0;
violentdefeat = 1;
if (global.chapter != 2 || global.flag[309] < 8 || global.flag[309] >= 9)
{
	instance_destroy();
}
else
{
	con = 1;
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(obj_mainchara.x + 60, cameray() - 300, 2, 0);
	scr_makecaterpillar(obj_mainchara.x + 100, cameray() - 300, 3, 1);
	if (violentdefeat == 1)
	{
		whiteall = scr_dark_marker(-10, -10, spr_pixel_white);
		whiteall.image_xscale = 999;
		whiteall.image_yscale = 999;
		whiteall.depth = 0;
		whiteall.image_blend = c_black;
	}
	else
	{
		whiteall = scr_dark_marker(-10, -10, spr_pixel_white);
		whiteall.image_xscale = 999;
		whiteall.image_yscale = 999;
		whiteall.depth = 0;
	}
	sparkle = scr_dark_marker(-100, -100, spr_shine);
	sparkle.image_speed = 0.25;
	sparkle.image_alpha = 0;
	audio_stop_all();
	snd_free_all();
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("spamton_neo_after.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
		audio_sound_pitch(global.currentsong[0], 1);
	}
}
