if (!i_ex(obj_encounterbasic) && !i_ex(obj_battlecontroller))
{
	if (global.flag[371] != 1)
	{
		global.flag[9] = 0;
		global.flag[371] = 1;
		scr_tempsave();
	}
	instance_destroy();
}
