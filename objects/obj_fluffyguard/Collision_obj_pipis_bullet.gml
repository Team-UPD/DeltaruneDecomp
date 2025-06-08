if (active == 0)
	exit;
with (other)
	event_user(1);
if (alarm[0] > 0)
	exit;
hp -= 10;
alarm[0] = 10;
snd_play(snd_hurt1);
