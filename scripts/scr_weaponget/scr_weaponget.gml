function scr_weaponget(arg0)
{
	i = 0;
	loop = 1;
	noroom = 0;
	global.weapon[12] = 999;
	while (loop == 1)
	{
		if (global.weapon[i] == 0)
		{
			global.weapon[i] = arg0;
			break;
		}
		if (i == 12)
		{
			noroom = 1;
			break;
		}
		i += 1;
	}
	script_execute(scr_weaponinfo_all);
}
