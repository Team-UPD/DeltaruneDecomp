function scr_retarget(arg0)
{
	thistarget = global.chartarget[arg0];
	cancelattack = 0;
	if (thistarget == 0)
	{
		if (global.monster[0] == 0)
			thistarget = 1;
	}
	if (thistarget == 1)
	{
		if (global.monster[1] == 0)
			thistarget = 2;
	}
	if (thistarget == 2)
	{
		if (global.monster[2] == 0)
			thistarget = 3;
		if (thistarget == 3 && global.monster[0] == 1)
			thistarget = 0;
		if (thistarget == 3 && global.monster[1] == 1)
			thistarget = 1;
		if (thistarget == 3)
			cancelattack = 1;
	}
	global.chartarget[arg0] = thistarget;
}
