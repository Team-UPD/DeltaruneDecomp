if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		rr = choose(0, 1, 2, 3);
		if (rr == 0)
			msgsetloc(0, "(You think you're&the big cheese?)", "obj_maus_enemy_slash_Step_0_gml_18_0");
		if (rr == 1)
			msgsetloc(0, "(Tired of being&pushed around.)", "obj_maus_enemy_slash_Step_0_gml_23_0");
		if (rr == 2)
			msgsetloc(0, "(Left, right,&right, left...)", "obj_maus_enemy_slash_Step_0_gml_27_0");
		if (rr == 3)
			msgsetloc(0, "(Catch me, catch me!)&(Hee hee hee...)", "obj_maus_enemy_slash_Step_0_gml_31_0");
		if (trapped)
		{
			var dialogue_rand = choose(0, 1);
			if (dialogue_rand == 0)
				msgsetloc(0, "(Are you going to&take me home?)", "obj_maus_enemy_slash_Step_0_gml_40_0");
			else
				msgsetloc(0, "(Just take good&care of me!)", "obj_maus_enemy_slash_Step_0_gml_43_0");
		}
		if (fearact)
		{
			msgsetloc(0, "(I can't help it^1,&I'm a scary guy.)", "obj_maus_enemy_slash_Step_0_gml_49_0");
			fearact = 0;
		}
		if (complimentact)
		{
			msgsetloc(0, "(I can't help it^1,&I'm a cutey guy.)", "obj_maus_enemy_slash_Step_0_gml_55_0");
			complimentact = 0;
		}
		if (tasque_joined)
		{
			tasque_joined = false;
			msgsetloc(0, "(I'll work with&who I have to.)", "obj_maus_enemy_slash_Step_0_gml_51_0");
		}
		scr_enemyblcon(x - 40, global.monstery[myself], 10);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		scr_blconskip(15);
		if (scr_isphase("bullets"))
		{
			if (!instance_exists(obj_moveheart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (scr_isphase("bullets") && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 16)
		{
			if (scr_monsterpop() == 1)
			{
				rr = 0;
			}
			else if (scr_monsterpop() == instance_number(object_index))
			{
				if (myself == (scr_monsterpop() - 1) && !scr_attackprepcheck(myself, "MausTrail"))
					rr = 1;
				else if (myself == 0 || !scr_attackprepcheck(myself, "MausTrail"))
					rr = choose(0, 1);
				else
					rr = 0;
			}
			else
			{
				rr = 1;
			}
			if (rr == 0)
			{
				global.monsterattackname[myself] = "MausHoles";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 17;
			}
			else
			{
				global.monsterattackname[myself] = "MausTrail";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 19;
			}
			scr_turntimer(140);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			if (global.monsterstatus[myself] == 1)
			{
				global.battlemsg[0] = stringsetloc("* Maus's clicking sounds more like splat noises.", "obj_maus_enemy_slash_Step_0_gml_114_0");
			}
			else if (global.mercymod[myself] >= global.mercymax[myself])
			{
				global.battlemsg[0] = stringsetloc("* Maus is squeaking cheerfully.", "obj_maus_enemy_slash_Step_0_gml_117_0");
			}
			else if (random(100) >= 98)
			{
				if (choose(0, 1) == 0)
					global.battlemsg[0] = stringsetloc("* Maus would like to go to its favorite bistro in this marvelous city.", "obj_maus_enemy_slash_Step_0_gml_124_0");
				else
					global.battlemsg[0] = stringsetloc("* Smells like wood shavings.", "obj_maus_enemy_slash_Step_0_gml_127_0");
			}
			else
			{
				rr = choose(0, 1, 2, 3);
				if (rr == 0)
					global.battlemsg[0] = stringsetloc("* Maus is thinking about overly elaborate machines.", "obj_maus_enemy_slash_Step_0_gml_132_0");
				if (rr == 1)
					global.battlemsg[0] = stringsetloc("* Maus is clicking and squeaking.", "obj_maus_enemy_slash_Step_0_gml_133_0");
				if (rr == 2)
					global.battlemsg[0] = stringsetloc("* Maus keeps running between your feet.", "obj_maus_enemy_slash_Step_0_gml_134_0");
				if (rr == 3)
					global.battlemsg[0] = stringsetloc("* Maus is keenly aware of the fear it invokes.", "obj_maus_enemy_slash_Step_0_gml_135_0");
			}
			attacked = 1;
		}
		else
		{
			scr_turntimer(120);
		}
	}
}
if (global.myfight == 3)
{
	xx = camerax();
	yy = cameray();
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		msgsetloc(0, "* MAUS - It's just a little mouse living in a little house./%", "obj_maus_enemy_slash_Step_0_gml_159_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		trappingX = 0;
		msgsetsubloc(0, "* Press ~1 To Trap!!!", scr_get_input_name(6), "obj_maus_enemy_slash_Step_0_gml_166_0");
		scr_battletext_default();
		actcon = 9;
		alarm[4] = 10;
	}
	if (acting == 3 && actcon == 0)
	{
		if (!scr_havechar(4))
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E5* There's only one solution for a mouse!!/", "obj_maus_enemy_slash_Step_0_gml_177_0");
			msgnextloc("\\EH* Here^1, kitty kitty!!/%", "obj_maus_enemy_slash_Step_0_gml_178_0");
			scr_battletext();
			actcon = 30;
		}
		else
		{
			nact_count++;
			if (global.flag[379] == 1)
			{
				with (object_index)
					complimentact = 1;
				scr_speaker("no_name");
				msgsetloc(0, "* Noelle complimented the enemies!/", "obj_maus_enemy_slash_Step_0_gml_188_0_b");
				scr_anyface_next("noelle", 3);
				msgnextloc("\\E3* They're..^1. kind of cute^1, right...?/%", "obj_maus_enemy_slash_Step_0_gml_190_0");
				scr_battletext();
				with (obj_monsterparent)
					scr_mercyadd(myself, 100);
			}
			else
			{
				with (object_index)
					fearact = 1;
				if (nact_count == 1)
				{
					scr_speaker("noelle");
					msgsetloc(0, "\\EE* Th-the way it moves is just so..^1. so scary!/", "obj_maus_enemy_slash_Step_0_gml_188_0");
					msgnextloc("\\EE* It's disgusting!/", "obj_maus_enemy_slash_Step_0_gml_189_0");
					scr_anyface_next("no_name", 0);
					msgnextloc("* Maus was rejected..^1. everyone felt TIRED./%", "obj_maus_enemy_slash_Step_0_gml_191_0");
					scr_battletext();
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Noelle reacted in fear!/", "obj_maus_enemy_slash_Step_0_gml_196_0");
					msgnextloc("* The enemies felt dejected and TIRED.../%", "obj_maus_enemy_slash_Step_0_gml_197_0");
					scr_battletext_default();
				}
				with (obj_monsterparent)
					scr_monster_make_tired(myself);
			}
			actcon = 1;
		}
	}
	if (actcon == 30)
	{
		if (!i_ex(battlewriter))
		{
			tasquemarker = scr_dark_marker(camerax() + 800, y, spr_tasque_idle);
			tasquemarker.image_speed = 0.16666666666666666;
			tasquemarker.depth = depth;
			var currentX = x - 80;
			var currentY = y - 15;
			image_xscale = -2;
			scr_move_to_point_over_time(camerax() + 800, global.monstermakey[myself], 30);
			with (tasquemarker)
				scr_move_to_point_over_time(currentX, currentY, 30);
			actcon = 31;
			alarm[4] = 30;
		}
	}
	if (actcon == 32)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\EK* ...don't we just have to fight the cat now?/", "obj_maus_enemy_slash_Step_0_gml_251_0");
		scr_anyface_next("susie", "K");
		msgnextloc("\\EK* Huh?/%", "obj_maus_enemy_slash_Step_0_gml_253_0");
		scr_battletext();
		remove = true;
		actcon = 33;
		alarm[4] = 30;
	}
	if (actcon == 34 && !instance_exists(obj_writer))
		actcon = 1;
	if (acting == 4 && actcon == 0)
	{
		trappingX = true;
		msgsetsubloc(0, "* Press ~1 to trap all the enemies!", scr_get_input_name(6), "obj_maus_enemy_slash_Step_0_gml_269_0");
		scr_battletext_default();
		actcon = 9;
		alarm[4] = 10;
	}
	if (actcon == 10)
	{
		basket = instance_create(x, y, obj_maus_basket);
		basket.maker = id;
		if (trappingX == 1)
		{
			basket.cancatch[0] = 1;
			basket.cancatch[1] = 1;
			basket.cancatch[2] = 1;
		}
		else
		{
			basket.cancatch[myself] = 1;
		}
		basket.trappingX = trappingX;
		actcon = 11;
		caught[0] = 0;
		caught[1] = 0;
		caught[2] = 0;
	}
	if (actcon == 12)
	{
		trappingX = false;
		with (obj_writer)
			instance_destroy();
		caughtamount = 0;
		caughtamount = caught[0] + caught[1] + caught[2];
		msgsetloc(0, "* Didn't catch anything.../%", "obj_maus_enemy_slash_Step_0_gml_304_0");
		if (caughtamount == 1)
			msgsetloc(0, "* Caught the enemy!/%", "obj_maus_enemy_slash_Step_0_gml_305_0");
		if (caughtamount >= 2)
			msgsetsubloc(0, "* Caught ~1 enemies!/%", string(caughtamount), "obj_maus_enemy_slash_Step_0_gml_306_0");
		scr_battletext_default();
		actcon = 13;
		alarm[4] = 20;
	}
	if (actcon == 14 && !instance_exists(obj_writer))
		actcon = 1;
	if (actingsus == 1 && actconsus == 1)
	{
		var simultext = (simultotal == 1) ? stringsetloc("* Susie got on all fours and chased the mouse around the room like an animal!!/%", "obj_maus_enemy_slash_Step_0_gml_322_0") : stringsetloc("* Susie chased on all fours!!/%", "obj_maus_enemy_slash_Step_0_gml_322_1");
		msgset(0, simultext);
		scr_mercyadd(myself, 50);
		scr_simultext("susie");
		actconsus = (simulordersus == 0) ? 20 : 0;
	}
	if (actingral == 1 && actconral == 1)
	{
		if (!trappedText)
		{
			with (obj_maus_enemy)
			{
				trappedText = true;
				global.actsimulral[myself][0] = 1;
			}
			msgsetloc(0, "* Ralsei started putting peanut butter on a spoon and put it in a trap!!/%", "obj_maus_enemy_slash_Step_0_gml_343_0");
			scr_mercyadd(myself, 50);
			actconral = 2;
			scr_battletext_default();
		}
		else
		{
			var simultext = (simultotal == 1) ? stringsetloc("* Ralsei sang a song about mice!!/%", "obj_maus_enemy_slash_Step_0_gml_352_0") : stringsetloc("* Ralsei sang a mouse song!/%", "obj_maus_enemy_slash_Step_0_gml_352_1");
			msgset(0, simultext);
			scr_mercyadd(myself, 50);
			scr_simultext("ralsei");
			actconral = (simulorderral == 0) ? 20 : 0;
		}
	}
	if (actconral == 2 && !instance_exists(obj_writer))
	{
		actconral = 2.5;
		basket = instance_create(obj_herosusie.x - 5, cameray() - 100, obj_maus_basket_susie);
		with (obj_herosusie)
			visible = 0;
		nise_susie = scr_dark_marker(obj_herosusie.x + 16, obj_herosusie.y - 1, spr_susie_shock_r);
		nise_susie.depth = obj_herosusie.depth;
		scr_speaker("no_name");
		msgsetloc(0, "* Susie was captured!!/%", "obj_maus_enemy_slash_Step_0_gml_422_0");
		scr_battletext_default();
	}
	if (actconral == 2.5 && basket.gravity == 0)
	{
		actconral = 3;
		with (nise_susie)
			scr_shakeobj();
		with (basket)
			scr_shakeobj();
		snd_play(snd_impact);
	}
	if (actconral == 3 && !instance_exists(obj_writer))
	{
		actcon = 1;
		actconral = 0;
		scr_speaker("ralsei");
		msgsetloc(0, "\\EN* Susie!!!/", "obj_maus_enemy_slash_Step_0_gml_444_0");
		scr_anyface_next("susie", "5");
		msgnextloc("\\E5* The hell you blaming ME for!^1! YOU made the trap!!/%", "obj_maus_enemy_slash_Step_0_gml_383_0");
		scr_battletext();
	}
	if (actingnoe == 1 && actconnoe == 1)
	{
		if (global.flag[379] == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Noelle screamed quietly!/%", "obj_maus_enemy_slash_Step_0_gml_391_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Noelle cheered brightly!/%", "obj_maus_enemy_slash_Step_0_gml_408_0");
		}
		scr_mercyadd(myself, 50);
		scr_simultext("noelle");
		actconnoe = (simulordernoe == 0) ? 20 : 0;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		scr_act_charsprite_end();
		scr_nextact();
		if (remove)
		{
			if (i_ex(obj_maus_enemy))
			{
				with (obj_maus_enemy)
					tasque_joined = true;
			}
			global.monstermakey[myself] = y - 15;
			global.monstermakex[myself] = tasquemarker.x;
			newtasque = scr_monster_change(myself, 32, 452);
			with (tasquemarker)
				instance_destroy();
			var acttriggered = 0;
			for (var __i = 1; __i < 3; __i++)
			{
				if ((global.actingtarget[__i] == myself && global.char[__i] > 0 && global.charspecial[__i] == 0) || (global.chartarget[__i] == myself && (global.charspecial[__i] == 100 || global.charspecial[__i] == 3)))
				{
					if (global.char[__i] == 3)
						acttriggered = 1;
					global.acting[__i] = 0;
					global.actingsimul[__i] = 0;
					global.actingsingle[__i] = 0;
					global.faceaction[__i] = 0;
					if (global.charspecial[__i] == 100 || global.charspecial[__i] == 3)
					{
						global.charspecial[__i] = 0;
						global.charaction[__i] = 0;
						with (obj_spellphase)
							instance_destroy();
					}
				}
			}
			if (acttriggered)
				scr_nextact();
			instance_destroy();
		}
		if (basket != -4)
		{
			with (nise_susie)
				instance_destroy();
			with (basket)
				instance_destroy();
			with (obj_herosusie)
				visible = 1;
		}
	}
	if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
	{
		if (scr_terminate_writer())
		{
			actconsus = -1;
			actconral = -1;
			actconnoe = -1;
			actcon = 1;
		}
	}
}
