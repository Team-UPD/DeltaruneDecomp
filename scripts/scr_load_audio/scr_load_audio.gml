function scr_load_audio()
{
	var audio_groups = [1, 0];
	for (var i = 0; i < array_length(audio_groups); i++)
	{
		if (audio_group_is_loaded(audio_groups[i]))
			continue;
		audio_group_load(audio_groups[i]);
	}
}
