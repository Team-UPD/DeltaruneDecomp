function scr_itemget(arg0)
{
	i = 0;
	loop = 1;
	noroom = 0;
	global.item[12] = 999;
	while (loop == 1)
	{
		if (global.item[i] == 0)
		{
			global.item[i] = arg0;
			break;
		}
		if (i == 12)
		{
			noroom = 1;
			break;
		}
		i += 1;
	}
	script_execute(scr_iteminfo_all);
}
