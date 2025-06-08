if (buffering == 0)
{
	bufferbar++;
	if (bufferbar == (bufferdelay - 15))
		songtime = audio_sound_get_track_position(global.batmusic[1]);
	if (bufferbar == bufferdelay)
	{
		bufferbar = 0;
		buffering = 1;
	}
}
else if (buffering == 1)
{
	if ((bufferbar % 15) == 0)
		audio_sound_set_track_position(global.batmusic[1], songtime);
	bufferbar++;
	if (bufferbar == bufferduration)
		buffering = 2;
}
