if (scr_monsterpop() > 0)
{
	for (i = 0; i < 3; i += 1)
	{
		if (target == i)
		{
			if (global.chapter == 2 && instance_exists(o_boxingcontroller))
			{
				o_boxingcontroller.punchcon = 1;
				o_boxingcontroller.damageoverride = round((global.battleat[0] * points[0]) / 10);
				o_boxingcontroller.acttoenemytalktransition = 1;
				if (points[0] == 150 || points[0] == 300)
					o_boxingcontroller.tpoverride = 5;
				if (points[0] == 0)
					o_boxingcontroller.damageoverride = 1;
			}
			else if (i_ex(global.charinstance[i]))
			{
				global.charinstance[i].points = points[i];
				with (global.charinstance[i])
				{
					state = 1;
					attacktimer = 0;
				}
			}
		}
	}
}
