function scr_armorget(arg0)
{
	i = 0;
	loop = 1;
	noroom = 0;
	global.armor[12] = 999;
	while (loop == 1)
	{
		if (global.armor[i] == 0)
		{
			global.armor[i] = arg0;
			break;
		}
		if (i == 12)
		{
			noroom = 1;
			break;
		}
		i += 1;
	}
	script_execute(scr_armorinfo_all);
}
