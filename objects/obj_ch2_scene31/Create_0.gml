con = -1;
customcon = 0;
anykey = false;
keytimer = 0;
shakebuffer = 0;
maxshaketime = 120;
if (global.chapter != 2 || global.plot >= 211 || global.plot < 205)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (!audio_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("home.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
	}
	audio_sound_gain(global.currentsong[1], 0.5, 0);
	instance_deactivate_object(obj_doorB);
}
