function scr_simtown_reset_cursor()
{
	if (GameOver == 0)
	{
		for (i = 0; i < 16; i += 1)
		{
			for (j = 0; j < 6; j += 1)
			{
				if (TileYouCanBuild[i][j] == 1)
				{
					CursorX = i;
					CursorY = j;
					CursorVisualX = cameray() + (i * 40);
					CursorVisualY = cameray() + (j * 40) + 80;
					exit;
				}
			}
		}
	}
}
