if (scr_sideb_get_phase() > 2)
	song = "spamton_neo_meeting.ogg";
else
	song = "mansion_entrance.ogg";
if (!snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init(song);
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
