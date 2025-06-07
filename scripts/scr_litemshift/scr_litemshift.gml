function scr_litemshift(arg0, arg1)
{
	global.litem[8] = arg1;
	for (i = arg0; i < 8; i += 1)
		global.litem[i] = global.litem[i + 1];
	script_execute(scr_litemname);
}
