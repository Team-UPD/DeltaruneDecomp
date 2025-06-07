function scr_keyitemshift(arg0, arg1)
{
	global.keyitem[12] = arg1;
	for (i = arg0; i < 12; i += 1)
		global.keyitem[i] = global.keyitem[i + 1];
	scr_keyiteminfo_all();
}
