function scr_monster_statreset(arg0)
{
	global.monster[arg0] = 0;
	global.monsterx[arg0] = 0;
	global.monstery[arg0] = 0;
	global.monstername[arg0] = stringsetloc(" ", "scr_monster_statreset_slash_scr_monster_statreset_gml_5_0");
	global.monsterat[arg0] = 0;
	global.monsterdf[arg0] = 0;
	global.monsterhp[arg0] = 0;
	global.monstermaxhp[arg0] = 0;
	global.monsterinstance[arg0] = 12913921839;
	global.monstergold[arg0] = 0;
	global.monsterexp[arg0] = 0;
	global.sparepoint[arg0] = 0;
	global.hittarget[arg0] = 0;
	global.mercymod[arg0] = 0;
	global.mercymax[arg0] = 0;
	global.monstercomment[arg0] = " ";
	global.monsterattackname[arg0] = " ";
	global.monsterstatus[arg0] = 0;
	scr_monster_actreset(arg0);
}
