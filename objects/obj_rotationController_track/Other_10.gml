if (!d_ex())
{
	if (rotate == false && timer > 1 && global.flag[368] < 1)
	{
		buffer = 3;
		global.interact = 1;
		rotate = true;
		timer = 0;
	}
}
