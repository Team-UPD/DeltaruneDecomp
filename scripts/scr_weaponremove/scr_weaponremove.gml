function scr_weaponremove(arg0)
{
	__i = 0;
	__loop = 1;
	__inventorysize = array_length_1d(global.weapon);
	while (__loop == 1)
	{
		if (global.weapon[__i] == arg0)
		{
			global.weapon[__i] = 0;
			break;
		}
		if (i == __inventorysize)
		{
			__loop = 0;
			break;
		}
		__i += 1;
	}
	script_execute(scr_weaponinfo_all);
}
