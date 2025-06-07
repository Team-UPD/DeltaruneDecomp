con = 1;
xx = x;
yy = 0;
dummy = instance_create(xx + 500, yy + 160, obj_npc_room);
if (global.plot >= 31)
	con = 400;
if (global.plot < 6)
{
	scr_getchar(3);
	global.cinstance[0] = instance_create(obj_mainchara.x - 6, obj_mainchara.y - 16, obj_caterpillarchara);
	global.cinstance[0].target = 12;
	with (global.cinstance[0])
	{
		usprite = spr_ralseiu;
		dsprite = spr_ralseid;
		rsprite = spr_ralseir;
		lsprite = spr_ralseil;
	}
}
