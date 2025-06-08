function c_wait_soundlength(arg0)
{
	c_wait(round(audio_sound_length(arg0) * room_speed));
}
