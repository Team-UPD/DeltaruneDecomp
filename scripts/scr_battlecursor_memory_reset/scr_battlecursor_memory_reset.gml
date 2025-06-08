function scr_battlecursor_memory_reset()
{
	if (global.flag[14] == 0)
	{
		for (i = 0; i < 20; i += 1)
		{
			for (j = 0; j < 20; j += 1)
				global.bmenucoord[i][j] = 0;
		}
	}
}
