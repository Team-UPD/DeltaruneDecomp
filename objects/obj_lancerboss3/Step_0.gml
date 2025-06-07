if (defeated == 1 && global.mnfight == 1)
{
	global.mnfight = 99;
	con = 1;
}
if (global.monster[myself] == 1 && defeated == 0)
{
	global.flag[51 + myself] = 4;
	if (global.mnfight == 1 && talked == 0)
	{
		if (scr_monsterpop() == 1)
		{
			susie_revive_count += 1;
			if (susie_revive_count >= 3)
			{
				with (obj_susieandlancer_event)
					s.visible = 0;
				global.monster[0] = 1;
				global.monsterinstance[0] = instance_create(global.monstermakex[0], global.monstermakey[0], global.monsterinstancetype[0]);
				global.monsterinstance[0].myself = 0;
				with (global.monsterinstance[0])
				{
					event_user(12);
					event_user(1);
					if (global.turntimer < 150)
						global.turntimer = 150;
				}
				global.monsterhp[0] = 40;
				snd_play(snd_power);
				susie_revive_count = 0;
			}
		}
		attack_qual = 1;
		with (obj_susieenemy)
		{
			if (sleeping == 0 && global.monster[myself] == 1)
				obj_lancerboss3.attack_qual = 0;
		}
		if (attack_qual == 1)
		{
			scr_randomtarget();
			global.targeted[mytarget] = 1;
		}
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		rrrr = choose(0, 1, 2, 3);
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_56_0");
		if (rrrr == 1)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_57_0");
		if (rrrr == 2)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_58_0");
		if (rrrr == 3)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_59_0");
		if (lancer_hurt == 0 && global.monsterhp[myself] <= (global.monstermaxhp[myself] * 0.5))
		{
			lancer_hurt = 1;
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_64_0");
		}
		if (susie_act == 3)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_66_0");
		if (susie_act == 9)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_67_0");
		if (acting == 2)
		{
			if (anythingcounter == 1)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_70_0");
			if (anythingcounter == 2)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_71_0");
			if (anythingcounter == 3)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_72_0");
			if (anythingcounter >= 4)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_73_0");
		}
		if (acting == 3)
		{
			if (anythingcounter == 1)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_77_0");
			if (anythingcounter == 2)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_78_0");
			if (anythingcounter == 3)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_79_0");
			if (anythingcounter >= 4)
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_80_0");
		}
		susie_act = 0;
		lancer_act = 0;
		scr_enemyblcon(x - 235, y - 65, 3);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		if (button1_p() && talktimer > 17)
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
		attack_qual = 0;
		if (scr_monsterpop() == 1)
			attack_qual = 1;
		with (obj_susieenemy)
		{
			if (sleeping == 1)
				obj_lancerboss3.attack_qual = 1;
		}
		if (attack_qual == 1)
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
			global.turntimer = 999;
		}
		turns += 1;
		attacked = 1;
		rr = floor(random(5));
		global.typer = 6;
		global.fc = 0;
		if (rr == 0)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_145_0");
		if (rr == 1)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_146_0");
		if (rr == 2)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_147_0");
		if (rr == 3)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_148_0");
		if (rr == 4)
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_149_0");
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_167_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_176_0");
		global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_177_0");
		if (anythingcounter == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_181_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_182_0");
		}
		if (anythingcounter == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_187_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_188_0");
		}
		if (anythingcounter >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_193_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_194_0");
			if (ears_blocked >= 2)
			{
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_197_0");
				global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_198_0");
			}
			attack_qual = 0;
			if (scr_monsterpop() == 1)
				attack_qual = 1;
			with (obj_susieenemy)
			{
				if (sleeping == 1)
					obj_lancerboss3.attack_qual = 1;
			}
			if (attack_qual == 0)
			{
				actcon = 20;
				with (obj_monsterparent)
					ears_blocked += 1;
			}
			else
			{
				anythingcounter = 10;
			}
			if (ears_blocked >= 3)
			{
				anythingcounter = 10;
				actcon = 1;
				attack_qual = 1;
			}
		}
		if (anythingcounter < 4)
			anythingcounter += 1;
		scr_battletext_default();
	}
	if (acting == 3 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_222_0");
		scr_ralface(1, 8);
		global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_224_0");
		scr_noface(3);
		global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_226_0");
		if (anythingcounter == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_230_0");
			scr_ralface(1, 1);
			global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_232_0");
			global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_233_0");
			scr_noface(4);
			global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_235_0");
		}
		if (anythingcounter == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_240_0");
			scr_ralface(1, 1);
			global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_242_0");
			global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_243_0");
			scr_noface(4);
			global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_245_0");
		}
		if (anythingcounter >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_250_0");
			scr_ralface(1, 6);
			global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_252_0");
			global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_253_0");
			if (ears_blocked >= 2)
			{
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_256_0");
				scr_ralface(1, 0);
				global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_258_0");
				scr_noface(3);
				global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_260_0");
			}
			attack_qual = 0;
			if (scr_monsterpop() == 1)
				attack_qual = 1;
			with (obj_susieenemy)
			{
				if (sleeping == 1)
					obj_lancerboss3.attack_qual = 1;
			}
			if (attack_qual == 0)
			{
				actcon = 20;
				with (obj_monsterparent)
					ears_blocked += 1;
			}
			else
			{
				anythingcounter = 10;
			}
			if (ears_blocked >= 3)
			{
				anythingcounter = 10;
				actcon = 1;
				attack_qual = 1;
			}
		}
		if (anythingcounter < 4)
			anythingcounter += 1;
		if (instance_exists(obj_susieenemy))
		{
			obj_susieenemy.anythingxcounter = anythingcounter;
			obj_susieenemy.lancer_act = 3;
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		if (anythingcounter < 10)
		{
			scr_attackphase();
		}
		else
		{
			defeated = 1;
			global.mnfight = 99;
			global.myfight = 99;
			con = 1;
			global.flag[249] = 1;
		}
	}
	if (actcon == 20 && !instance_exists(obj_writer))
	{
		visible = 0;
		with (obj_susieenemy)
			visible = 0;
		if (scr_monsterpop() == 1)
		{
			with (obj_susieandlancer_event)
				s.visible = 0;
		}
		blocklan = scr_dark_marker(x, y, spr_lancerbike_earcover);
		blocklan.depth = depth;
		snd_play(snd_bell);
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_314_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_316_0");
		scr_battletext_default();
		actcon = 21;
	}
	if (actcon == 21 && !instance_exists(obj_writer))
	{
		with (blocklan)
			instance_destroy();
		visible = 1;
		with (obj_susieenemy)
			visible = 1;
		if (scr_monsterpop() == 1)
		{
			with (obj_susieandlancer_event)
				s.visible = 1;
		}
		actcon = 1;
	}
}
if (con == 1)
{
	alarm[4] = 5;
	con = 2;
}
if (con == 3)
{
	with (obj_susieenemy)
		idlesprite = spr_susie_enemy;
	global.typer = 46;
	global.fe = 4;
	global.fc = 5;
	global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_348_0");
	scr_susface(1, 9);
	global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_350_0");
	global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_351_0");
	global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_352_0");
	scr_lanface(5, 2);
	global.msg[6] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_354_0");
	global.msg[7] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_355_0");
	scr_susface(8, 0);
	global.msg[9] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_357_0");
	scr_ralface(10, 6);
	global.msg[11] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_359_0");
	if (global.flag[249] == 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_363_0");
		scr_susface(1, 0);
		global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_365_0");
		scr_lanface(3, 4);
		global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_367_0");
		global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_368_0");
		global.msg[6] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_369_0");
		scr_susface(7, 0);
		global.msg[8] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_371_0");
		global.msg[9] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_372_0");
		global.msg[10] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_373_0");
		global.msg[11] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_374_0");
	}
	con = 4;
	scr_battletext();
}
if (con == 4 && !instance_exists(obj_writer))
{
	con = 5;
	alarm[4] = 2;
	with (obj_battlecontroller)
	{
		noreturn = 0;
		alarm[2] = 4;
	}
}
if (con == 6)
{
	with (obj_susieandlancer_event)
		l.visible = 1;
	with (obj_monsterparent)
		scr_monsterdefeat();
	instance_destroy();
	con = 7;
}
