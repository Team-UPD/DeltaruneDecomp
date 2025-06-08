if (audio_is_playing(snd_sneo_overpower))
	snd_stop(snd_sneo_overpower);
global.sp = 4;
snd_stop(snd_rumble);
snd_volume(snd_rumble, 1, 0);
