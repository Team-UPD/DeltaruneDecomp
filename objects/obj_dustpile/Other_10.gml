if (bust == 0)
{
	global.interact = 1;
	instance_create(0, 0, obj_shake);
	snd_play(snd_cough);
	alarm[3] = 6;
	bust = 1;
	for (i = 0; i < 12; i += 1)
		instance_create(x + 20 + (i * 6), y + 20 + random(25), obj_dustball_pilebreak);
}
