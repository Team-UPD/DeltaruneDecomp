function scr_enemyhurt_tired_after_damage(arg0)
{
	if (global.monsterhp[myself] <= (global.monstermaxhp[myself] * arg0))
		scr_monster_make_tired(myself);
}
