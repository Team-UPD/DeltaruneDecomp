if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 68;
		rr = irandom(2);
		if (rr == 0 && enlarge_attack == 0)
		{
			enlarge_attack++;
			msgsetloc(0, "ENL4RGE&Yourself", "obj_spamton_enemy_slash_Step_0_gml_20_0");
			bulletoverride = 1;
		}
		else if (rr == 1 && vacuum_attack == 0)
		{
			vacuum_attack++;
			msgsetloc(0, "TRANSMIT&KROMER", "obj_spamton_enemy_slash_Step_0_gml_26_0");
			bulletoverride = 2;
		}
		else if (rr == 2 && singles_attack == 0)
		{
			singles_attack++;
			msgsetloc(0, "MEET LOCAL SINGLES&STRAIGHT FROM [My]", "obj_spamton_enemy_slash_Step_0_gml_32_0");
			bulletoverride = 0;
		}
		else
		{
			var other_random = irandom(1);
			if (other_random == 0)
			{
				msgsetloc(0, "Get Big and WIN&[W1ld Pr1zes!]", "obj_spamton_enemy_slash_Step_0_gml_41_0");
			}
			else if (help_counter == 0)
			{
				help_counter++;
				msgsetloc(0, "[Press F1 For] HELP", "obj_spamton_enemy_slash_Step_0_gml_47_0");
			}
			else
			{
				msgsetloc(0, "HELP", "obj_spamton_enemy_slash_Step_0_gml_50_0");
			}
			bulletoverride = -1;
		}
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		if (!instance_exists(obj_spamton_cherub))
			scr_blconskip(15);
		else
			talktimer += 1;
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
			rr = (bulletoverride == -1) ? irandom(2) : bulletoverride;
			if (rr == 0)
			{
				global.monsterattackname[myself] = "Minitons";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 23;
			}
			else if (rr == 1)
			{
				global.monsterattackname[myself] = "WordBullets";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 24;
			}
			else
			{
				global.monsterattackname[myself] = "MoneyVacuum";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 25;
			}
			scr_turntimer(270);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			if (turns == 1)
			{
				global.battlemsg[0] = stringsetloc("* THERE'S NOTHING WRONG WITH HAVING A NICE [Splurge] EVERY ONCE IN A WHILE", "obj_spamton_enemy_slash_Step_0_gml_120_0");
			}
			else if (turns == 2)
			{
				global.battlemsg[0] = stringsetloc("* There's nothing wrong.&There's NOTHING WRONG.&THERE'S NOTHING WRONG.", "obj_spamton_enemy_slash_Step_0_gml_123_0");
			}
			else
			{
				rr = choose(0, 1, 2, 3, 4);
				if (rr == 0)
					global.battlemsg[0] = stringsetloc("* Great ENEMY! SUSCRIBE NOW! ", "obj_spamton_enemy_slash_Step_0_gml_127_0");
				if (rr == 1)
					global.battlemsg[0] = stringsetloc("* Spamton mutters \"1997.\"", "obj_spamton_enemy_slash_Step_0_gml_128_0");
				if (rr == 2)
					global.battlemsg[0] = stringsetloc("* Smells like KROMER.", "obj_spamton_enemy_slash_Step_0_gml_129_0");
				if (rr == 3)
					global.battlemsg[0] = stringsetloc("* CONGRULATIONS YOU ARE THE 100th VISITOR!!! CLICK HERE TO [Die]", "obj_spamton_enemy_slash_Step_0_gml_130_0");
				if (rr == 4)
					global.battlemsg[0] = stringsetloc("* Spamton flashes an award-losing smile.", "obj_spamton_enemy_slash_Step_0_gml_131_0");
			}
			attacked = 1;
		}
		else
		{
			scr_turntimer(120);
		}
	}
	if ((keyboard_check_pressed(vk_f1) || gamepad_button_check_pressed(0, gp_stickr) || gamepad_button_check_pressed(1, gp_stickr) || gamepad_button_check_pressed(2, gp_stickr)) && party_heal == false && (scr_isphase("menu") || scr_isphase("enemytalk")))
	{
		if (scr_isphase("enemytalk") && talktimer > 15)
		{
			talktimer = talkmax;
			with (obj_writer)
				instance_destroy();
		}
		for (i = 0; i < 3; i++)
		{
			if (global.char[i] == 0)
				continue;
			var _hltarget = global.charinstance[i];
			var _cherub = instance_create(_hltarget.x + 16, _hltarget.y - 38, obj_spamton_cherub);
			_cherub.healer = true;
		}
		party_heal = true;
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		msgsetloc(0, "* SPAMTON - He wants to make a \\cYDEAL\\c0, but don't give him your \\cYMONEY\\c0!/%", "obj_spamton_enemy_slash_Step_0_gml_153_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 5;
		if (deal_counter == 0)
		{
			correct_answer = 0;
			global.choicemsg[0] = stringsetloc("#TELL ME MORE", "obj_spamton_enemy_slash_Step_0_gml_164_0");
			global.choicemsg[1] = stringsetloc("#NOT INTERESTED", "obj_spamton_enemy_slash_Step_0_gml_165_0");
			if (deal_read == 0)
			{
				deal_read++;
				scr_speaker("spamton");
				msgsetloc(0, "HEY HEY HEY^1!&I'VE NEVER SEEN A&[HeartShapedObject]&LIKE THAT BEFORE!!/", "obj_spamton_enemy_slash_Step_0_gml_172_0");
				msgnextloc("\\M2MY EYES ARE [[Burning]]&LIKE [[DVDs of ANY&movie at Half-pr1ce!]]/", "obj_spamton_enemy_slash_Step_0_gml_173_0");
				msgnextloc("\\M4I HAVE A VERY SPECIL&[Deal] FOR YOU KID!/%", "obj_spamton_enemy_slash_Step_0_gml_174_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "KID!!! IN BUSINESS&YOU NEED TO&SAY YOU'RE&INTERESTED!!!/%", "obj_spamton_enemy_slash_Step_0_gml_178_0");
			}
		}
		if (deal_counter == 1)
		{
			correct_answer = 1;
			global.choicemsg[0] = stringsetloc("#GIVE MONEY", "obj_spamton_enemy_slash_Step_0_gml_185_0");
			global.choicemsg[1] = stringsetloc("#DON'T GIVE", "obj_spamton_enemy_slash_Step_0_gml_186_0");
			if (deal_read == 0)
			{
				deal_read++;
				scr_speaker("spamton");
				msgsetloc(0, "BELIEVE IT&OR          !!/", "obj_spamton_enemy_slash_Step_0_gml_193_0");
				msgnextloc("\\M4I USED TO be A \\cRBIG&SHOT\\c0. THE BIGGEST!!!&BUT NOW.../", "obj_spamton_enemy_slash_Step_0_gml_194_0");
				msgnextloc("\\M3I NEED A LITTLE&[[Genorisity]]/%", "obj_spamton_enemy_slash_Step_0_gml_196_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\M3YUM YUM I NEED&A LITTLE MORE&[Genorisity]/%", "obj_spamton_enemy_slash_Step_0_gml_200_0");
			}
		}
		if (deal_counter == 2)
		{
			correct_answer = 1;
			global.choicemsg[0] = stringsetloc("#DON'T TAKE DEAL", "obj_spamton_enemy_slash_Step_0_gml_207_0");
			global.choicemsg[1] = stringsetloc("#TAKE DEAL", "obj_spamton_enemy_slash_Step_0_gml_208_0");
			if (deal_read == 0)
			{
				deal_read++;
				scr_speaker("spamton");
				msgsetloc(0, "I WAS ONLY EVER&IN IT FOR/", "obj_spamton_enemy_slash_Step_0_gml_215_0");
				msgnextloc("\\M1THE [Freedom]./", "obj_spamton_enemy_slash_Step_0_gml_216_0");
				msgnextloc("\\M4TO MAKE YOUR OWN&[Deals]&TO CALL YOUR OWN&[Shots]/", "obj_spamton_enemy_slash_Step_0_gml_218_0");
				msgnextloc("\\M3AND SOMETIMES IN THE&MORNING^1, A LITTLE/", "obj_spamton_enemy_slash_Step_0_gml_220_0");
				msgnextloc("\\M1[Hyperlink Blocked]/", "obj_spamton_enemy_slash_Step_0_gml_221_0");
				msgnextloc("\\M3SOUNDS GOOD.&DOESN;T IT?KID?/", "obj_spamton_enemy_slash_Step_0_gml_222_0");
				msgnextloc("\\M2DON'T YOU W4NT TO BE&JUST LIKE YOUR OLD&PAL SPAMTON????/", "obj_spamton_enemy_slash_Step_0_gml_224_0");
				msgnextloc("\\M0TAKE THE DE4L./%", "obj_spamton_enemy_slash_Step_0_gml_225_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\M3TAKE THE DEAL&YOU LITTLE [Sponge]/%", "obj_spamton_enemy_slash_Step_0_gml_229_0");
			}
		}
		if (deal_counter == 3)
		{
			correct_answer = 1;
			global.choicemsg[0] = stringsetloc("#BUY INSURANCE", "obj_spamton_enemy_slash_Step_0_gml_236_0");
			global.choicemsg[1] = stringsetloc("#DON'T BUY", "obj_spamton_enemy_slash_Step_0_gml_237_0");
			if (deal_read == 0)
			{
				deal_read++;
				scr_speaker("spamton");
				msgsetloc(0, "\\M3DONT WORRY KID I&WILL GIVE YOU&[Deal Insurance]/", "obj_spamton_enemy_slash_Step_0_gml_244_0");
				msgnextloc("\\M4ONLY FOR THE&LOW^1, LOW PRICE&OF 1000 KROMER./", "obj_spamton_enemy_slash_Step_0_gml_245_0");
				msgnextloc("\\M5AN AWESOME PRICE.!&AN ABSOLUTELY&[[Terrifying]] PRICE/", "obj_spamton_enemy_slash_Step_0_gml_246_0");
				msgnextloc("\\M6PRICES SO LOW^1,&EVERYONE I KNOW IS&[[Dead]]!!!/%", "obj_spamton_enemy_slash_Step_0_gml_247_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\M2YUM YUM DID&YOU WANT SOME&MORE INSURANCE?/%", "obj_spamton_enemy_slash_Step_0_gml_251_0");
			}
		}
		if (deal_counter == 4)
		{
			correct_answer = 1;
			global.choicemsg[0] = stringsetloc("#GIVE ACCOUNT#ACCESS", "obj_spamton_enemy_slash_Step_0_gml_258_0");
			global.choicemsg[1] = stringsetloc("#REFUSE", "obj_spamton_enemy_slash_Step_0_gml_259_0");
			if (deal_read == 0)
			{
				deal_read++;
				scr_speaker("spamton");
				msgsetloc(0, "DON'T WORRY KIDS&I'M AN [HonestMan]/", "obj_spamton_enemy_slash_Step_0_gml_266_0");
				msgnextloc("\\M3I JUST NEED YOUR&[Account Details] AND&THE&[Number on theB4ck]!/", "obj_spamton_enemy_slash_Step_0_gml_267_0");
				msgnextloc("\\M2THEN YOU CAN ENJ0Y&1000 Fr3e KROmer/%", "obj_spamton_enemy_slash_Step_0_gml_268_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\M2YUM YUM DID&YOU HAVE ANY&MORE ACCOUNTS?/%", "obj_spamton_enemy_slash_Step_0_gml_272_0");
			}
		}
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
	}
	if (actcon == 5 && !i_ex(obj_writer))
	{
		actcon = 10;
		msgset(0, "\\C2 ");
		scr_battletext_default();
	}
	if (actcon == 10 && !i_ex(obj_writer) && !i_ex(obj_choicer_neo))
	{
		if (deal_counter == 0)
		{
			actcon = 1;
			if (global.choice == correct_answer)
			{
				snd_play(snd_great_shine);
				scr_mercyadd(myself, 20);
				deal_counter++;
				deal_read = 0;
				scr_speaker("spamton");
				msgsetloc(0, "\\M4THAT'S THE ATTITUDE&YOU LITTLE [Slime]!/", "obj_spamton_enemy_slash_Step_0_gml_299_0");
				msgnextloc("\\M2DEALS LIKE THIS&ONLY COME ONCE IN&YOUR [[Ant-sized]]&[[Rapidly-shrinking]]&LIFE!!/%", "obj_spamton_enemy_slash_Step_0_gml_300_0");
			}
			else
			{
				snd_play(snd_error);
				scr_speaker("spamton");
				msgsetloc(0, "\\M3WRONG ANSWER!!!&WRONG!!! WRONG!!!&WRONG!!! TRY AGAIN!!!/%", "obj_spamton_enemy_slash_Step_0_gml_304_0");
			}
		}
		else if (deal_counter == 1)
		{
			actcon = 1;
			if (global.choice == correct_answer)
			{
				snd_play(snd_great_shine);
				scr_mercyadd(myself, 20);
				deal_counter++;
				deal_read = 0;
				scr_speaker("spamton");
				msgsetloc(0, "\\M2THAT'S RIGHT AND I&DON'T MEAN [Money]!!!/", "obj_spamton_enemy_slash_Step_0_gml_317_0");
				msgnextloc("\\M5I'M A SALESMAN   ,&I WAS NEVER IN IT&FOR THE MONEY!!!/%", "obj_spamton_enemy_slash_Step_0_gml_318_0");
			}
			else
			{
				snd_play(snd_error);
				scr_speaker("spamton");
				msgsetloc(0, "\\M2YUM YUM.&DELICIS KROMER./", "obj_spamton_enemy_slash_Step_0_gml_323_0");
				msgnextloc("\\M3DID YOU HAVE&AN YMORE?/%", "obj_spamton_enemy_slash_Step_0_gml_324_0");
				kromer_message = 1;
				actcon = 50;
			}
		}
		else if (deal_counter == 2)
		{
			actcon = 1;
			if (global.choice == correct_answer)
			{
				deal_counter++;
				deal_read = 0;
				snd_play(snd_great_shine);
				scr_mercyadd(myself, 20);
				scr_speaker("spamton");
				msgsetloc(0, "\\M4NOW THAT'S WHAT&I'M TALKING AB04T!&YOU GOT [Guts] KID!!/", "obj_spamton_enemy_slash_Step_0_gml_346_0");
				msgnextloc("\\M2THAT's [[Discomfort&And Abdominal&Pain]] IN MY&[[Guts]]!!/%", "obj_spamton_enemy_slash_Step_0_gml_348_0");
			}
			else
			{
				snd_play(snd_error);
				scr_speaker("spamton");
				msgsetloc(0, "\\M0DEAL OR NO DEAL^1,&THAT'S THE TV SHOW/", "obj_spamton_enemy_slash_Step_0_gml_353_0");
				msgnextloc("\\M3WHERE THE PEOPLE&WHO DON'T TAKE THE DEAL/", "obj_spamton_enemy_slash_Step_0_gml_354_0");
				msgnextloc("\\M6GET FILLED WITH BULLETS&FIRED FROM THE HOST'S&MOUTH!!!/%", "obj_spamton_enemy_slash_Step_0_gml_356_0");
			}
		}
		else if (deal_counter == 3)
		{
			actcon = 1;
			if (global.choice == correct_answer)
			{
				deal_counter++;
				deal_read = 0;
				snd_play(snd_great_shine);
				scr_mercyadd(myself, 20);
				scr_speaker("spamton");
				msgsetloc(0, "\\M3WHAT!? YOU DOn'T&HAVE ENOUGH&[Wacky Stacks]!?/", "obj_spamton_enemy_slash_Step_0_gml_368_0");
				msgnextloc("\\M2Kid^1, you're [Killing]&me^1! HAHAHA!^1!&HAHAHA!!!/", "obj_spamton_enemy_slash_Step_0_gml_369_0");
				msgnextloc("\\M0PLEASE STOP [Killing]&ME I WILL GIVE&Y OU ANOTHER DEAL./%", "obj_spamton_enemy_slash_Step_0_gml_370_0");
			}
			else
			{
				snd_play(snd_error);
				scr_speaker("spamton");
				msgsetloc(0, "\\M2YUM YUM.&DELICIS KROMER./", "obj_spamton_enemy_slash_Step_0_gml_374_0");
				msgnextloc("\\M3DID YOU HAVE&AN YMORE?/%", "obj_spamton_enemy_slash_Step_0_gml_375_0");
				actcon = 50;
			}
		}
		else if (deal_counter == 4)
		{
			if (global.choice == correct_answer)
			{
				actcon = 20;
				deal_counter++;
				deal_read = 0;
				snd_play(snd_great_shine);
				scr_mercyadd(myself, 19);
				correct_answer = 1;
				global.choicemsg[0] = stringsetloc("#NO DEAL", "obj_spamton_enemy_slash_Step_0_gml_396_0");
				global.choicemsg[1] = stringsetloc("#YES DEAL", "obj_spamton_enemy_slash_Step_0_gml_397_0");
				scr_speaker("spamton");
				msgsetloc(0, "\\M4WHAT!?!? YOU DON\"T&NEED IT!?!?/", "obj_spamton_enemy_slash_Step_0_gml_400_0");
				msgnextloc("\\M2THAT'S A REAL BIGSHOT&MOVE KID!!^1!&YOU'RE LIKE ME.../", "obj_spamton_enemy_slash_Step_0_gml_401_0");
				msgnextloc("\\M0[Desperate]/", "obj_spamton_enemy_slash_Step_0_gml_402_0");
				msgnextloc("\\M2BUT WE KNOW WHAT&WE WANT^1,&DON'T WE!?/", "obj_spamton_enemy_slash_Step_0_gml_403_0");
				msgnextloc("\\M4W1LD PR1ZES^1,&HOTSINGLE^1,&100 CUSTOMER^1,&AND MOST OF ALL.../", "obj_spamton_enemy_slash_Step_0_gml_404_0");
				msgnextloc("\\M1[Hyperlink Blocked]./", "obj_spamton_enemy_slash_Step_0_gml_405_0");
				msgnextloc("\\M3WILL YOU TAKE&THE FINAL DEAL!?/", "obj_spamton_enemy_slash_Step_0_gml_406_0");
				msgnextloc("\\M4REMEMBER..^1.&THIS IS UP TO YOU^1!&I WOn'T FORCE YOU./%", "obj_spamton_enemy_slash_Step_0_gml_407_0");
			}
			else
			{
				actcon = 50;
				snd_play(snd_error);
				scr_speaker("spamton");
				msgsetloc(0, "\\M2YUM YUM GREAT&DEAL KID!!/", "obj_spamton_enemy_slash_Step_0_gml_413_0");
				msgnextloc("\\M2YOUR A BIGSHOT!^1!&SAVING THE WORLD!!/%", "obj_spamton_enemy_slash_Step_0_gml_414_0");
			}
		}
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
	}
	if (actcon == 20 && !i_ex(obj_writer))
	{
		actcon = 25;
		msgset(0, "\\C2 ");
		scr_battletext_default();
	}
	if (actcon == 25 && !i_ex(obj_writer) && !i_ex(obj_choicer_neo))
	{
		if (global.choice == correct_answer)
		{
			actcon = 26;
			scr_mercyadd(myself, 100);
			global.mercymod[myself] = 0;
			snd_play(snd_great_shine);
			snd_free_all();
			image_xscale = 2;
			remx += expand_spam;
			alarm[4] = 60;
		}
		else
		{
			actcon = 20;
			scr_speaker("spamton");
			if (expand_spam < 8)
			{
				image_xscale += 0.25;
				expand_spam += (sprite_get_width(spr_spamton_idle) * 0.125);
				remx -= (sprite_get_width(spr_spamton_idle) * 0.125);
			}
			msgsetloc(0, "\\M0WRONG/%", "obj_spamton_enemy_slash_Step_0_gml_452_0");
			scr_enemyblcon((x - 10) + expand_spam, global.monstery[myself], 10);
		}
	}
	if (actcon == 27)
	{
		scr_speaker("spamton");
		msgsetloc(0, "\\M3THEN A DEAL'S&A DEAL!!!/", "obj_spamton_enemy_slash_Step_0_gml_464_0");
		msgnextloc("\\M2PLEASURE DOING&BUSINESS WITH&YOU KID!!!/%", "obj_spamton_enemy_slash_Step_0_gml_465_0");
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
		actcon = 28;
	}
	if (actcon == 28 && !i_ex(obj_writer))
	{
		global.flag[309] = 1;
		scr_monsterdefeat();
		actcon = 1;
	}
	if (actcon == 50 && !i_ex(obj_writer) && !i_ex(obj_choicer_neo))
	{
		snd_play(snd_hypnosis);
		global.msg[0] = stringsetloc("* (You felt your KROMER being absorbed...)&* (Wrong choice...?)/%", "obj_spamton_enemy_slash_Step_0_gml_415_0");
		actcon = 1;
		if (global.gold >= 25)
			global.gold -= 25;
		else
			global.gold = 0;
		scr_battletext_default();
	}
	if (acting == 3 && actcon == 0)
	{
		star = 0;
		scr_healitemspell(60);
		acting = 2;
		actcon = 0;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		global.flag[20] = 0;
		scr_nextact();
	}
}
