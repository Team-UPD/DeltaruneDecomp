function scr_spellconsumeb()
{
	global.tension -= cost;
	global.faceaction[global.charturn] = 2;
	global.charaction[global.charturn] = 2;
	global.charspecial[global.charturn] = global.spell[global.char[global.charturn]][global.bmenucoord[2][global.charturn]];
	global.tensionselect = 0;
	scr_nexthero();
}
