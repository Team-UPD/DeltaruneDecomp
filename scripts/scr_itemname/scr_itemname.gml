function scr_itemname()
{
	for (i = 0; i < 12; i += 1)
	{
		itemid = global.item[i];
		scr_itemnamelist();
	}
}
