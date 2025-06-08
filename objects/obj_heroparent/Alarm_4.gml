if (spellframes > 0)
	global.faceaction[myself] = 0;
if (scr_monsterpop() > 0)
	scr_spell(global.charspecial[myself], myself);
state = 0;
attacktimer = 0;
