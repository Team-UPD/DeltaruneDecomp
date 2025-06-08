function scr_actselect(arg0, arg1)
{
	if (i_ex(global.monsterinstance[arg0]))
	{
		if (global.char[global.charturn] == 1)
			global.monsterinstance[arg0].acting = arg1 + 1;
		if (global.char[global.charturn] == 2)
			global.monsterinstance[arg0].actingsus = arg1 + 1;
		if (global.char[global.charturn] == 3)
			global.monsterinstance[arg0].actingral = arg1 + 1;
		if (global.char[global.charturn] == 4)
			global.monsterinstance[arg0].actingnoe = arg1 + 1;
	}
	if (global.char[global.charturn] == 1)
	{
		global.actingsimul[0] = actsimul[arg1];
		global.acting[0] = 1;
		global.actingsingle[0] = 1;
		global.actingtarget[global.charturn] = arg0;
		if (global.actactor[arg0][arg1] == 2)
			global.acting[charpos[1]] = 1;
		if (global.actactor[arg0][arg1] == 3)
			global.acting[charpos[2]] = 1;
		if (global.actactor[arg0][arg1] == 4)
		{
			global.acting[2] = 1;
			global.acting[1] = 1;
		}
		if (global.actactor[arg0][arg1] == 5)
			global.acting[charpos[3]] = 1;
		for (i = 0; i < 3; i += 1)
		{
			if (global.acting[i] == 1)
			{
				global.faceaction[i] = 6;
				global.charaction[i] = 9;
			}
		}
	}
	else
	{
		global.actingtarget[global.charturn] = arg0;
		global.actingsingle[global.charturn] = 1;
		global.actingsimul[global.charturn] = actsimul[arg1];
		global.faceaction[global.charturn] = 6;
		global.charaction[global.charturn] = 9;
	}
}
