function scr_monsterattacknamecount(arg0)
{
	__sameattack = 0;
	for (_sameattacki = 0; _sameattacki < 3; _sameattacki++)
	{
		if (global.monsterattackname[_sameattacki] == arg0 && global.monster[_sameattacki] == 1)
			__sameattack++;
	}
	return __sameattack;
}
