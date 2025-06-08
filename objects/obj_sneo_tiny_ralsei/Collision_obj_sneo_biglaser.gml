if (active == 0)
	exit;
if (alarm[0] > 0)
	exit;
if (!other.active)
	exit;
hp -= 10;
alarm[0] = 10;
snd_play(snd_hurt1);
