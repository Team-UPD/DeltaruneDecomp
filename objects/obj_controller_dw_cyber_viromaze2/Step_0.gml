if (noleavefield == 0 && global.flag[352] != 1)
{
	if (obj_mainchara.x >= 240)
		noleavefield = instance_create(200, 240, obj_forcefield);
}
if (con == 1)
{
	instance_create(0, 0, obj_shake);
	snd_play(snd_locker);
	global.interact = 1;
	scr_speaker("no_name");
	msgsetloc(0, "* Sounded like a forcefield deactivating./%", "obj_controller_dw_cyber_viromaze2_slash_Step_0_gml_9_0");
	d = d_make();
	d.side = 0;
	if (instance_exists(obj_ow_viromaze2_viro))
		obj_ow_viromaze2_viro.con = 3;
	if (i_ex(noleavefield))
	{
		with (noleavefield)
			instance_destroy();
	}
	global.flag[352] = 1;
	if (instance_exists(obj_overworld_bulletarea))
	{
		obj_overworld_bulletarea.x = room_width * 5;
		obj_overworld_bulletarea.y = room_height * 5;
	}
	if (instance_exists(obj_forcefield))
	{
		with (obj_forcefield)
			instance_destroy();
	}
	con = 2;
}
if (con == 2)
{
	if (!d_ex())
	{
		global.interact = 0;
		con = 3;
	}
}
