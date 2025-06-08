if (other.active == 0)
	exit;
if (other.destroyable == 1)
{
	instance_destroy();
	snd_play(snd_damage);
	with (other)
		instance_destroy();
}
