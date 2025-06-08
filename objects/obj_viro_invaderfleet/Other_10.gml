var loopdir = choose(-1, 1);
shotqueue[0] = irandom(fleetsize - 1);
for (i = 1; i < fleetsize; i++)
{
	shotqueue[i] = shotqueue[i + loopdir];
	if (shotqueue[i] < 0)
		shotqueue[i] = fleetsize + shotqueue[i];
	else if (shotqueue[i] >= fleetsize)
		shotqueue[i] = shotqueue[i] - fleetsize;
}
