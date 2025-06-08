function scr_litemcheck(arg0)
{
	haveit = 0;
	itemcount = 0;
	for (i = 0; i < 8; i += 1)
	{
		if (global.litem[i] == arg0)
			haveit = 1;
		if (global.litem[i] == arg0)
			itemcount += 1;
	}
	return haveit;
}
