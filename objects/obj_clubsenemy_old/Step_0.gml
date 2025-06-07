if (global.monster[myself] == 1)
{
	if (global.mnfight == 1 && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		rr = choose(0, 1, 2, 3);
		text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_11_0");
		text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_12_0");
		text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_13_0");
		if (rr == 0)
		{
			text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_17_0");
			text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_18_0");
			text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_19_0");
		}
		if (rr == 1)
		{
			if (scr_havechar(3))
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_26_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_27_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_28_0");
			}
			else
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_32_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_33_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_34_0");
			}
		}
		if (rr == 2)
		{
			text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_40_0");
			text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_41_0");
			text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_42_0");
		}
		if (rr == 3)
		{
			text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_47_0");
			text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_48_0");
			text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_49_0");
		}
		if (myact == 0)
		{
			if (acting == 2)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_61_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_62_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_63_0");
			}
			if (acting == 3)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_67_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_68_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_69_0");
			}
			if (acting == 4)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_73_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_74_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_75_0");
			}
		}
		if (myact == 1)
		{
			if (acting == 2)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_86_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_87_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_88_0");
			}
			if (acting == 3)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_92_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_93_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_94_0");
				if (scr_havechar(2))
					text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_95_0");
				if (!scr_havechar(3))
				{
					text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_98_0");
					text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_99_0");
					text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_100_0");
				}
			}
			if (acting == 4)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_105_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_106_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_107_0");
			}
		}
		if (myact == 2)
		{
			if (acting == 2)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_117_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_118_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_119_0");
			}
			if (acting == 3)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_123_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_124_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_125_0");
			}
			if (acting == 4)
			{
				text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_130_0");
				text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_131_0");
				text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_132_0");
			}
		}
		if (manual == 1)
		{
			text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_139_0");
			text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_140_0");
			text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_141_0");
		}
		if (betray == 1)
		{
			text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_146_0");
			text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_147_0");
			text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_148_0");
		}
		global.msg[0] = text1;
		scr_enemyblcon(x - 110, y - 10, 4);
		global.msg[0] = text2;
		scr_enemyblcon(x - 125, y + 70, 5);
		global.msg[0] = text3;
		scr_enemyblcon(x + 125, y - 10, 6);
		with (obj_monsterparent)
			talkmax = 150;
		talked = 1;
		talktimer = 0;
		manual = 0;
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
			if (rr == 0)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 2;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
			}
			else
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 4;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
			}
			turns += 1;
			global.turntimer = 140;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4, 5);
			if (rr == 0)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_204_0");
			if (rr == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_205_0");
			if (rr == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_206_0");
			if (rr == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_207_0");
			if (rr == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_208_0");
			if (rr == 5)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_209_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_210_0");
			if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_211_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_212_0");
			if (betray == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_213_0");
			betray = 0;
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
				scr_mercyadd(myself, 100);
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
		global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_247_0");
		scr_battletext_default();
	}
	if (myact == 0)
	{
		if (acting == 2 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_261_0");
			argue += 1;
			scr_battletext_default();
			actcon = 1;
		}
		if (acting == 3 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_269_0");
			argue += 1;
			scr_battletext_default();
			actcon = 1;
		}
		if (acting == 4 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_277_0");
			battlecancel = 1;
			scr_battletext_default();
			actcon = 1;
		}
	}
	if (myact == 1)
	{
		if (acting == 2 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_293_0");
			argue += 1;
			scr_battletext_default();
			actcon = 1;
		}
		if (acting == 3 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_301_0");
			battlecancel = 1;
			scr_battletext_default();
			actcon = 1;
		}
		if (acting == 4 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_309_0");
			argue += 1;
			scr_battletext_default();
			actcon = 1;
		}
	}
	if (myact == 2)
	{
		if (acting == 2 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_324_0");
			battlecancel = 1;
			scr_battletext_default();
			actcon = 1;
		}
		if (acting == 3 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_332_0");
			argue += 1;
			scr_battletext_default();
			actcon = 1;
		}
		if (acting == 4 && actcon == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_340_0");
			argue += 1;
			scr_battletext_default();
			actcon = 1;
		}
	}
	if (acting == 5 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_354_0");
		if (scr_monsterpop() > 1)
			global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_356_0");
		for (i = 0; i < 3; i += 1)
		{
			global.monstercomment[i] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_359_0");
			global.automiss[i] = 1;
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		if (argue >= 2)
		{
			global.monstercomment[myself] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_377_0");
			global.monsterstatus[myself] = 1;
		}
		actcon = 0;
		scr_attackphase();
	}
}
if (global.myfight == 7)
	hspeed = 15;
