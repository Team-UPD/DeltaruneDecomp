if (bust == 0)
{
	snd_free(global.currentsong[0]);
	global.interact = 1;
	instance_create(0, 0, obj_shake);
	snd_play(snd_cough);
	con = 10;
	bust = 1;
	for (i = 0; i < 12; i += 1)
		instance_create(x + 20 + (i * 6), y + 20 + random(25), obj_dustball_pilebreak);
	s = scr_dark_marker(x + 10, y, spr_susie_shock);
	with (s)
		scr_depth();
	alarm[4] = 2;
	with (s)
		hspeed = 10;
	with (obj_mainchara)
		cutscene = 0;
}
