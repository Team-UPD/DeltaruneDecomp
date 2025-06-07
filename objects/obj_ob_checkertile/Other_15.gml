if (active == 1 && global.interact == 0)
{
	global.interact = 1;
	snd_play(snd_boost);
	with (obj_ob_gen)
	{
		whitetimer = 0;
		whitecon = 1;
	}
}
