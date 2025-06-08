function scr_armorcheck_equipped(arg0, arg1)
{
	var __wearing = 0;
	if (global.chararmor1[arg0] == arg1)
		__wearing++;
	if (global.chararmor2[arg0] == arg1)
		__wearing++;
	return __wearing;
}
