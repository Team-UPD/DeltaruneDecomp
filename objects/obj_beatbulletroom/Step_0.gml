if (playsound == 2)
	playsound = 0;
if (playsound == 1)
{
	if (global.interact == 0)
	{
		var burst = snd_play_pitch(snd_scytheburst, 1.5);
		snd_volume(burst, 0.3, 0);
	}
	playsound = 2;
}
