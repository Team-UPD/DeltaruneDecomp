if (active == 0)
	exit;
with (other)
{
	snd_play_pitch(snd_bomb, 1.1 + random(0.2));
	instance_destroy();
	event_user(0);
}
if (alarm[0] > 0)
	exit;
hp -= 10;
alarm[0] = 10;
snd_play(snd_hurt1);
