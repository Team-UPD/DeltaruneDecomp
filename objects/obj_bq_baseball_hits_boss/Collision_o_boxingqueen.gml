if (o_boxingqueen.baseball_hit_boss_number > 0)
	exit;
if (state == 0 && y > 80)
{
	state = 1;
	vspeed = 0;
}
if (audio_is_playing(snd_queen_laugh_0))
	audio_stop_sound(snd_queen_laugh_0);
