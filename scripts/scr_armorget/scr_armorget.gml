function scr_armorget(arg0)
{
	noroom = 0;
	var legacy = 0;
	var __i = 0;
	if (legacy == 0)
	{
		var __itemcount = 0;
		__armor[0] = arg0;
		for (__i = 0; __i < 48; __i++)
		{
			if (global.armor[__i] != 0)
			{
				__armor[__itemcount + 1] = global.armor[__i];
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
					global.armor[__i] = __armor[__i];
				else
					global.armor[__i] = 0;
			}
		}
	}
	else if (legacy)
	{
		loop = 1;
		global.armor[48] = 999;
		while (loop == 1)
		{
			if (global.armor[__i] == 0)
			{
				global.armor[__i] = arg0;
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
	script_execute(scr_armorinfo_all);
}
