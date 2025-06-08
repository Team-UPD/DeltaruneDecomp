function scr_armorremove(arg0)
{
	__i = 0;
	var loop = 1;
	__inventorysize = array_length_1d(global.armor);
	while (loop == 1)
	{
		if (global.armor[__i] == arg0)
		{
			global.armor[__i] = 0;
			break;
		}
		if (__i == __inventorysize)
		{
			loop = 0;
			break;
		}
		__i += 1;
	}
	script_execute(scr_armorinfo_all);
}
