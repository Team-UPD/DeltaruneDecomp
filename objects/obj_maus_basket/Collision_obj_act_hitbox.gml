if (caught[other.which] == 0)
{
	caught[other.which] = 1;
	if (other.parentid.object_index == obj_maus_enemy)
	{
		snd_stop(snd_squeaky);
		snd_play(snd_squeaky);
		snd_volume(snd_squeaky, 1, 0);
	}
	else
	{
		snd_stop(snd_noise);
		snd_play(snd_noise);
		snd_volume(snd_noise, 0.8, 0);
	}
}
monsterhit[other.which] = 1;
maker.caught[other.which] = 1;
with (obj_mauswheel_enemy)
	actfailure = 0;
