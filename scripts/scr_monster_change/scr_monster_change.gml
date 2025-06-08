function scr_monster_change(arg0, arg1, arg2)
{
	global.monstertype[arg0] = arg1;
	global.monsterinstancetype[arg0] = arg2;
	scr_monster_statreset(arg0);
	scr_monster_makeinstance(arg0);
}
