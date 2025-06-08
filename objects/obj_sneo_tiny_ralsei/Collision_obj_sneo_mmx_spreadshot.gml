if (active == 0)
	exit;
with (other)
	instance_destroy();
if (alarm[0] > 0)
	exit;
if (other.active == 0)
	exit;
hp -= 10;
alarm[0] = 10;
snd_play(snd_hurt1);
