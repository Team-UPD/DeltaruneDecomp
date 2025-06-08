function scr_actinfo_temp(arg0)
{
	for (__acti = 0; __acti < 6; __acti++)
	{
		canact[__acti] = 0;
		if (global.char[global.charturn] == 1)
		{
			canact[__acti] = global.canact[arg0][__acti];
			acttpcost[__acti] = global.actcost[arg0][__acti];
			actsimul[__acti] = global.actsimul[arg0][__acti];
		}
		if (global.char[global.charturn] == 2)
		{
			canact[__acti] = global.canactsus[arg0][__acti];
			acttpcost[__acti] = global.actcostsus[arg0][__acti];
			actsimul[__acti] = global.actsimulsus[arg0][__acti];
		}
		if (global.char[global.charturn] == 3)
		{
			canact[__acti] = global.canactral[arg0][__acti];
			acttpcost[__acti] = global.actcostral[arg0][__acti];
			actsimul[__acti] = global.actsimulral[arg0][__acti];
		}
		if (global.char[global.charturn] == 4)
		{
			canact[__acti] = global.canactnoe[arg0][__acti];
			acttpcost[__acti] = global.actcostnoe[arg0][__acti];
			actsimul[__acti] = global.actsimulnoe[arg0][__acti];
		}
	}
}
