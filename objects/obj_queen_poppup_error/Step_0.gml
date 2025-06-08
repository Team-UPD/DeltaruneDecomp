if (con == 0)
{
	timer += (timer + 1);
	image_xscale = lerp(4, 1, timer / 30);
	image_yscale = lerp(0, 4, timer / 30);
	if (timer >= 30)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1)
{
	timer += (timer + 1);
	image_xscale = lerp(1, 2, timer / 15);
	image_yscale = lerp(4, 2, timer / 15);
	if (timer >= 15)
	{
		timer = 0;
		con = 2;
		image_xscale = 2;
		image_yscale = 2;
	}
}
if (con == 2)
{
	if (image_index == 9)
	{
		tasquecon = 1;
		con = 99;
	}
}
