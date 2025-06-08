hp -= 10;
alarm[0] = 10;
snd_play(snd_hurt1);
with (other)
	instance_destroy();
