function scr_litemremove(arg0)
{
	for (i = 0; i < 8; i += 1)
	{
		if (global.litem[i] == arg0)
			script_execute(scr_litemshift, i, 0);
	}
}
