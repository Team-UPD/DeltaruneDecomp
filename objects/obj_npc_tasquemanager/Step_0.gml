if (myinteract == 1 && !d_ex())
	myinteract = 0;
if (con == 1 && !d_ex())
{
	if (instance_exists(obj_tasquepainting))
	{
		with (obj_tasquepainting)
			tasquespawn = 1;
	}
	con = 2;
	alarm[4] = 35;
}
if (con == 3)
{
	marker2.depth = -1;
	depth = -2;
	encounterflag = 542;
	global.flag[54] = encounterflag;
	global.flag[9] = 2;
	scr_battle(57, 0, marker2, id, 0);
	instance_create(x, y, obj_tasque_manager_tempsave);
	con = 4;
	if (instance_exists(obj_tasquepainting))
	{
		with (obj_tasquepainting)
			image_index = 1;
	}
}
