timer--;
if (global.menuno != 1)
	timer = -10;
if (timer <= 0)
{
	timer = 60;
	snd_resume(global.currentsong[1]);
	snd_stop(snd_queen_mixtape);
	instance_destroy();
}
