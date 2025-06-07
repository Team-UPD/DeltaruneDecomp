function scr_keyiteminfo_all()
{
	for (i = 0; i < 12; i += 1)
	{
		keyitemid = global.keyitem[i];
		keyitemname[i] = " ";
		scr_keyiteminfo(keyitemid);
		keyitemusable[i] = tempkeyitemusable;
		keyitemname[i] = tempkeyitemname;
		keyitemdesc[i] = tempkeyitemdesc;
	}
}
