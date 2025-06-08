function scr_spellconsumeb()
{
	global.tension -= cost;
	global.faceaction[global.charturn] = 2;
	global.charaction[global.charturn] = 2;
	if (global.flag[34] == 1)
		global.charspecial[global.charturn] = global.spell[global.char[global.charturn]][global.bmenucoord[2][global.charturn]];
	if (global.flag[34] == 0)
		global.charspecial[global.charturn] = global.battlespell[global.charturn][global.bmenucoord[2][global.charturn]];
	global.tensionselect = 0;
	if (spellanim == 1)
	{
		with (global.charinstance[global.charturn])
		{
			spellframes = 0;
			spellsprite = spellreadysprite;
		}
	}
	else
	{
		with (global.charinstance[global.charturn])
		{
			spellframes = remspellframes;
			spellsprite = remspellsprite;
		}
	}
	scr_nexthero();
}
