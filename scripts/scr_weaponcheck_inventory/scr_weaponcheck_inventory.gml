function scr_weaponcheck_inventory(arg0)
{
	haveit = 0;
	itemcount = 0;
	for (i = 0; i < 48; i += 1)
	{
		if (global.weapon[i] == arg0)
			haveit = 1;
		if (global.weapon[i] == arg0)
			itemcount += 1;
	}
	return haveit;
}
