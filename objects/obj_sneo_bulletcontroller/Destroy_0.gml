if (hideshooty)
	sneo.partframe[1] = 0;
with (obj_spamton_neo_enemy)
{
	makeheartinit = 0;
	makeheartalt = 0;
	partmode = 1;
	heart_release_con = 0;
}
if (type == 0 && difficulty == 3)
{
	with (obj_spamton_neo_enemy)
		scr_move_to_rememberxy(4);
}
else
{
	sneo.x = sneo.xstart;
}
if (type == 8.5)
{
	if (krishp != global.hp[1] || sushp != global.hp[2] || ralhp != global.hp[3])
		obj_spamton_neo_enemy.nothitduringphonehands = 0;
}
if (mercyaccumulated > 0)
{
	with (obj_spamton_neo_enemy)
	{
		global.mercymod[myself] += obj_sneo_bulletcontroller.mercyaccumulated;
		if (global.mercymod[myself] < 0)
			global.mercymod[myself] = 0;
		if (global.mercymod[myself] >= 99)
			global.mercymod[myself] = 99;
	}
}
