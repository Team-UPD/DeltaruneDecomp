if (init == 1)
{
	for (i = 0; i <= tilemax; i++)
	{
		tile[i].x += x - xprevious;
		tile[i].y += y - yprevious;
		tile[i].image_alpha = image_alpha;
		tile[i].image_blend = image_blend;
	}
}
if (init == 1)
{
	for (i = 0; i <= 20; i++)
	{
		if (i_ex(staticTile[i]))
			staticTile[i].x += x - xprevious;
		if (i_ex(staticTile[i]))
			staticTile[i].y += y - yprevious;
		if (i_ex(staticTile[i]))
			staticTile[i].image_alpha = image_alpha;
		if (i_ex(staticTile[i]))
			staticTile[i].image_blend = image_blend;
	}
}
if (init == 1)
{
	puzSwitch.x += x - xprevious;
	puzSwitch.y += y - yprevious;
	puzSwitch.image_alpha = image_alpha;
	puzSwitch.image_blend = image_blend;
	puzSwitch.depth = depth - 1;
	hole.x += x - xprevious;
	hole.y += y - yprevious;
	hole.image_alpha = image_alpha;
	hole.image_blend = image_blend;
}
remx = xprevious;
remy = yprevious;
mouseKiller.x = x - 5;
mouseKiller.y = y - 5;
