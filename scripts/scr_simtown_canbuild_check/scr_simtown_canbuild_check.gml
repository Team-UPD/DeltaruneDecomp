function scr_simtown_canbuild_check()
{
	YourAvailableTileTotal = 0;
	RouxlsAvailableTileTotal = 0;
	GameOver = 0;
	for (i = 0; i < 16; i += 1)
	{
		for (j = 0; j < 6; j += 1)
		{
			TileYouCanBuild[i][j] = 0;
			TileRouxlsCanBuild[i][j] = 0;
			if (TileLand[i][j] == 1 && TileHasHouse[i][j] == 0)
			{
				if (j > 0)
				{
					for (k = 0; k < 3; k += 1)
					{
						if (TileHasHouse[(i - 1) + k][j - 1] == 1)
							TileYouCanBuild[i][j] = 1;
						if (TileHasHouse[(i - 1) + k][j - 1] == 2)
							TileRouxlsCanBuild[i][j] = 1;
					}
				}
				if (j < 5)
				{
					for (k = 0; k < 3; k += 1)
					{
						if (TileHasHouse[(i - 1) + k][j + 1] == 1)
							TileYouCanBuild[i][j] = 1;
						if (TileHasHouse[(i - 1) + k][j + 1] == 2)
							TileRouxlsCanBuild[i][j] = 1;
					}
				}
				if (TileHasHouse[i - 1][j] == 1)
					TileYouCanBuild[i][j] = 1;
				if (TileHasHouse[i - 1][j] == 2)
					TileRouxlsCanBuild[i][j] = 1;
				if (TileHasHouse[i + 1][j] == 1)
					TileYouCanBuild[i][j] = 1;
				if (TileHasHouse[i + 1][j] == 2)
					TileRouxlsCanBuild[i][j] = 1;
			}
			if (TileYouCanBuild[i][j] == 1)
				YourAvailableTileTotal += 1;
			if (TileRouxlsCanBuild[i][j] == 1)
				RouxlsAvailableTileTotal += 1;
		}
	}
	if (YourAvailableTileTotal == 0)
		GameOver = 1;
	if (RouxlsAvailableTileTotal == 0)
		GameOver = 1;
}
