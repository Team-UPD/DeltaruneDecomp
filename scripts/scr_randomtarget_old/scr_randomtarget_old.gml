function scr_randomtarget_old()
{
	abletotarget = 1;
	if (global.charcantarget[0] == 0 && global.charcantarget[1] == 0 && global.charcantarget[2] == 0)
		abletotarget = 0;
	mytarget = choose(0, 1, 2);
	if (abletotarget == 1)
	{
		while (global.charcantarget[mytarget] == 0)
			mytarget = choose(0, 1, 2);
	}
	else
	{
		mytarget = 3;
	}
	global.targeted[mytarget] = 1;
}
