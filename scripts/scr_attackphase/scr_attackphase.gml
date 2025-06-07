function scr_attackphase()
{
	with (obj_battlecontroller)
	{
		techwon = 0;
		if (scr_monsterpop() == 0)
			techwon = 1;
		if (techwon == 0)
		{
			fightphase = 1;
			global.charturn = 3;
			if (global.charaction[0] == 4 || global.charaction[0] == 2)
				fightphase = 0;
			if (global.charaction[1] == 4 || global.charaction[1] == 2)
				fightphase = 0;
			if (global.charaction[2] == 4 || global.charaction[2] == 2)
				fightphase = 0;
			if (global.myfight == 4)
				fightphase = 1;
			if (fightphase == 1)
			{
				global.myfight = 1;
				instance_create(xx + 2, yy + 365, obj_attackpress);
			}
			else
			{
				global.myfight = 4;
				instance_create(0, 0, obj_spellphase);
			}
		}
		else
		{
			scr_wincombat();
		}
	}
}
