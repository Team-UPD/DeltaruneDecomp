function scr_itemcheck_pocket(arg0)
{
	haveit = 0;
	itemcount = 0;
	for (var __i = 0; __i < global.flag[64]; __i += 1)
	{
		if (global.pocketitem[__i] == arg0)
			haveit = 1;
		if (global.pocketitem[__i] == arg0)
			itemcount += 1;
	}
	return haveit;
}
