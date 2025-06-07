function scr_makecaterpillar(arg0, arg1, arg2, arg3)
{
	global.cinstance[arg3] = instance_create(arg0, arg1, obj_caterpillarchara);
	global.cinstance[arg3].target = 12 + (arg3 * 12);
	if (arg2 == 3)
	{
		with (global.cinstance[arg3])
		{
			usprite = spr_ralseiu;
			dsprite = spr_ralseid;
			rsprite = spr_ralseir;
			lsprite = spr_ralseil;
		}
	}
	return global.cinstance[arg3];
}
