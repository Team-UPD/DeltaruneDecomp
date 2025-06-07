for (i = 0; i < 20; i += 1)
{
	prevalpha[i] = 0;
	prevwx[i] = -200;
	prevwy[i] = -200;
	prevstringmax[i] = 0;
	prevhspace[i] = 0;
	prevlinecount[i] = 0;
	prevvspace[i] = 0;
}
carcon = 0;
drawwave = 0;
con = 0;
dhaver = 0;
v = 0;
vx = 0;
vy = 0;
myd = 23827382;
if (global.plot > 1)
{
	instance_destroy();
}
else
{
	global.facing = 0;
	with (obj_npc_sign)
		instance_destroy();
	global.currentsong[0] = snd_init("mus_introcar.ogg");
	con = 1;
	alarm[4] = 30;
	global.interact = 1;
	k = 30;
	t = scr_marker(195, 240, spr_toriel_lt);
	with (t)
		depth = 400000;
	c = scr_marker(131, 240, spr_torcar_d);
	with (c)
		depth = 500000;
}
