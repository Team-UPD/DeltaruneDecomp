function scr_spellmenu_setup()
{
	var __actnamecheck = 0;
	var __monstertype = global.monstertype[0];
	for (__i = 1; __i < 3; __i++)
	{
		if (global.monster[__i] == 1 && global.monstertype[__i] != __monstertype)
			__actnamecheck = 1;
	}
	for (__i = 0; __i < 3; __i++)
	{
		for (__fj = 0; __fj < 6; __fj++)
		{
			global.battlespell[__i][__fj] = 0;
			if (global.char[__i] == 1)
			{
				if (global.canact[0][__fj] == 1)
				{
					global.battlespell[__i][__fj] = -1;
					if (global.battleactcount[__i] < (__fj + 1))
						global.battleactcount[__i] = __fj + 1;
					global.battlespellcost[__i][__fj] = global.actcost[0][__fj];
					global.battlespellname[__i][__fj] = global.actname[0][__fj];
					global.battlespelldesc[__i][__fj] = global.actdesc[0][__fj];
					global.battlespelltarget[__i][__fj] = 0;
					global.battlespellspecial[__i][__fj] = 1;
				}
			}
			if (global.char[__i] == 2)
			{
				if (global.canactsus[0][__fj] == 1)
				{
					global.battlespell[__i][__fj] = -1;
					if (global.battleactcount[__i] < (__fj + 1))
						global.battleactcount[__i] = __fj + 1;
					global.battlespellcost[__i][__fj] = global.actcostsus[0][__fj];
					global.battlespellname[__i][__fj] = global.actnamesus[0][__fj];
					if (__actnamecheck)
						global.battlespellname[__i][__fj] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1053_0");
					global.battlespelldesc[__i][__fj] = global.actdescsus[0][__fj];
					global.battlespelltarget[__i][__fj] = 2;
					global.battlespellspecial[__i][__fj] = 2;
				}
			}
			if (global.char[__i] == 3)
			{
				if (global.canactral[0][__fj] == 1)
				{
					global.battlespell[__i][__fj] = -1;
					if (global.battleactcount[__i] < (__fj + 1))
						global.battleactcount[__i] = __fj + 1;
					global.battlespellcost[__i][__fj] = global.actcostral[0][__fj];
					global.battlespellname[__i][__fj] = global.actnameral[0][__fj];
					if (__actnamecheck)
						global.battlespellname[__i][__fj] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1057_0");
					global.battlespelldesc[__i][__fj] = global.actdescral[0][__fj];
					global.battlespelltarget[__i][__fj] = 2;
					global.battlespellspecial[__i][__fj] = 3;
				}
			}
			if (global.char[__i] == 4)
			{
				if (global.canactnoe[0][__fj] == 1)
				{
					global.battlespell[__i][__fj] = -1;
					if (global.battleactcount[__i] < (__fj + 1))
						global.battleactcount[__i] = __fj + 1;
					global.battlespellcost[__i][__fj] = global.actcostnoe[0][__fj];
					global.battlespellname[__i][__fj] = global.actnamenoe[0][__fj];
					if (__actnamecheck)
						global.battlespellname[__i][__fj] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1061_0");
					global.battlespelldesc[__i][__fj] = global.actdescnoe[0][__fj];
					global.battlespelltarget[__i][__fj] = 2;
					global.battlespellspecial[__i][__fj] = 4;
				}
			}
		}
	}
	scr_spellinfo_all();
	for (__i = 0; __i < 3; __i++)
	{
		for (__fj = 0; __fj < 12; __fj++)
		{
			__ib = global.battleactcount[__i] + __fj;
			global.battlespell[__i][__ib] = global.spell[global.char[__i]][__fj];
			global.battlespellcost[__i][__ib] = global.spellcost[global.char[__i]][__fj];
			global.battlespellname[__i][__ib] = global.spellnameb[global.char[__i]][__fj];
			global.battlespelldesc[__i][__ib] = global.spelldescb[global.char[__i]][__fj];
			global.battlespelltarget[__i][__ib] = global.spelltarget[global.char[__i]][__fj];
		}
	}
}
