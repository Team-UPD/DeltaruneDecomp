function scr_monster_actreset(arg0)
{
	for (__fj = 0; __fj < 6; __fj += 1)
	{
		global.canact[arg0][__fj] = 0;
		global.actname[arg0][__fj] = " ";
		global.actactor[arg0][__fj] = 1;
		global.actdesc[arg0][__fj] = " ";
		global.actcost[arg0][__fj] = 0;
		global.actsimul[arg0][__fj] = 0;
		global.canactsus[arg0][__fj] = 0;
		global.actnamesus[arg0][__fj] = " ";
		global.actdescsus[arg0][__fj] = " ";
		global.actcostsus[arg0][__fj] = 0;
		global.actsimulsus[arg0][__fj] = 0;
		global.canactral[arg0][__fj] = 0;
		global.actnameral[arg0][__fj] = " ";
		global.actdescral[arg0][__fj] = " ";
		global.actcostral[arg0][__fj] = 0;
		global.actsimulral[arg0][__fj] = 0;
		global.canactnoe[arg0][__fj] = 0;
		global.actnamenoe[arg0][__fj] = " ";
		global.actdescnoe[arg0][__fj] = " ";
		global.actcostnoe[arg0][__fj] = 0;
		global.actsimulnoe[arg0][__fj] = 0;
	}
}
