var kris_houses = 0;
var roulx_houses = 0;
for (i = 0; i < 16; i += 1)
{
	for (j = 0; j < 6; j += 1)
	{
		if (TileHasHouse[i][j] == 1)
			kris_houses++;
		if (TileHasHouse[i][j] == 2)
			roulx_houses++;
	}
}
if (kris_houses > roulx_houses)
{
	actresult = "won";
	global.flag[435] = 2;
}
else if (kris_houses == roulx_houses)
{
	actresult = "tie";
	global.flag[435] = 3;
}
else if (kris_houses < roulx_houses)
{
	actresult = "lost";
	global.flag[435] = 1;
}
