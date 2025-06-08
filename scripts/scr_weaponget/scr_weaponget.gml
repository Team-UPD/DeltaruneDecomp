function scr_weaponget(arg0)
{
	noroom = 0;
	var legacy = 0;
	var __i = 0;
	if (legacy == 0)
	{
		var __itemcount = 0;
		__weapon[0] = arg0;
		for (__i = 0; __i < 48; __i++)
		{
			if (global.weapon[__i] != 0)
			{
				__weapon[__itemcount + 1] = global.weapon[__i];
				__itemcount++;
			}
		}
		if (__itemcount >= 48)
		{
			noroom = 1;
		}
		else
		{
			for (__i = 0; __i < 48; __i++)
			{
				if (__i <= __itemcount)
					global.weapon[__i] = __weapon[__i];
				else
					global.weapon[__i] = 0;
			}
		}
	}
	else if (legacy)
	{
		loop = 1;
		global.weapon[48] = 999;
		while (loop == 1)
		{
			if (global.weapon[__i] == 0)
			{
				global.weapon[__i] = arg0;
				break;
			}
			if (__i == 48)
			{
				noroom = 1;
				break;
			}
			__i += 1;
		}
	}
	script_execute(scr_weaponinfo_all);
}
