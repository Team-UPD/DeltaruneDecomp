if (con == 2)
{
	with (obj_mainchara)
	{
		sprite_index = spr_krisd_dark;
		fun = 0;
		global.facing = 0;
	}
	global.interact = 0;
	con = 3;
	global.flag[7] = 0;
	if (global.plot < 16)
		global.plot = 16;
	scr_tempsave();
}
