if (active == 0)
	exit;
if (frametype == 0)
{
	frametype = 1;
	other.heart_health -= 4;
}
else if (frametype == 1)
{
	frametype = 0;
	hp -= 10;
	alarm[0] = 10;
	if (!audio_is_playing(snd_hurt1))
		snd_play(snd_hurt1);
}
