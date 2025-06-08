if (!obj_shapepuzzle.goalHit)
{
	snd_play(snd_noise);
	global.interact = 1;
	global.facing = 2;
	active = true;
	with (obj_shapepuzzle)
		inUse = true;
	with (myPiece)
		active = true;
	mybuffer = 0;
}
