function scr_sideb_get_phase()
{
	var phase = 0;
	if (global.flag[916] == 0)
	{
		if (global.flag[915] > 0 && global.flag[915] < 4)
			phase = 1;
		if (global.flag[915] >= 4 && global.flag[915] < 7)
			phase = 2;
		if (global.flag[915] >= 7 && global.flag[915] < 20)
			phase = 3;
		if (global.flag[915] >= 20)
			phase = 4;
	}
	return phase;
}
