function scr_monsterattackcheck(arg0)
{
	for (i = 0; i < 3; i++)
	{
		if (global.monsterattackname[i] == arg0 && global.monster[i] == 1)
			return 1;
	}
	return 0;
}
