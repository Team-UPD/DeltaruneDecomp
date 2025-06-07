if (global.monster[myself] == 1)
{
	if (global.mnfight == 1 && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		hb = instance_create(x - 100, y, obj_heartblcon);
		hb.sprite_index = choose(spr_heartblcon_0, spr_heartblcon_1);
		if (acting == 2)
			hb.sprite_index = spr_heartblcon_2;
		if (acting == 3)
			hb.sprite_index = spr_heartblcon_3;
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		rtimer = 0;
		if (button1_p() && talktimer > 15)
			talktimer = talkmax;
		talktimer += 1;
		if (talktimer >= talkmax)
		{
			with (obj_heartblcon)
				instance_destroy();
			global.mnfight = 2;
		}
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
		with (obj_heartblcon)
			instance_destroy();
		rtimer += 1;
		if (rtimer == 12)
		{
			rr = scr_monsterpop();
			global.turntimer = 140;
			if (rr == 1)
			{
				dc = instance_create(x, y, obj_spinheart);
				dc.type = 0;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
			}
			else
			{
				dc = instance_create(x, y, obj_heartshaper);
				dc.type = 0;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				if (global.encounterno == 9)
					global.turntimer = 100;
			}
			turns += 1;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			if (rr == 0)
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_79_0");
			if (rr == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_80_0");
			if (rr == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_81_0");
			if (rr == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_82_0");
			if (rr == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_83_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_84_0");
			if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_85_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_86_0");
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
			if (instance_exists(obj_hathyfightevent) && firstturn == 0)
			{
				if (checkhp1 <= global.hp[1])
				{
					if (checkhp2 <= global.hp[2])
					{
						with (obj_battlecontroller)
							noreturn = 1;
						with (obj_hathyfightevent)
							con = 15;
					}
				}
			}
			firstturn = 1;
			if (battlecancel == 1)
				global.mercymod[myself] = 999;
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
		global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_127_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		rr = choose(0, 1, 2);
		global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_136_0");
		if (rr == 1)
			global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_137_0");
		if (rr == 2)
			global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_138_0");
		scr_mercyadd(myself, 100);
		scr_battletext_default();
		battlecancel = 1;
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_147_0");
		scr_ralface(1, 0);
		rr = choose(0, 1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_150_0");
		if (rr == 1)
			global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_151_0");
		if (rr == 2)
			global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_152_0");
		scr_mercyadd(0, 100);
		scr_mercyadd(1, 100);
		scr_mercyadd(2, 100);
		actcon = 1;
		scr_battletext_default();
	}
	if (acting == 4 && actcon == 0)
	{
		actcon = 1;
		if (global.plot < 150)
		{
			global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_168_0");
			if (scr_monsterpop() > 1)
				global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_170_0");
			for (i = 0; i < 3; i += 1)
			{
				global.monstercomment[i] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_173_0");
				global.automiss[i] = 1;
			}
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_179_0");
			scr_susface(1, 2);
			rr = choose(0, 1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_182_0");
			global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_183_0");
			if (rr == 1)
				global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_184_0");
			if (rr == 2)
				global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_185_0");
			scr_mercyadd(0, 100);
			scr_mercyadd(1, 100);
			scr_mercyadd(2, 100);
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
	if (actcon == 5 && instance_exists(obj_writer) == false)
	{
		global.battleat[1] = 90;
		global.battleat[2] = 90;
		actcon = 6;
		with (obj_herosusie)
		{
			attacktimer = 0;
			state = 1;
			points = 100 + round(random(40));
			global.faceaction[myself] = 0;
			if (global.automiss[0] == 1)
				points = 0;
			if (global.automiss[0] == 0)
			{
				with (obj_event_manager)
					trigger_event((0 << 0), (22 << 0));
			}
		}
		alarm[4] = 50;
	}
	if (actcon == 7)
	{
		global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_223_0");
		scr_ralface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_225_0");
		if (global.automiss[0] == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_228_0");
			scr_ralface(1, 3);
			global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_230_0");
			global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_231_0");
		}
		scr_battletext();
		actcon = 1;
	}
}
if (global.myfight == 7)
	hspeed = 15;
