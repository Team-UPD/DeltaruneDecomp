function scr_itemshift(arg0, arg1)
{
	global.item[12] = arg1;
	for (i = arg0; i < 12; i += 1)
		global.item[i] = global.item[i + 1];
	scr_iteminfo_all();
	scr_itemname();
}
