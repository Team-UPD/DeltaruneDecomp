function scr_itemdesc()
{
	for (i = 0; i < 12; i += 1)
	{
		itemid = global.item[i];
		itemdesc[i] = scr_itemdesc_single(itemid);
	}
}
