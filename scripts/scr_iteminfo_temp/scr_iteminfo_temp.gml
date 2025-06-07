function scr_iteminfo_temp(arg0)
{
	for (i = 0; i < 12; i += 1)
	{
		itemid = tempitem[i][arg0];
		scr_iteminfo(itemid);
		tempitemnameb[i][arg0] = itemnameb;
		tempitemdescb[i][arg0] = itemdescb;
		tempitemvalue[i][arg0] = value;
		tempitemusable[i][arg0] = usable;
	}
}
