if (init == 0)
{
	if (global.flag[419] == 1)
		global.mercymod[myself] = 100;
	if (global.flag[419] == 2)
		global.mercymod[myself] = 50;
	init = 1;
}
if (instance_exists(obj_tm_quizzler))
	simonsayscon = 1;
if (simonsayscon == 1 && !instance_exists(obj_tm_quizzler))
{
	simonsayscon = 0;
	if (hitbysimonsaysattackcount < 2 && quizDifficulty < 3)
		quizDifficulty++;
	hitbysimonsaysattackcount = 0;
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
		if (violenceused == 1 && violenceusedcon == 0)
		{
			dialogText = stringsetloc("How dare you&touch my pretty kitty!", "obj_tasque_manager_enemy_slash_Step_0_gml_106_0");
			violenceusedcon = 1;
		}
		else if (violenceused == 1 && violenceusedcon == 1)
		{
			var a = choose(0, 1);
			if (a == 0)
				dialogText = stringsetloc("How dare you!", "obj_tasque_manager_enemy_slash_Step_0_gml_112_0");
			if (a == 1)
				dialogText = stringsetloc("You've been a&bad dog...", "obj_tasque_manager_enemy_slash_Step_0_gml_113_0");
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
				rr = 1;
			else
				rr = 0;
			if (rr == 1)
				obj_growtangle.target_angle = 45;
		}
		if (rtimer == 2 && scr_monsterpop() > 1)
		{
			if (rr == 1)
			{
				with (obj_tasque_enemy)
					rr = (obj_tasque_manager_enemy.quizDifficulty > 1 && obj_tasque_manager_enemy.quizDifficulty != 4) ? 2 : -1;
			}
		}
		if (global.encounterno == 89)
			rr = 1;
		rtimer += 1;
		if (rtimer == 15)
		{
			if (rr == 0)
			{
				global.monsterattackname[myself] = "WhipAttack";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 20;
				dc.element = 6;
			}
			else if (rr == 1)
			{
				lastQuizLetter = -1;
				global.monsterattackname[myself] = "QuizAttack";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 32;
				dc.element = 6;
				if (global.encounterno == 89)
				{
					dc.special = 1;
					dc.difficulty = 4;
				}
				else
				{
					dc.difficulty = quizDifficulty;
				}
			}
			scr_turntimer(140);
			overrideAttack = 0;
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
		if (global.encounterno == 89)
			scr_turntimer(99999);
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
		var simultext;
		if (violenceused == 1)
		{
			simultext = stringsetloc("* (Your act failed...)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_254_0");
			actcon = 1;
		}
		else
		{
			if (global.hp[1] <= 0 && global.hp[2] <= 0)
				scr_mercyadd(myself, 15);
			else
				scr_mercyadd(myself, 10);
			overrideAttack = 1;
			if (simultotal == 1)
				simultext = stringsetloc("* (You asked Tasque Manager to show you order. She obliges!)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_263_0");
			else
				simultext = stringsetloc("* (You asked for order!)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_264_0");
		}
		msgset(0, simultext);
		scr_simultext("kris");
		actcon = (simulorderkri == 0) ? 20 : -1;
	}
	if (acting == 3 && actcon == 0)
	{
		scr_act_charsprite("kris", spr_krisb_wan_tail, 0, 0);
		if (violenceused == 1)
		{
			msgsetloc(0, "* (You talked to Tasque Manager, but no effect...)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_277_0");
			actcon = 1;
		}
		else
		{
			overrideAttack = 1;
			scr_mercyadd(myself, 25);
			msgsetloc(0, "* (Everyone asked Tasque Manager to show you order. She obliges!)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_282_0");
			actcon = 1;
		}
		scr_battletext_default();
	}
	if (actingsus == 1 && actconsus == 1)
	{
		scr_act_charsprite("susie", spr_susie_wan_sign, 0, 0);
		var simultext;
		if (violenceused == 1)
		{
			simultext = stringsetloc("* S-Action failed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_293_0");
		}
		else
		{
			if (global.hp[0] <= 0 && global.hp[2] <= 0)
				scr_mercyadd(myself, 10);
			else
				scr_mercyadd(myself, 6);
			var a = choose(0, 1);
			if (a == 0)
				simultext = stringsetloc("* Susie barked madly!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_301_0");
			if (a == 1)
				simultext = stringsetloc("* Susie's mouth froths!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_302_0");
		}
		msgset(0, simultext);
		scr_simultext("susie");
		actconsus = (simulordersus == 0) ? 20 : 0;
	}
	if (actingral == 1 && actconral == 1)
	{
		scr_act_charsprite("ralsei", spr_ralseib_wan, 0, 0);
		var simultext;
		if (violenceused == 1)
		{
			simultext = stringsetloc("* R-Action failed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_314_0");
		}
		else
		{
			if (global.hp[0] <= 0 && global.hp[1] <= 0)
				scr_mercyadd(myself, 10);
			else
				scr_mercyadd(myself, 6);
			var a = choose(0, 1);
			if (a == 0)
				simultext = stringsetloc("* Ralsei fell in line!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_322_0");
			if (a == 1)
				simultext = stringsetloc("* Ralsei listened closely!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_323_0");
		}
		msgset(0, simultext);
		scr_simultext("ralsei");
		actconral = (simulorderral == 0) ? 20 : 0;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		scr_act_charsprite_end();
		scr_nextact();
	}
	if (actcon == 20 || actconsus == 20 || actconral == 20)
	{
		scr_act_charsprite_end();
		if (scr_terminate_writer())
		{
			actconsus = -1;
			actconral = -1;
			actcon = 1;
		}
	}
}
else if (obj_herokris.image_alpha == 0 || (instance_exists(obj_herosusie) && obj_herosusie.image_alpha == 0) || (instance_exists(obj_heroralsei) && obj_heroralsei.image_alpha == 0))
{
	scr_act_charsprite_end();
}
if (scr_debug())
{
}
