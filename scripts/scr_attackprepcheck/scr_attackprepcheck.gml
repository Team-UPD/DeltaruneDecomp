function scr_attackprepcheck(arg0, arg1)
{
	if (arg0 == 0)
		return 0;
	var __attackcount = 0;
	for (i = 0; i < arg0; i++)
	{
		if (global.monster[i] && global.monsterattackname[i] == arg1)
			__attackcount++;
	}
	return __attackcount;
}
