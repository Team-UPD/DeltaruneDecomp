hp--;
if (x <= (camerax() + 480))
{
	friction = 0.5;
	if (other.big == 1)
		hspeed += 8;
	else
		hspeed += 4;
	var rembig = other.big;
	with (obj_sneo_phonehand)
	{
		friction = 0.5;
		hspeed += 2;
		if (rembig)
			hspeed += 4;
	}
}
snd_play(snd_damage);
if (x >= (camerax() + 480))
	x = camerax() + 480;
with (other)
	event_user(0);
