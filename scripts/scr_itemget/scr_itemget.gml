function scr_itemget(arg0)
{
	var __i = 0;
	var loop = 1;
	noroom = 0;
	_pocketed = 0;
	_noroominventory = 0;
	global.item[12] = 999;
	while (loop == 1)
	{
		if (global.item[__i] == 0)
		{
			global.item[__i] = arg0;
			break;
		}
		if (__i == 12)
		{
			_noroominventory = 1;
			noroom = 1;
			for (var __j = 0; __j < global.flag[64]; __j++)
			{
				if (global.pocketitem[__j] == 0)
				{
					global.pocketitem[__j] = arg0;
					_pocketed = 1;
					noroom = 0;
					break;
				}
			}
			break;
		}
		__i += 1;
	}
	script_execute(scr_iteminfo_all);
}
