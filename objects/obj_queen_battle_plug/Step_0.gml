if (con == 0)
{
	timer++;
	y = lerp(ystart, ystart + 140, timer / 14);
	if (timer == 14)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 2)
{
	timer++;
	y = lerp(ystart + 140, ystart, timer / 7);
	if (timer == 7)
		instance_destroy();
}
