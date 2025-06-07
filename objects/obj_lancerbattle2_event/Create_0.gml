con = 1;
image_speed = 0;
mcon = 1;
puzz1 = instance_create(780, 60, obj_suitspuzz);
with (puzz1)
{
	sol[0] = 1;
	sol[1] = 2;
	sol[2] = 1;
	max_suit = 3;
}
if (global.plot >= 154)
{
	with (puzz1)
	{
		suit[0] = 1;
		suit[1] = 2;
		suit[2] = 1;
	}
	con = 999;
	mcon = 999;
	instance_destroy();
}
