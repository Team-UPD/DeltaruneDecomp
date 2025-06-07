function scr_retarget_spell()
{
	cancelattack = 0;
	if (star == 0)
	{
		if (global.monster[0] == 0)
			star = 1;
	}
	if (star == 1)
	{
		if (global.monster[1] == 0)
			star = 2;
	}
	if (star == 2)
	{
		if (global.monster[2] == 0)
			star = 3;
		if (star == 3 && global.monster[0] == 1)
			star = 0;
		if (star == 3 && global.monster[1] == 1)
			star = 1;
		if (star == 3)
			cancelattack = 1;
	}
}
