if (con == 0 && image_index >= 3.5)
{
	snd_volume(snd_jump, 1, 0);
	snd_play(snd_jump);
	con = 1;
}
if (con == 1 && image_index >= 9.5)
{
	var sa = snd_play_pitch(snd_bell, 0.6);
	var sb = snd_play_pitch(snd_bell, 0.8);
	snd_volume(sa, 0.5, 0);
	snd_volume(sb, 0.5, 0);
	con = 2;
}
if (con == 2 && image_index >= 14.5)
{
	snd_play(snd_criticalswing);
	con = 3;
}
