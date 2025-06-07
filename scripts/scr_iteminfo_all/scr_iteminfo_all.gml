function scr_iteminfo_all()
{
	for (i = 0; i < 12; i += 1)
	{
		itemid = global.item[i];
		scr_iteminfo(itemid);
		global.itemnameb[i] = itemnameb;
		global.itemdescb[i] = itemdescb;
		global.itemvalue[i] = value;
		global.itemusable[i] = usable;
	}
}
