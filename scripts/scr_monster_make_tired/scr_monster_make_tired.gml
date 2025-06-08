function scr_monster_make_tired(arg0)
{
	global.monstercomment[arg0] = stringsetloc("(Tired)", "scr_monster_make_tired_slash_scr_monster_make_tired_gml_1_0");
	global.monsterstatus[arg0] = 1;
}
