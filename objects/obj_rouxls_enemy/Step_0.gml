if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		global.typer = 50;
		if (attackorder == 3)
			attackorder = 0;
		if (attackorder == 0)
			rr = 1;
		if (attackorder == 1)
			rr = 2;
		if (attackorder == 2)
			rr = 0;
		attackorder++;
		if (rr == 0)
		{
			if (duckmode)
				msgsetloc(0, "Fly, mine Duckie! Fly!/%", "obj_rouxls_enemy_slash_Step_0_gml_19_0");
			else
				msgsetloc(0, "Go forth,&my caravan!/%", "obj_rouxls_enemy_slash_Step_0_gml_22_0");
			chosenattack = 1;
		}
		else if (rr == 1)
		{
			msgsetloc(0, "Solveth my puzzleth,&yon Maties!/%", "obj_rouxls_enemy_slash_Step_0_gml_28_0");
			chosenattack = 2;
		}
		else if (rr == 2)
		{
			msgsetloc(0, "Thrashst off&the Porthbow!/%", "obj_rouxls_enemy_slash_Step_0_gml_33_0");
			chosenattack = 0;
		}
		talkedcon = 0;
		talktimer = 0;
		ralseitalks = 0;
		if (ballooncount == 0)
		{
			msgsetloc(0, "The Rouxls&(pronounced Rules)&art Simple!/%", "obj_rouxls_enemy_slash_Step_0_gml_42_0");
			ballooncon = 1;
		}
		if (ballooncount == 1)
		{
			if (hasplayerplacedhouses == 0 && global.monsterhp[myself] != global.monstermaxhp[myself])
				msgsetloc(0, "O-oweth! The houses,&thoust fool! THE&HOUSES!!!/%", "obj_rouxls_enemy_slash_Step_0_gml_45_0");
			else
				msgsetloc(0, "Soon, Victorie&will be Mineth,&and Queene will&maketh me her&Left Hande Man.../%", "obj_rouxls_enemy_slash_Step_0_gml_46_0");
		}
		if (ballooncount == 2)
		{
			if (hasplayerplacedhouses == 0 && global.monsterhp[myself] != global.monstermaxhp[myself])
			{
				msgsetloc(0, "STOP HITTINGETH&ME AND PLAYETH&MY MINI-GAME,&YOU ROGUES!!!/%", "obj_rouxls_enemy_slash_Step_0_gml_50_0");
			}
			else
			{
				msgsetloc(0, "Umm,&Mr. Kaard?&What happens&if WE win?/%", "obj_rouxls_enemy_slash_Step_0_gml_51_0");
				ralseitalks = 1;
				ballooncon = 2;
			}
		}
		if (ballooncount == 3 && hasplayerplacedhouses == 1)
			msgsetloc(0, "STOP!!! STOP&BUILDINGETH HOUSES!!!&I HAVE TO WIN!!!/%", "obj_rouxls_enemy_slash_Step_0_gml_57_0");
		ballooncount++;
		if (ralseitalks == 1 && instance_exists(obj_heroralsei))
		{
			global.typer = 74;
			scr_guardpeek(obj_heroralsei);
			scr_enemyblcon(obj_heroralsei.x + 75, obj_heroralsei.y + 15, 7);
		}
		else
		{
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		if (ballooncon == 0)
		{
			talked = 1;
			talktimer = 0;
		}
		else
		{
			talked = 0.5;
			talktimer = 0;
		}
	}
	if (talked == 0.5)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			with (obj_battleblcon)
				instance_destroy();
			if (ballooncon == 1)
			{
				msgsetloc(0, "Conquer Houses!&Whoeverest has the&most, Winst!/%", "obj_rouxls_enemy_slash_Step_0_gml_85_0");
				alarm[6] = 1;
			}
			if (ballooncon == 2)
			{
				msgsetloc(0, ".../%", "obj_rouxls_enemy_slash_Step_0_gml_86_0");
				alarm[7] = 1;
			}
			ballooncon = 0;
			talked = 0.6;
			global.typer = 50;
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (talked == 0.7)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			with (obj_battleblcon)
				instance_destroy();
			msgsetloc(0, "Uh oh/%", "obj_rouxls_enemy_slash_Step_0_gml_102_0");
			talked = 0.8;
			alarm[6] = 1;
			global.typer = 50;
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			with (obj_battleblcon)
				instance_destroy();
			talkedcon = 1;
		}
		if (talkedcon == 1)
		{
			rtimer = 0;
			scr_blconskip(-1);
			if (global.mnfight == 2)
				global.mnfight = 7;
		}
	}
	if (global.mnfight == 7 && buildedblocks == 0)
	{
		buildedblockstimer++;
		if (buildedblockstimer == 1)
		{
			with (obj_rouxls_simtown)
				TurnCon = 2;
		}
		if (buildedblockstimer > 60)
		{
			global.mnfight = 2;
			buildedblocks = 1;
			buildedblockstimer = 0;
		}
	}
	if (scr_isphase("bullets") && buildedblocks == 1)
	{
		buildedblocks = 2;
		rr = chosenattack;
		if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart))
			scr_moveheart();
		if (!instance_exists(obj_growtangle))
			instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
	}
	if (scr_isphase("bullets") && attacked == 0 && buildedblocks == 2)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			if (!instance_exists(obj_darkener))
				instance_create(0, 0, obj_darkener);
			if (rr == 0)
			{
				global.monsterattackname[myself] = "ThrashHead";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.damage = global.monsterat[myself] * 5;
				dc.type = 26;
				dc.difficulty = head_difficulty;
			}
			else if (rr == 1)
			{
				global.monsterattackname[myself] = "ThrashFoot";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.damage = global.monsterat[myself] * 7;
				dc.type = 27;
				dc.difficulty = wheel_difficulty;
			}
			else
			{
				global.monsterattackname[myself] = "PuzzleBlocks";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.damage = global.monsterat[myself] * 6;
				dc.type = 28;
			}
			scr_turntimer(200);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3);
			var random_zone = irandom(2);
			if (rr == 0)
			{
				var zone_word = zone[random_zone];
				global.battlemsg[0] = stringsetsubloc("* You need more ~1 Zones.", zone_word, "obj_rouxls_enemy_slash_Step_0_gml_136_0");
			}
			if (rr == 1)
			{
				var city_word = city[random_zone];
				global.battlemsg[0] = stringsetsubloc("* Your city is lacking ~1.", city_word, "obj_rouxls_enemy_slash_Step_0_gml_142_0");
			}
			if (rr == 2)
			{
				var shipStatus = stringsetloc("cool", "obj_rouxls_enemy_slash_Step_0_gml_230_0");
				if (type == 0)
					shipStatus = stringsetloc("elegant", "obj_rouxls_enemy_slash_Step_0_gml_235_0");
				if (type == 1)
					shipStatus = stringsetloc("lively", "obj_rouxls_enemy_slash_Step_0_gml_239_0");
				if (type == 2)
					shipStatus = stringsetloc("cute", "obj_rouxls_enemy_slash_Step_0_gml_243_0");
				if (type == 3)
					shipStatus = stringsetloc("hot", "obj_rouxls_enemy_slash_Step_0_gml_247_0");
				if (type == 5)
					shipStatus = stringsetloc("gun's", "obj_rouxls_enemy_slash_Step_0_gml_251_0");
				global.battlemsg[0] = duckmode ? stringsetloc("* The enemy's ship seems to have fallen in love with yours.", "obj_rouxls_enemy_slash_Step_0_gml_147_0") : stringsetsubloc("* You can't help but notice the enemy's ship is very ~1.", shipStatus, "obj_rouxls_enemy_slash_Step_0_gml_147_1");
			}
			if (rr == 3)
				global.battlemsg[0] = stringsetloc("* Smells like a model house set.", "obj_rouxls_enemy_slash_Step_0_gml_150_0");
			attacked = 1;
			buildedblocks = 0;
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
		msgsetloc(0, "* ROUXLS - Miniboss for hire. Will appear even if unhired.&\"I eventh do Partiese\"/%", "obj_rouxls_enemy_slash_Step_0_gml_171_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		msgsetloc(0, "%%", "obj_rouxls_enemy_slash_Step_0_gml_178_0");
		scr_battletext_default();
		acting = 9;
		HouseCount = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		msgsetloc(0, "%%", "obj_rouxls_enemy_slash_Step_0_gml_187_0");
		scr_battletext_default();
		acting = 9;
		HouseCount = 2;
	}
	if (acting == 4 && actcon == 0)
	{
		msgsetloc(0, "%%", "obj_rouxls_enemy_slash_Step_0_gml_196_0");
		scr_battletext_default();
		acting = 9;
		HouseCount = 3;
	}
	if (acting == 5 && actcon == 0)
	{
		msgsetloc(0, "%%", "obj_rouxls_enemy_slash_Step_0_gml_205_0");
		scr_battletext_default();
		acting = 9;
		HouseCount = 4;
	}
	if (actingral == 1 && actconral == 1)
	{
		with (obj_rouxls_simtown)
		{
			if (RalseiDistractTwice != 1)
				RalseiDistract = 1;
		}
		if (obj_rouxls_simtown.RalseiDistract == 1)
			msgsetloc(0, "* Ralsei distracted! Rouxls will place one less house next turn./%", "obj_rouxls_enemy_slash_Step_0_gml_214_0");
		else
			msgsetloc(0, "* Ralsei distracted! But it failed./%", "obj_rouxls_enemy_slash_Step_0_gml_215_0");
		scr_battletext_default();
		actcon = 1;
		actconral = 0;
	}
	if (acting == 9 && actcon == 0 && !instance_exists(obj_writer))
	{
		with (obj_rouxls_simtown)
		{
			MyTurn = 1;
			TurnCon = 0;
			HouseCountMax = obj_rouxls_enemy.HouseCount;
		}
		acting = 10;
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
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		if (endbattle == 1)
			actcon = 50;
		else
			scr_nextact();
	}
	if (actcon == 50)
	{
		mus_volume(global.batmusic[1], 0, 45);
		actcon = 51;
		alarm[5] = 45;
	}
	if (actcon == 52)
	{
		scr_speaker("rouxls");
		msgsetloc(0, "\\E0* It seemseth the Game hath been Overed!/", "obj_rouxls_enemy_slash_Step_0_gml_263_0");
		if (obj_rouxls_simtown.actresult == "lost")
		{
			msgnextloc("\\E2* And lo! I haveth the moste Real Estate!/", "obj_rouxls_enemy_slash_Step_0_gml_266_0");
		}
		else if (obj_rouxls_simtown.actresult == "won")
		{
			msgnextloc("\\E1* What!? Howst doth you have more Houstes?!/", "obj_rouxls_enemy_slash_Step_0_gml_270_0");
		}
		else
		{
			msgnextloc("\\E5* I haveth noe idea who won or lost./", "obj_rouxls_enemy_slash_Step_0_gml_274_0");
			global.flag[435] = 3;
		}
		msgnextloc("\\E5* CUT THE BATTLE!!!/%", "obj_rouxls_enemy_slash_Step_0_gml_364_0");
		scr_battletext();
		actcon = 53;
	}
	if (actcon == 53 && !instance_exists(obj_writer))
	{
		with (obj_simtown_acidmaker)
			instance_destroy();
		with (obj_simtown_landmaker)
			instance_destroy();
		scr_wincombat();
		actcon = 55;
	}
}
if (scr_debug())
{
	if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(ord("1")))
		bulletoverride = 0;
	if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord("2")))
		bulletoverride = 1;
	if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(ord("3")))
		bulletoverride = 2;
	if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(ord("4")))
		bulletoverride = -1;
	if (keyboard_check_pressed(ord("H")))
	{
		if (instance_exists(obj_power_up_fx))
		{
			instance_destroy(obj_power_up_fx);
			instance_destroy(obj_power_up_thrash);
		}
		else
		{
			d = scr_following_afterimage(obj_power_up_fx, self);
			d.depth -= 1;
			d = scr_following_afterimage(obj_power_up_thrash, obj_thrashmachine);
			d.depth -= 1;
		}
	}
}
