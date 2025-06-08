con = -1;
customcon = 0;
if (global.chapter != 2 || global.flag[309] >= 8 || scr_keyitemcheck(11) == 0)
{
	instance_destroy();
}
else if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init("spamton_neo_meeting.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
	audio_sound_gain(global.currentsong[0], 0.5, 0);
}
