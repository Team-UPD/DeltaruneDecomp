puzz1 = instance_create(260, 220, obj_suitspuzz);
with (puzz1)
{
	sol[0] = 3;
	sol[1] = 4;
	sol[2] = 1;
	max_suit = 3;
}
tried = 0;
pcon = 0;
scon = 0;
wcon = 0;
con2 = 0;
if (global.plot < 154)
{
	con = 1;
	__view_set(e__VW.XView, 0, 440);
	with (obj_mainchara)
		cutscene = 1;
}
if (global.plot == 154)
{
	con = 300;
	with (puzz1)
	{
		suit[0] = 3;
		suit[1] = 4;
		suit[2] = 1;
	}
}
if (global.plot > 154)
{
	with (puzz1)
	{
		suit[0] = 3;
		suit[1] = 4;
		suit[2] = 1;
	}
	con = 999;
	instance_destroy();
}
