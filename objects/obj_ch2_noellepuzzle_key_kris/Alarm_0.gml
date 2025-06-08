if (i_ex(obj_ch2_noellepuzzle_forcefield))
{
	with (obj_ch2_noellepuzzle_forcefield)
	{
		if (forcefield_id == other.forcefield_id)
		{
			snd_play(snd_spearappear);
			fadeout = true;
		}
	}
}
if (i_ex(obj_ch2_city_noelle_monologue))
{
	with (obj_ch2_city_noelle_monologue)
		alarm[0] = 1;
}
