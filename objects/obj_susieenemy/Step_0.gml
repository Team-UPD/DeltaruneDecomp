if (global.monster[myself] == 1 && defeated == 0)
{
	global.flag[51 + myself] = 4;
	event_user(1);
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
			global.turntimer = 180;
			if (attacktype == 2)
			{
				dc = instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_dbulletcontroller);
				dc.type = 85;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				dc.timepoints = 3;
				dc.grazepoints = 5;
				if (sleeping == 1)
				{
					with (dc)
						instance_destroy();
				}
			}
			if (attacktype == 1)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 20;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				dc.timepoints = 3;
				dc.grazepoints = 3;
				if (sleeping == 1)
				{
					with (dc)
						instance_destroy();
				}
			}
			if (attacktype == 0 && sleeping == 0)
			{
				bike = instance_create(obj_lancerboss3.x, obj_lancerboss3.y, obj_lancerbike_neo);
				with (obj_lancerboss3)
					visible = 0;
				bike.target = mytarget;
				bike.damage = global.monsterat[myself] * 5;
				global.turntimer = 999;
			}
			attacktype += 1;
			if (attacktype >= 3)
				attacktype = 0;
			turns += 1;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_79_0");
			if (rr == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_80_0");
			if (rr == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_81_0");
			if (rr == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_82_0");
			if (rr == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_83_0");
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
if (con == 1)
{
	con = 2;
	alarm[4] = 10;
}
if (con == 3)
{
	global.typer = 50;
	global.mercymod[myself] = 999;
	global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_118_0");
	scr_enemyblcon(x - 160, y, 3);
	con = 4;
}
if (con == 4 && !instance_exists(obj_writer))
{
	hspeed = 15;
	con = 5;
	alarm[4] = 15;
	with (obj_battlecontroller)
		alarm[2] = 17;
}
if (con == 6)
{
	with (obj_battlecontroller)
		noreturn = 0;
	scr_monsterdefeat();
	instance_destroy();
	con = 7;
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		_armordf = global.itemdf[2][0] + global.itemdf[2][1] + global.itemdf[2][2];
		_armorat = global.itemat[2][0] + global.itemat[2][1] + global.itemat[2][2];
		totaldf = string(global.df[2] + _armordf);
		totalat = string(global.at[2] + _armorat);
		totalhp = string(global.maxhp[2]);
		global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_159_0"), totalat, totaldf, totalhp);
		if (_armordf > 0)
			global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_162_0"), totalat, totaldf, totalhp);
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_170_0");
		if (anythingcounter == 1)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_171_0");
		if (anythingcounter == 2)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_172_0");
		if (anythingcounter == 3)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_173_0");
		if (anythingcounter >= 4)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_174_0");
		global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_175_0");
		if (anythingcounter >= 1)
			global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_176_0");
		scr_battletext_default();
		anythingcounter += 1;
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		with (obj_monsterparent)
			susie_act = 3;
		snd_pause(global.batmusic[1]);
		if (lullabied == 0)
		{
			singy = snd_play(snd_ralseising1);
			with (object_index)
				lullabied = 1;
		}
		else
		{
			singy = snd_play(snd_ralseising2);
			with (object_index)
				lullabied = 0;
		}
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_197_0");
		with (obj_heroralsei)
			visible = 0;
		ralsing = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_sing);
		with (ralsing)
			image_speed = 0.2;
		lullatimer = 0;
		scr_battletext_default();
		actcon = 10;
	}
	if (actcon == 10)
	{
		lullatimer += 1;
		if (lullatimer >= 30)
			actcon = 11;
	}
	if (actcon == 11 && instance_exists(obj_writer) == false)
	{
		with (ralsing)
			instance_destroy();
		with (obj_heroralsei)
			visible = 1;
		snd_stop(singy);
		snd_resume(global.batmusic[1]);
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_223_0");
		if (sleeping == 1)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_224_0");
		idlesprite = spr_susie_enemy_defeat;
		sleepcounter = 0;
		sleeping = 1;
		global.monstercomment[myself] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_228_0");
		global.monsterstatus[myself] = 1;
		scr_battletext_default();
		actcon = 1;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
}
if (pacifycon > 0)
{
	global.spelldelay = 999;
	with (obj_spellphase)
	{
		if (spelltimer > 30)
			spelltimer = 30;
	}
}
if (pacifycon == 1)
{
	if (obj_spellphase.spelltimer >= 15)
	{
		pacifytimer = 0;
		pacifycon = 2;
		with (obj_lancerboss3)
			visible = 0;
		temp_l = scr_dark_marker(x - 40, y + sprite_height, spr_lancerbike);
		temp_l.depth = depth - 2;
	}
}
if (pacifycon == 2)
{
	snd_play(snd_lancerwhistle);
	with (temp_l)
	{
		o = scr_oflash();
		o.flashcolor = c_blue;
	}
	pacifycon = 3;
}
if (pacifycon == 3)
{
	pacifytimer += 1;
	if (pacifytimer >= 30 && !instance_exists(obj_writer))
	{
		with (temp_l)
			instance_destroy();
		with (obj_lancerboss3)
			visible = 1;
		pacifycon = 4;
		with (obj_monsterparent)
			susie_act = 9;
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_283_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_285_0");
		scr_noface(3);
		global.msg[4] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_287_0");
		if (tirespare == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_290_0");
			global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_291_0");
			global.msg[2] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_292_0");
			global.msg[3] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_293_0");
			global.msg[4] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_294_0");
		}
		if (tirespare >= 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_298_0");
			global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_299_0");
		}
		scr_battletext_default();
		pacifycon = 5;
		tirespare += 1;
	}
}
if (pacifycon == 5 && !instance_exists(obj_writer))
{
	global.spelldelay = 20;
	with (obj_spellphase)
		spelltimer = 18;
	pacifycon = 0;
}
