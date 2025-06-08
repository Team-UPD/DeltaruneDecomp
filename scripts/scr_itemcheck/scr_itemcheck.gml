function scr_itemcheck(arg0)
{
	haveit = 0;
	itemcount = 0;
	for (var __i = 0; __i < 12; __i += 1)
	{
		if (global.item[__i] == arg0)
			haveit = 1;
		if (global.item[__i] == arg0)
			itemcount += 1;
	}
	return haveit;
}
