if (instance_exists(obj_mainchara) && obj_mainchara.x <= 1920 && global.flag[373] == 0 && con == 0)
{
	forcefield = instance_create(2280, 400, obj_forcefield);
	forcefield.image_xscale = 2;
	forcefield.image_yscale = 4;
	forcefield.black_override = 1;
	forcefield.canttalk = 1;
	layer_set_visible("TILES_Edge_Hidden", true);
	con = 1;
	scr_tempsave();
}
if (con == 1)
{
	if (instance_exists(obj_mainchara) && obj_mainchara.x >= 2080)
	{
		face = instance_create(1340, 320, DEVICE_FRIEND);
		con = 2;
	}
}
if (i_ex(forcefield) && global.flag[373] == 1)
{
	layer_set_visible("TILES_Edge_Hidden", false);
	with (forcefield)
		instance_destroy();
}
