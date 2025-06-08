if (global.interact == 0 && (global.facing == 1 || global.facing == 3))
{
	movedir = global.facing;
	ix = 0;
	iy = 0;
	confirm = 1;
	if (movedir == 1)
	{
		ix = x + wd;
		iy = y + 2;
	}
	if (movedir == 3)
	{
		ix = (x - wd) + 5;
		iy = y + 2;
	}
	snd_play(snd_noise);
	snd_play(snd_acquire_lancer);
	if (confirm == 1)
	{
		global.interact = 1;
		movecourse = 1;
		movetimer = 0;
	}
}
