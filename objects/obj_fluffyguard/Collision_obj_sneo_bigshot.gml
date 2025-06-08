if (active == 0)
	exit;
if (alarm[0] > 0)
	exit;
if (!other.active)
	exit;
snd_play(snd_hurt1);
hp = 0;
