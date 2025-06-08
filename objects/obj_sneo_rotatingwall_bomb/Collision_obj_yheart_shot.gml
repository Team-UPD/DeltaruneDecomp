if (timer == 0)
{
	snd_play(snd_damage);
	if (other.big == 0)
	{
		with (other)
			event_user(0);
	}
	timer = 1;
	image_speed = 1;
	bomsfallsfx = snd_loop(snd_bombfall);
}
