function scr_endturn()
{
	for (i = 0; i < 12; i += 1)
		global.item[i] = tempitem[i][global.charturn];
	for (i = 0; i < 12; i += 1)
	{
		for (j = 0; j < 3; j += 1)
			tempitem[i][j] = global.item[i];
	}
	moveswapped = 0;
	with (obj_writer)
		instance_destroy();
	with (obj_face)
		instance_destroy();
	with (obj_smallface)
		instance_destroy();
	global.attacking = 0;
	for (i = 0; i < 3; i += 1)
	{
		global.monsterattackname[i] = " ";
		if (global.charauto[global.char[i]] == 1 && global.hp[global.char[i]] > 0)
		{
			if (global.monster[2] == 1)
				global.chartarget[i] = 2;
			if (global.monster[1] == 1)
				global.chartarget[i] = 1;
			if (global.monster[0] == 1)
				global.chartarget[i] = 0;
		}
		if (global.charaction[i] == 1)
			global.attacking = 1;
	}
	__noactors = 1;
	if (global.acting[0] == 1)
		__noactors = 0;
	for (__noactorsi = 0; __noactorsi < 3; __noactorsi++)
	{
		if (global.actingsingle[__noactorsi] == 1)
			__noactors = 0;
	}
	if (__noactors == 1)
	{
		scr_attackphase();
	}
	else
	{
		global.charturn = 3;
		global.myfight = 3;
		global.currentactingchar = 0;
		if (global.acting[0] == 0)
			scr_nextact();
		if (global.chapter == 2 && instance_exists(obj_sweet_enemy) && global.actingsingle[0] == 1 && global.actingsingle[1] == 0 && global.actingsingle[2] == 0)
			obj_sweet_enemy.simultotal_funny = 1;
		if (global.acting[0] == 1 && global.actingsimul[0] == 1)
			scr_act_simul();
	}
	with (obj_battlecontroller)
	{
		messagepriority = -1;
		attackpriority = -1;
	}
}
