if (destroyable == 1)
{
	if (other.big == 0)
	{
		hp--;
		speed = 3;
	}
	else
	{
		hp -= 3;
		speed = 0;
	}
	if (hp <= 0)
	{
		event_user(0);
		snd_play(snd_badexplosion);
		speed = 0;
	}
	else
	{
		timer = -1;
		snd_play(snd_damage);
	}
}
with (other)
	event_user(0);
