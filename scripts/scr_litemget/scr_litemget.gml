function scr_litemget(arg0)
{
	i = 0;
	loop = 1;
	noroom = 0;
	global.litem[8] = 999;
	while (loop == 1)
	{
		if (global.litem[i] == 0)
		{
			global.litem[i] = arg0;
			break;
		}
		if (i == 8)
		{
			noroom = 1;
			break;
		}
		i += 1;
	}
	scr_litemname();
}
