function scr_isphase(arg0)
{
	__isphase = 0;
	if (arg0 == "menu" && global.myfight == 0)
		__isphase = 1;
	if (arg0 == "acting" && global.myfight == 3)
		__isphase = 1;
	if (arg0 == "victory" && global.myfight == 7)
		__isphase = 1;
	if (arg0 == "attack" || arg0 == "fight")
	{
		if (global.myfight == 1)
			__isphase = 1;
	}
	if (arg0 == "spell" || arg0 == "item")
	{
		if (global.myfight == 4)
			__isphase = 1;
	}
	if (arg0 == "enemytalk" || arg0 == "balloon")
	{
		if (global.mnfight == 1)
			__isphase = 1;
	}
	if (arg0 == "enemyattack" || arg0 == "bullets")
	{
		if (global.mnfight == 2)
			__isphase = 1;
	}
	return __isphase;
}
