if (global.monster[myself] == 1)
{
	if (global.mnfight == 1 && talked == 0)
	{
		scr_randomtarget();
		global.flag[51 + myself] = 4;
		global.targeted[mytarget] = 1;
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		if (turns == 0)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_17_0");
		if (turns == 1)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_18_0");
		if (turns == 2)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_19_0");
		if (turns >= 3)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_20_0");
		if (compliment_just == 1)
		{
			if (compliment == 1)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_26_0");
			if (compliment == 2)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_30_0");
			if (compliment == 3)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_34_0");
			compliment_just = 0;
		}
		scr_enemyblcon(x - 235, y - 65, 3);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		if (button1_p() && talktimer > 15)
			talktimer = talkmax;
		talktimer += 1;
		if (talktimer >= talkmax)
		{
			if (!instance_exists(obj_moveheart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
			with (obj_writer)
				instance_destroy();
			global.mnfight = 2;
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		if (attacks == 0)
		{
			bike = instance_create(x, y, obj_lancerbike);
			visible = 0;
			bike.racecon = 1;
			bike.target = mytarget;
			bike.damage = global.monsterat[myself] * 5;
			attacks = 1;
		}
		else
		{
			bike = instance_create(x, y, obj_lancerbike);
			visible = 0;
			bike.lcon = 1;
			bike.target = mytarget;
			bike.damage = global.monsterat[myself] * 5;
			attacks = 0;
		}
		turns += 1;
		global.turntimer = 999;
		attacked = 1;
		rr = floor(random(5));
		global.typer = 6;
		global.fc = 0;
		if (rr == 0)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_90_0");
		if (rr == 1)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_91_0");
		if (rr == 2)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_92_0");
		if (rr == 3)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_93_0");
		if (rr == 4)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_94_0");
		if (turns == 1)
		{
			global.typer = 47;
			global.fc = 1;
			global.fe = 2;
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_100_0");
		}
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_118_0");
		global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_119_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 1;
		if (global.automiss[myself] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_130_0");
			global.automiss[myself] = 1;
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_135_0");
		}
		scr_battletext_default();
	}
	if (acting == 3 && actcon == 0)
	{
		if (compliment >= 3)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_145_0");
		if (compliment == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_150_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_151_0");
			scr_mercyadd(myself, 20);
		}
		if (compliment == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_157_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_158_0");
			scr_mercyadd(myself, 20);
			global.monsterat[myself] += 1;
		}
		if (compliment == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_164_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_165_0");
			scr_mercyadd(myself, 20);
			global.monsterat[myself] -= 1;
		}
		compliment_just = 1;
		compliment += 1;
		scr_battletext_default();
		actcon = 1;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
}
if (con == 1)
{
	alarm[4] = 5;
	con = 2;
}
if (con == 3)
{
	global.typer = 50;
	global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_196_0");
	global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_197_0");
	global.msg[2] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_198_0");
	global.msg[3] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_199_0");
	global.msg[4] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_200_0");
	global.msg[5] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_201_0");
	global.msg[6] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_202_0");
	con = 4;
	scr_enemyblcon(x - 235, y - 65, 3);
}
if (con == 4 && !instance_exists(obj_writer))
{
	hspeed = 20;
	con = 5;
	alarm[4] = 15;
	with (obj_battlecontroller)
	{
		noreturn = 0;
		alarm[2] = 17;
	}
}
if (con == 6)
{
	global.monsterexp[myself] -= 0;
	global.monstergold[myself] += 10;
	if (global.plot < 22)
		global.plot = 22;
	scr_monsterdefeat();
	instance_destroy();
	con = 7;
}
