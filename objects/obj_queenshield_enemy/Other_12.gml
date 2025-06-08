for (i = 0; i < 14; i++)
	shieldpiece_y_save[i] = shieldpiece_y[i];
var c = 0;
while (c < 14)
{
	var b = min(shieldpiece_y[0], shieldpiece_y[1], shieldpiece_y[2], shieldpiece_y[3], shieldpiece_y[4], shieldpiece_y[5], shieldpiece_y[6], shieldpiece_y[7], shieldpiece_y[8], shieldpiece_y[9], shieldpiece_y[10], shieldpiece_y[11], shieldpiece_y[12], shieldpiece_y[13]);
	for (i = 0; i < 14; i++)
	{
		if (b == shieldpiece_y[i])
		{
			depthorder[c] = i;
			c++;
			shieldpiece_y[i] = 9999;
		}
	}
}
for (i = 0; i < 14; i++)
	shieldpiece_y[i] = shieldpiece_y_save[i];
