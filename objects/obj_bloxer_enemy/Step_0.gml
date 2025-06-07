if (global.monster[myself] == 1)
{
	if (global.mnfight == 1 && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		rr = choose(0, 1, 2, 3);
		if (rr == 0)
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_11_0");
		if (rr == 1)
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_12_0");
		if (rr == 2)
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_13_0");
		if (rr == 3)
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_14_0");
		if (acting == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_18_0");
			if (part[2] == 3)
				global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_19_0");
			if (part[1] == 3)
				global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_20_0");
			if (part[1] == 2)
				global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_21_0");
			if (part[1] == 1)
				global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_22_0");
			if (global.mercymod[myself] >= 100)
				global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_24_0");
		}
		if (acting == 3)
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_29_0");
		scr_enemyblcon(x - 160, y, 3);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		rtimer = 0;
		scr_blconskip(15);
		if (global.mnfight == 2)
		{
			if (!instance_exists(obj_moveheart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			rr = choose(0, 1);
			biglegoqual = 1;
			if (scr_monsterpop() >= 2 && myself >= 1)
				biglegoqual = 0;
			if (rr == 0 && biglegoqual == 1)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 26;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				dc.grazepoints = 5;
				dc.timepoints = 2;
			}
			else
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 27;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				dc.grazepoints = 5;
			}
			turns += 1;
			global.turntimer = 170;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			if (rr == 0)
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_86_0");
			if (rr == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_87_0");
			if (rr == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_88_0");
			if (rr == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_89_0");
			if (rr == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_90_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_92_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_93_0");
		}
		else
		{
			global.turntimer = 120;
		}
	}
	if (global.mnfight == 2)
	{
		if (global.turntimer <= 1)
		{
			if (battlecancel == 1)
				global.mercymod[myself] = 999;
			if (battlecancel == 2)
			{
				with (obj_battlecontroller)
					noreturn = 1;
				con = 1;
				battlecancel = 3;
			}
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
		global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_127_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_135_0") + scr_get_input_name(6) + scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_135_1");
		global.mercymod[myself] = 0;
		scr_battletext_default();
		actcon = 10;
		swaptime = 1;
		floatsin = 0;
		swapx = 0;
		sinmomentum = 0;
		party[0] = 28;
		party[1] = 54;
		party[2] = 70;
		select[0] = -1;
		select[1] = -1;
		select[2] = -1;
		selecttotal = 0;
		movex[0] = 0;
		movex[1] = 0;
		movex[2] = 0;
		finishtimer = 0;
	}
	if (acting == 3 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_162_0");
		rr = choose(0, 1, 2);
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_165_0");
		if (rr == 1)
			global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_166_0");
		if (rr == 2)
			global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_167_0");
		global.msg[3] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_168_0");
		for (i = 0; i < 3; i += 1)
		{
			global.monstercomment[i] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_171_0");
			global.monsterstatus[i] = 1;
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
	if (actcon == 10 && swaptime == 0)
	{
		with (obj_writer)
			instance_destroy();
		if (global.mercymod[myself] >= 100)
		{
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_193_0");
			fixed = 1;
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_194_0");
		}
		scr_battletext_default();
		actcon = 1;
	}
}
if (global.myfight == 7)
	hspeed = 15;
