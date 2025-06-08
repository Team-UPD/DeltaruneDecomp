function c_soundplay_wait(arg0)
{
	c_cmd("soundplay", arg0, 0, 0, 0);
	c_wait(round(audio_sound_length(arg0) * room_speed));
}
