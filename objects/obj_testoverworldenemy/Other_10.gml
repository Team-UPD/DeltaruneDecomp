if (global.interact == 0)
{
	global.specialbattle = 0;
	global.flag[9] = 1;
	global.batmusic[0] = snd_init("battle.ogg");
	alarm[5] = -300;
	vspeed = 0;
	global.interact = 1;
	con = 1;
}
