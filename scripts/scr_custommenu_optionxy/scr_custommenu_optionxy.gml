function scr_custommenu_optionxy()
{
	wrap = 0;
	vwrap = 0;
	for (_n = 0; _n < menuMax; _n++)
	{
		for (j = 0; j <= menuMaximumID[_n]; j++)
		{
			optionX[_n][j] = menuX[_n] + (wrap * menuSpacingX[_n]);
			optionY[_n][j] = menuY[_n] + (vwrap * menuSpacingY[_n]);
			wrap++;
			if (wrap >= menuWidth[_n])
			{
				wrap = 0;
				vwrap++;
			}
		}
	}
}
