with (obj_writer)
	instance_destroy();
global.typer = 50;
if (obj_sweet_enemy.hurtstate2 == 1)
{
	with (obj_sweet_enemy)
	{
		hurtstate2 = 0;
		msgsetloc(0, "W-wait, I can't dance&with bad guys!!", "obj_musical_controller_slash_Alarm_1_gml_12_0");
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
	}
}
if (obj_kk_enemy.hurtstate2 == 1)
{
	with (obj_kk_enemy)
	{
		hurtstate2 = 0;
		msgsetloc(0, "I forgot my next&dance move!", "obj_musical_controller_slash_Alarm_1_gml_21_0");
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
	}
}
if (obj_hatguy_enemy.hurtstate2 == 1)
{
	with (obj_hatguy_enemy)
	{
		hurtstate2 = 0;
		msgsetloc(0, "H-hey, I'm not gonna&dance with you!", "obj_musical_controller_slash_Alarm_1_gml_30_0");
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
	}
}
