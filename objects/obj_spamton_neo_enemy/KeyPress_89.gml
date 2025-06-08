if (scr_debug())
{
	global.monsterhp[myself] -= 100;
	scr_debug_print("Sneo health = " + string(global.monsterhp[myself]));
}
