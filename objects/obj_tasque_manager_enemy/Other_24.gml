if (init == 0)
{
	if (global.flag[419] == 1)
		global.mercymod[myself] = 100;
	if (global.flag[419] == 2)
		global.mercymod[myself] = 50;
	init = 1;
}
if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		var dialogText = stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_15_0");
		rr = (scr_monsterpop() > 1) ? choose(0, 1, 2, 3) : choose(0, 1, 2);
		if (rr == 0)
			dialogText = stringsetloc("Processes! Services!&Performance! Details!", "obj_tasque_manager_enemy_slash_Step_0_gml_19_0");
		if (rr == 1)
		{
			var randomText = stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_23_0");
			var randomChoice = choose(0, 1, 2, 3);
			if (randomChoice == 0)
				randomText = stringsetloc("Wrinkly clothing?", "obj_tasque_manager_enemy_slash_Step_0_gml_27_0");
			else if (randomChoice == 1)
				randomText = stringsetloc("Slouched back?", "obj_tasque_manager_enemy_slash_Step_0_gml_30_0");
			else if (randomChoice == 2)
				randomText = stringsetloc("Delinquent tendencies?", "obj_tasque_manager_enemy_slash_Step_0_gml_33_0");
			else if (randomChoice == 3)
				randomText = stringsetloc("Untied shoelaces?", "obj_tasque_manager_enemy_slash_Step_0_gml_36_0");
			dialogText = stringsetsubloc("~1&Let me whip it into shape!", randomText, "obj_tasque_manager_enemy_slash_Step_0_gml_39_0");
		}
		if (rr == 2)
		{
			timesOrdered++;
			dialogText = (timesOrdered == 2) ? stringsetloc("Hors d'oeuvre,&Hors d'oeuvre...&I mean, order, order!", "obj_tasque_manager_enemy_slash_Step_0_gml_46_0") : stringsetloc("Order, order!", "obj_tasque_manager_enemy_slash_Step_0_gml_46_1");
		}
		if (rr == 3)
		{
			timesCharged++;
			dialogText = (timesCharged > 1) ? stringsetloc("Kitties!!", "obj_tasque_manager_enemy_slash_Step_0_gml_53_0") : stringsetloc("Aren't my kitties just&so well behaved? Watch!", "obj_tasque_manager_enemy_slash_Step_0_gml_53_1");
		}
		var hasTail = false;
		for (var i = 0; i < 4; i++)
		{
			if (global.chararmor1[i] == 7 || global.chararmor2[i] == 7)
				hasTail = true;
		}
		if (hasTail == true && !tailcheck)
		{
			tailcheck = true;
			dialogText = stringsetloc("Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly tail!", "obj_tasque_manager_enemy_slash_Step_0_gml_68_0");
		}
		if (global.charweapon[2] == 7 && !knifecheck)
		{
			knifecheck = true;
			dialogText = stringsetloc("Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly Devilsknife!", "obj_tasque_manager_enemy_slash_Step_0_gml_74_0");
		}
		msgset(0, dialogText);
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
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
		if (rtimer == 0)
		{
			if (overrideAttack)
				rr = 2;
			else
				rr = (rr == 3) ? 3 : 0;
			if (rr == 2)
				obj_growtangle.target_angle = 45;
		}
		if (rtimer == 2 && scr_monsterpop() > 1)
		{
			if (rr == 2)
			{
				with (obj_tasque_enemy)
					rr = (obj_tasque_manager_enemy.quizDifficulty > 1 && obj_tasque_manager_enemy.quizDifficulty != 4) ? 2 : -1;
			}
		}
		rtimer += 1;
		if (rtimer == 15)
		{
			if (rr == 0)
			{
				global.monsterattackname[myself] = "WhipAttack";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 20;
			}
			else if (rr == 1)
			{
				global.monsterattackname[myself] = "RisingDiamonds";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 1;
			}
			else if (rr == 2)
			{
				global.monsterattackname[myself] = "QuizAttack";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 32;
				dc.difficulty = quizDifficulty;
			}
			scr_turntimer(140);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			var battleText = stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_161_0");
			if (rr == 0)
				battleText = stringsetloc("* Tasque Manager makes a list of her outfits for the next year. She only has one outfit.", "obj_tasque_manager_enemy_slash_Step_0_gml_164_0");
			else if (rr == 1)
				battleText = stringsetloc("* Tasque Manager is writing \"manage tasks\" next to every entry in her daily planner.", "obj_tasque_manager_enemy_slash_Step_0_gml_167_0");
			else if (rr == 2)
				battleText = stringsetloc("* Tasque Manager is straightening her whip with a hair straightener.", "obj_tasque_manager_enemy_slash_Step_0_gml_170_0");
			else if (rr == 3)
				battleText = stringsetloc("* Tasque Manager is making herself take priority over everything.", "obj_tasque_manager_enemy_slash_Step_0_gml_173_0");
			else if (rr == 4)
				battleText = stringsetloc("* Smells like live wiring.", "obj_tasque_manager_enemy_slash_Step_0_gml_176_0");
			if (global.monsterstatus[myself] == 1)
				battleText = stringsetloc("* Tasque Manager has reached her&meticulously scheduled bedtime.", "obj_tasque_manager_enemy_slash_Step_0_gml_181_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				battleText = stringsetloc("* Tasque Manager has found things&to be sufficiently organized.", "obj_tasque_manager_enemy_slash_Step_0_gml_186_0");
			global.battlemsg[0] = battleText;
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
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		msgsetloc(0, "* TASQUE MANAGER - Obsessed with order, and abhors Chaos. Whip it good!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_205_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		scr_act_charsprite("kris", spr_krisb_wan_tail, 0, 0);
		scr_mercyadd(myself, 50);
		if (simultotal == 1)
		{
			actcon = 5;
			msgsetloc(0, "* Kris got trained like an animal!!/%", "obj_tasque_manager_enemy_slash_Other_24_gml_235_0");
			scr_battletext_default();
		}
		else
		{
			msgsetloc(0, "* Kris got managed!/%", "obj_tasque_manager_enemy_slash_Other_24_gml_238_0");
			scr_simultext("kris");
			actcon = (simulorderkri == 0) ? 20 : -1;
		}
	}
	if (actcon == 5 && !instance_exists(obj_writer))
	{
		timesTrained++;
		global.typer = 50;
		var trainText = (timesTrained == 3) ? stringsetloc("Hush, puppy!&No growling...", "obj_tasque_manager_enemy_slash_Step_0_gml_231_0") : stringsetloc("Oh, what a&perfect little&puppy you are!", "obj_tasque_manager_enemy_slash_Step_0_gml_231_1");
		msgset(0, trainText);
		balloon = scr_enemyblcon(x - 10, global.monstery[myself], 10);
		global.typer = 6;
		msgsetloc(0, "* Tasque Manager seemed slightly pleased at the Order!!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_236_0");
		scr_battletext_default();
		actcon = 6;
		alarm[4] = 15;
	}
	if (actcon == 7 && button1_p())
	{
		with (balloon)
			instance_destroy();
		with (obj_writer)
			instance_destroy();
		actcon = 1;
	}
	if (actingsus == 1 && actconsus == 1)
	{
		scr_act_charsprite("susie", spr_susie_wan_sign, 0, 0);
		scr_mercyadd(myself, 20);
		if (simultotal == 1 || global.actsimulsus[myself][0] == 0)
		{
			msgsetloc(0, "* Susie was trained like an animal.../", "obj_tasque_manager_enemy_slash_Step_0_gml_256_0");
			scr_anyface_next("susie", "I");
			var sentenceEnd = "/%";
			if (!treatText)
			{
				global.actsimulsus[myself][0] = 1;
				treatText = true;
				scr_smallface(0, "ralsei", 12, 300, 50, stringsetloc("A treat!! Somebody give her a treat!!", "obj_tasque_manager_enemy_slash_Step_0_gml_265_0"));
				sentenceEnd = "\\f0/%";
			}
			msgnextsubloc("\\EH* Play dead!? I'll teach YOU to play dead!!~1", sentenceEnd, "obj_tasque_manager_enemy_slash_Step_0_gml_269_0");
			scr_battletext_default();
			actconsus = 2;
		}
		else
		{
			msgsetloc(0, "* Susie got managed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_274_0");
			scr_simultext("susie");
			actconsus = (simulordersus == 0) ? 20 : -1;
		}
	}
	if (actconsus == 2 && !instance_exists(obj_writer))
	{
		global.typer = 50;
		msgsetloc(0, "What a wonderfully crafted&signpost^1! I'm giving it an&obedience medal!", "obj_tasque_manager_enemy_slash_Step_0_gml_284_0");
		balloon = scr_enemyblcon(x - 10, global.monstery[myself], 10);
		actconsus = 0;
		actcon = 6;
		alarm[4] = 15;
	}
	if (actingral == 1 && actconral == 1)
	{
		scr_act_charsprite("ralsei", spr_ralseib_wan, 0, 0);
		scr_mercyadd(myself, 20);
		if (simultotal == 1 || global.actsimulral[myself][0] == 0)
		{
			msgsetloc(0, "* Ralsei got trained like an animal!!/", "obj_tasque_manager_enemy_slash_Step_0_gml_299_0");
			var sentenceEnd = "/%";
			if (!badgeText)
			{
				global.actsimulral[myself][0] = 1;
				badgeText = true;
				scr_smallface(0, "susie", 12, 300, 50, stringsetloc("Why the hell do YOU get one of those!!", "obj_tasque_manager_enemy_slash_Step_0_gml_307_0"));
				sentenceEnd = "\\f0/%";
			}
			msgnextsubloc("* Due to good behavior^1, he received an obedience badge.~1", sentenceEnd, "obj_tasque_manager_enemy_slash_Step_0_gml_311_0");
			scr_battletext_default();
			actconral = 2;
		}
		else
		{
			msgsetloc(0, "* Ralsei got managed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_316_0");
			scr_simultext("ralsei");
			actconral = (simulorderral == 0) ? 20 : -1;
		}
	}
	if (actconral == 2 && !instance_exists(obj_writer))
	{
		global.typer = 50;
		msgsetloc(0, "He really&loves to do&what he's told^1,&doesn't he?/%", "obj_tasque_manager_enemy_slash_Step_0_gml_326_0");
		balloon = scr_enemyblcon(x - 10, global.monstery[myself], 10);
		actconral = 0;
		actcon = 6;
		alarm[4] = 15;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		scr_act_charsprite_end();
		scr_nextact();
	}
	if (actcon == 20 || actconsus == 20 || actconral == 20)
	{
		if (scr_terminate_writer())
		{
			actconsus = -1;
			actconral = -1;
			actcon = 1;
		}
	}
}
if (scr_debug())
{
	if (keyboard_check_pressed(ord("B")))
	{
		if (overrideAttack == 0)
			overrideAttack = 1;
		else
			overrideAttack = 0;
	}
	if (keyboard_check_pressed(ord("Q")) && quizDifficulty > 0)
		quizDifficulty--;
	if (keyboard_check_pressed(ord("W")) && quizDifficulty < 5)
		quizDifficulty++;
}
