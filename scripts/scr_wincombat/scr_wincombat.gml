function scr_wincombat()
{
	if (global.flag[60] == 0 || global.flag[36] == 1)
	{
		global.myfight = 7;
		global.mnfight = -1;
		with (obj_battlecontroller)
			victory = 1;
		for (i = 0; i < 3; i += 1)
		{
			if (global.monster[i] == 1 && i_ex(global.monsterinstance[i]))
			{
				with (global.monsterinstance[i])
					scr_monsterdefeat();
			}
		}
	}
	else
	{
		for (i = 0; i < 3; i += 1)
		{
			if (global.monster[i] == 1 && i_ex(global.monsterinstance[i]))
			{
				with (global.monsterinstance[i])
					scr_monsterdefeat();
			}
		}
		global.encounterno = global.flag[60];
		scr_encountersetup(global.encounterno);
		global.flag[60] = 0;
		for (__j = 0; __j < 3; __j++)
		{
			if (global.monstertype[__j] != 0)
			{
				_newmonster = scr_monster_add(global.monstertype[__j], global.monsterinstancetype[__j]);
				global.monsterinstance[_newmonster].x = camerax() + 800;
				global.monsterinstance[_newmonster].y = global.monstermakey[__j];
				with (global.monsterinstance[_newmonster])
					scr_move_to_point_over_time(global.monstermakex[myself], global.monstermakey[myself], 10);
			}
		}
		global.myfight = 5;
		myfightreturntimer = 15;
		global.mnfight = -1;
	}
}
