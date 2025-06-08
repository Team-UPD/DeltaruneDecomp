if (carhit == 0 && hitcheck == 1)
{
	with (obj_omawaroid_enemy)
		scr_mercyadd(myself, 100);
	with (obj_monsterparent)
	{
		if (global.mercymod[myself] < 100)
			scr_mercyadd(myself, 50);
	}
}
