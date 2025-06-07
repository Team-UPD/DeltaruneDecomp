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
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_11_0");
		if (rr == 1)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_12_0");
		if (rr == 2)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_13_0");
		if (rr == 3)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_14_0");
		if (global.mercymod[myself] >= 100)
		{
			if (rr == 0 || rr == 1)
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_18_0");
			if (rr == 2 || rr == 3)
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_19_0");
		}
		if (traitorp == 1)
		{
			if (rr == 0 || rr == 1)
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_24_0");
			if (rr == 2 || rr == 3)
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_25_0");
		}
		if (traitorp == 2)
		{
			if (rr == 0 || rr == 1)
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_29_0");
			if (rr == 2 || rr == 3)
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_30_0");
		}
		traitorp = 0;
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
			global.flag[20] = 0;
			rr = choose(0);
			if (rr == 0)
			{
				tellme = 0;
				with (obj_dbulletcontroller)
				{
					if (type >= 80 && type <= 84)
						obj_jigsawryenemy.tellme = 1;
				}
				if (tellme == 0)
				{
					dc = instance_create(x, y, obj_dbulletcontroller);
					dc.grazepoints = 4;
					dc.timepoints = 2;
					metotal = 0;
					for (i = 0; i < 3; i += 1)
					{
						if (global.monstertype[i] == 15 && global.monster[i] == 1)
							metotal += 1;
					}
					dc.type = 80 + metotal;
					dc.target = mytarget;
					dc.damage = global.monsterat[myself] * 5;
				}
			}
			turns += 1;
			global.turntimer = 140;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			if (rr == 0)
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_89_0");
			if (rr == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_90_0");
			if (rr == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_91_0");
			if (rr == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_92_0");
			if (rr == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_93_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_94_0");
			if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_95_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_96_0");
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
		global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_129_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_136_0");
		scr_battletext_default();
		actcon = 3;
	}
	if (actcon == 3 && !instance_exists(obj_writer))
	{
		with (obj_jigsawryenemy)
			scr_mercyadd(myself, 100);
		rr = choose(0, 1, 2, 3);
		global.typer = 50;
		if (rr == 0)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_152_0");
		if (rr == 1)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_153_0");
		if (rr == 2)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_154_0");
		if (rr == 3)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_155_0");
		scr_enemyblcon(x - 160, y, 3);
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_164_0");
		if (scr_monsterpop() > 1)
			global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_166_0");
		for (i = 0; i < 3; i += 1)
		{
			global.monstercomment[i] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_169_0");
			global.automiss[i] = 1;
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
}
