if (init == 0)
{
	with (obj_heroparent)
		visible = false;
	init = 1;
}
if (i_ex(o_boxingqueen))
{
	x = o_boxingqueen.x;
	y = o_boxingqueen.y - 80;
}
if (instance_exists(o_boxinghud))
{
	global.monsterhp[myself] = o_boxingqueen.health_count + (o_boxinghud.sub_healthbar_count * 1500);
	if (global.monsterhp[myself] < 1)
		global.monsterhp[myself] = 1;
}
if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
		turn++;
	if (scr_isphase("enemytalk") && talked == 0 && turn > 18 && o_boxingqueen.phase_transition < 1)
	{
		if (global.monsterdf[myself] > -25)
		{
			global.monsterdf[myself] -= 5;
			o_boxingqueen.damagetakenincrease += 0.166666;
		}
	}
	if (scr_isphase("enemytalk") && talked == 0 && o_boxingqueen.phase_transition < 1)
	{
		global.typer = 70;
		ballooncon = 0;
		balloonsubcon = 0;
		balloonend = 1;
		talkedcon = 0;
		o_boxingcontroller.acttoenemytalktransition = 0;
		if (playerhasntdodged == 0 && balloonorder > 0 && playerhasntdodgedorder < 3)
		{
			if (playerhasntdodgedorder == 0)
			{
				msgsetloc(0, "Oh No Did You&Forget How To&Control A Giant&Robot/%", "obj_gigaqueen_enemy_slash_Step_0_gml_56_0");
				ballooncon = 11;
				balloonend = 0;
			}
			if (playerhasntdodgedorder == 1 || playerhasntdodgedorder == 2)
			{
				msgsetsubloc(0, "One More Time,&Press ~1 And&~2 To Dodge/%", scr_get_input_name(3), scr_get_input_name(1), "obj_gigaqueen_enemy_slash_Step_0_gml_57_0_b");
				ballooncon = 13;
				balloonend = 0;
			}
			playerhasntdodgedorder++;
			balloonorder = 2;
		}
		else
		{
			if (balloonorder == 0)
			{
				msgsetloc(0, "The Time For&Words Is Over/%", "obj_gigaqueen_enemy_slash_Step_0_gml_63_0");
				ballooncon = 1;
				balloonend = 0;
			}
			if (balloonorder == 1)
			{
				msgsetloc(0, "Ha Ha Just Kidding&I Totally Will&Keep Monologuing&As I Kick At: Your&Face/%", "obj_gigaqueen_enemy_slash_Step_0_gml_64_0");
				balloonend = 1;
			}
			if (balloonorder == 2)
			{
				msgsetloc(0, "The Time Has&Come For Noelle&To Realize Her&Own Strength/%", "obj_gigaqueen_enemy_slash_Step_0_gml_65_0");
				ballooncon = 2;
				balloonend = 0;
			}
			if (balloonorder == 3)
			{
				msgsetloc(0, "Focusing Into&Her Blade, She&Will Create A&Neo Dark Fountain/%", "obj_gigaqueen_enemy_slash_Step_0_gml_66_0");
				ballooncon = 3;
				balloonend = 0;
			}
			if (balloonorder == 4)
			{
				msgsetloc(0, "Then, When The&Whole World Is&Covered In Darkness/%", "obj_gigaqueen_enemy_slash_Step_0_gml_67_0");
				ballooncon = 4;
				balloonend = 0;
			}
			if (balloonorder == 5)
			{
				msgsetloc(0, "Kris, Susie,&Why Don't You&Help Me Too?/%", "obj_gigaqueen_enemy_slash_Step_0_gml_68_0");
				ballooncon = 5;
				balloonend = 0;
			}
			if (balloonorder == 6)
			{
				msgsetloc(0, "Susie/%", "obj_gigaqueen_enemy_slash_Step_0_gml_69_0");
				ballooncon = 6;
				balloonend = 0;
			}
			if (balloonorder == 7)
			{
				msgsetloc(0, "And Kris, My&Dearest Trucie&You Can Have&As Many/%", "obj_gigaqueen_enemy_slash_Step_0_gml_70_0");
				ballooncon = 7;
				balloonend = 0;
			}
			if (balloonorder == 8)
			{
				msgsetloc(0, "Hey Was There&A Third&Guy?????????/%", "obj_gigaqueen_enemy_slash_Step_0_gml_71_0");
				ballooncon = 0;
				balloonend = 1;
			}
			if (balloonorder == 9)
			{
				msgsetloc(0, "Join Me And&All Of You&Will Become&Super Strong&And Cool/%", "obj_gigaqueen_enemy_slash_Step_0_gml_72_0");
				ballooncon = 9;
				balloonend = 0;
			}
			if (balloonorder == 10)
			{
				msgsetloc(0, "Okay I Believe&I've Made My Point&I'm Going To&Procedurally&Loop My Dialogue&Now/%", "obj_gigaqueen_enemy_slash_Step_0_gml_73_0");
				ballooncon = 0;
				balloonend = 1;
				balloonorder = -1;
			}
			balloonorder++;
		}
		if ((o_boxingcontroller.wireframe_boxing == 0 && o_boxinghud.sub_healthbar_count == 0) && o_boxingqueen.health_count <= (o_boxingqueen.health_count_max * 0.27))
		{
			breathattack = 0;
			if (finalconvcon == 0)
			{
				msgsetloc(0, "Kris&Susie&Other Guy/%", "obj_gigaqueen_enemy_slash_Step_0_gml_73_0_b");
				ballooncon = 14;
				balloonend = 0;
				finalconvcon = 1;
			}
			else if (finalconvcon == 1)
			{
				msgsetloc(0, "You Think You're&Finished?/%", "obj_gigaqueen_enemy_slash_Step_0_gml_74_0");
				ballooncon = 0;
				balloonend = 1;
				finalconvcon = 2;
			}
			else if (finalconvcon == 2)
			{
				msgsetloc(0, "I Have More Extremely&Slow Moving Obviously&Punchable Giant Baseballs&Where That One Came From/%", "obj_gigaqueen_enemy_slash_Step_0_gml_75_0");
				ballooncon = 0;
				balloonend = 1;
			}
		}
		scr_enemyblcon(o_boxingqueen.x - 40, o_boxingqueen.y - 185, 10);
		if (ballooncon == 0)
		{
			talked = 1;
			talktimer = 0;
		}
		else
		{
			talked = 0.6;
			talktimer = 0;
		}
	}
	if (talked == 0.6)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			if (ballooncon == 1)
			{
				msgsetloc(0, "Now Is The&Time To Fight&(Only)/%", "obj_gigaqueen_enemy_slash_Step_0_gml_106_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 2)
			{
				msgsetloc(0, "Her Own Will&Her Own&Determination/%", "obj_gigaqueen_enemy_slash_Step_0_gml_107_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 3)
			{
				msgsetloc(0, "Then Another,&Then Another/%", "obj_gigaqueen_enemy_slash_Step_0_gml_108_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 4)
			{
				msgsetloc(0, "She - And Everyone -&Can Live In Bliss,&Free Of Fear And&Suffering/%", "obj_gigaqueen_enemy_slash_Step_0_gml_109_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 5)
			{
				msgsetloc(0, "Create The World&Of Your Dreams&(Also My Dreams)/%", "obj_gigaqueen_enemy_slash_Step_0_gml_110_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 6)
			{
				msgsetloc(0, "Bro Just Let Me&Karate Chop You&And You Can Have&As Many Skateboards&As You Want/%", "obj_gigaqueen_enemy_slash_Step_0_gml_111_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 7)
			{
				msgsetloc(0, ".../%", "obj_gigaqueen_enemy_slash_Step_0_gml_113_0");
				ballooncon = 8;
				balloonend = 0;
			}
			else if (ballooncon == 8)
			{
				msgsetloc(0, "Okay I Don't&Remember What&You Liked/%", "obj_gigaqueen_enemy_slash_Step_0_gml_114_0_b");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 9)
			{
				msgsetloc(0, "Meanwhile I Don't&Need To Improve&Because I'm Already&Perfect And Can&Shoot Lasers From&My Fancy Glass/%", "obj_gigaqueen_enemy_slash_Step_0_gml_116_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 10)
			{
				msgsetloc(0, "Now Is The&Time To&(LOOPING ERROR)/%", "obj_gigaqueen_enemy_slash_Step_0_gml_118_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 11)
			{
				msgsetloc(0, "There Are&Keyboard Controls&Inside/%", "obj_gigaqueen_enemy_slash_Step_0_gml_120_0");
				ballooncon = 12;
				balloonend = 0;
			}
			else if (ballooncon == 12)
			{
				msgsetsubloc(0, "Press ~1&And ~2 To&Dodge ~3 And ~4&To Punch/%", scr_get_input_name(3), scr_get_input_name(1), scr_get_input_name(4), scr_get_input_name(5), "obj_gigaqueen_enemy_slash_Step_0_gml_121_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 13)
			{
				msgsetsubloc(0, "~1 And ~2 To&Punch/%", scr_get_input_name(4), scr_get_input_name(5), "obj_gigaqueen_enemy_slash_Step_0_gml_123_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 14)
			{
				msgsetsubloc(0, "You Have Truly&Proven Yourselves&To Be A Worthy&Opponent/%", "obj_gigaqueen_enemy_slash_Step_0_gml_121_0_b");
				ballooncon = 15;
				balloonend = 0;
			}
			else if (ballooncon == 15)
			{
				msgsetsubloc(0, "You Have Earned The&Right To Remember What&Your Fighting Machine's&True Purpose Is/%", "obj_gigaqueen_enemy_slash_Step_0_gml_122_0");
				ballooncon = 16;
				balloonend = 0;
			}
			else if (ballooncon == 16)
			{
				msgsetsubloc(0, "To Get Your Own&Ass Thrashed/%", "obj_gigaqueen_enemy_slash_Step_0_gml_123_0_b");
				ballooncon = 17;
				balloonend = 0;
			}
			else if (ballooncon == 17)
			{
				msgsetsubloc(0, "By Me/%", "obj_gigaqueen_enemy_slash_Step_0_gml_124_0_b");
				ballooncon = 18;
				balloonend = 0;
			}
			else if (ballooncon == 18)
			{
				msgsetsubloc(0, "With My Final Attack/%", "obj_gigaqueen_enemy_slash_Step_0_gml_125_0");
				ballooncon = 19;
				balloonend = 0;
			}
			else if (ballooncon == 19)
			{
				msgsetsubloc(0, "Ha Ha Bye/%", "obj_gigaqueen_enemy_slash_Step_0_gml_126_0");
				ballooncon = 0;
				balloonend = 1;
			}
			talked = 0.7;
			global.typer = 70;
			scr_enemyblcon(o_boxingqueen.x - 40, o_boxingqueen.y - 185, 10);
			alarm[6] = 1;
		}
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			talkedcon = 1;
		}
		if (talkedcon == 1)
		{
			rtimer = 0;
			scr_blconskip(-1);
			if ((missleattack == 1 && attacked == 0) || (breathattack == 1 && attacked == 0))
			{
				if (!instance_exists(obj_darkener))
					instance_create(0, 0, obj_darkener);
				if (!instance_exists(obj_growtangle))
				{
					instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 250, obj_growtangle);
					if (missleattack == 1)
					{
						obj_growtangle.maxxscale = 2;
						obj_growtangle.maxyscale = 2;
					}
					if (breathattack == 1)
					{
						obj_growtangle.maxxscale = 1.8;
						obj_growtangle.maxyscale = 2;
					}
				}
				if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart))
					scr_moveheart();
			}
		}
	}
	if (scr_isphase("bullets") && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 1)
		{
			if (missleattack == 1)
			{
				global.monsterattackname[myself] = "gigamissle";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 46;
				dc.target = mytarget;
				scr_turntimer(208);
			}
			else if (breathattack == 1)
			{
				global.monsterattackname[myself] = "gigabreath";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 47;
				dc.target = mytarget;
				scr_turntimer(200);
			}
			else
			{
				with (o_boxingcontroller)
				{
					event_user(0);
					attackintrocon = 2;
				}
				with (obj_battlecontroller)
				{
					gigaqueencon = 1;
					gigaqueentimer = 0;
				}
				scr_turntimer(999999);
			}
			missleattack = 0;
			breathattack = 0;
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3);
			if (rr == 0)
				global.battlemsg[0] = stringsetloc("* The cityscape roars past.", "obj_gigaqueen_enemy_slash_Step_0_gml_213_0");
			if (rr == 1 && o_boxinghud.sub_healthbar_count != 0)
				global.battlemsg[0] = stringsetloc("* The night is young for fighting.", "obj_gigaqueen_enemy_slash_Step_0_gml_214_0");
			if (rr == 1 && o_boxinghud.sub_healthbar_count == 0)
				global.battlemsg[0] = stringsetloc("* The battle is really heating up.", "obj_gigaqueen_enemy_slash_Step_0_gml_215_0");
			if (rr == 2)
				global.battlemsg[0] = stringsetloc("* Susie mashes the controls trying to punch more.", "obj_gigaqueen_enemy_slash_Step_0_gml_216_0");
			if (rr == 3)
				global.battlemsg[0] = stringsetloc("* Ralsei advises you to \"dodge, then counter punch.\"", "obj_gigaqueen_enemy_slash_Step_0_gml_217_0");
			if (irandom(100) < 5)
				global.battlemsg[0] = stringsetloc("* Smells like gigantic batteries.", "obj_gigaqueen_enemy_slash_Step_0_gml_218_0");
			if (haventusedspell == 1 && global.tension >= 150)
				global.battlemsg[0] = stringsetloc("* Your machine is charged up for special moves!", "obj_gigaqueen_enemy_slash_Step_0_gml_219_0");
			if (global.hp[1] < 50)
				global.battlemsg[0] = stringsetloc("* Your machine's inner lighting turns red.", "obj_gigaqueen_enemy_slash_Step_0_gml_220_0");
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
	if (acting == 1)
	{
		if (o_boxingcontroller.headsprite == spr_bhero_head_a)
			actpunchtext = stringsetloc("* FLAME MODE engaged!&* A power-boosting aura fired up...!/%", "obj_gigaqueen_enemy_slash_Step_0_gml_243_0");
		if (o_boxingcontroller.headsprite == spr_bhero_head_b)
			actpunchtext = stringsetloc("* SWORD MODE engaged!&* Damage grows until you miss!/%", "obj_gigaqueen_enemy_slash_Step_0_gml_248_0");
		if (o_boxingcontroller.headsprite == spr_bhero_head_c)
			actpunchtext = stringsetloc("* LASER MODE engaged!&* A light-quick aura fired up...!/%", "obj_gigaqueen_enemy_slash_Step_0_gml_253_0");
		if (o_boxingcontroller.headsprite == spr_bhero_head_d)
			actpunchtext = stringsetloc("* DUCK MODE engaged!&* A totally-sucking aura fired up...!/%", "obj_gigaqueen_enemy_slash_Step_0_gml_258_0");
		acting = 1.5;
		haventusedspell = 0;
		msgset(0, actpunchtext);
		scr_battletext_default();
		with (obj_event_manager)
			trigger_event((0 << 0), (19 << 0));
	}
	if (acting == 1.5 && !i_ex(obj_writer))
	{
		extradamage = 0;
		if (o_boxingcontroller.headsprite == spr_bhero_head_a)
		{
			o_boxingcontroller.specialcon = 1;
			extradamage = 30;
		}
		if (o_boxingcontroller.headsprite == spr_bhero_head_b)
		{
			o_boxingcontroller.specialcon = 2;
			extradamage = 10;
		}
		if (o_boxingcontroller.headsprite == spr_bhero_head_c)
			o_boxingcontroller.specialcon = 3;
		if (o_boxingcontroller.headsprite == spr_bhero_head_d)
		{
			o_boxingcontroller.specialcon = 4;
			extradamage = -30;
		}
		snd_play(snd_cardrive);
		acting = 4;
		alarm[5] = 30;
	}
	if (acting == 5 && o_boxingcontroller.specialcon == 0 && !i_ex(obj_writer))
	{
		acting = 7;
		o_boxingcontroller.punchcon = 1;
		o_boxingcontroller.damageoverride = round((global.battleat[0] * 300) / 20) + extradamage;
		if (o_boxingcontroller.headsprite == spr_bhero_head_d)
			o_boxingcontroller.healoverride = 35;
	}
	if (acting == 7 && o_boxingcontroller.punchcon == 0)
	{
		actcon = 1;
		acting = 0;
	}
	if (acting == 2)
	{
		o_boxingcontroller.specialcon = 5;
		snd_play(snd_cardrive);
		msgsetloc(0, "* TURBODODGE engaged!&* A dodge-enhancing aura fired up...!/%", "obj_gigaqueen_enemy_slash_Step_0_gml_309_0");
		scr_battletext_default();
		haventusedspell = 0;
		acting = 0;
		actcon = 1;
		with (obj_event_manager)
			trigger_event((0 << 0), (19 << 0));
	}
	if (acting == 3)
	{
		o_boxingcontroller.specialcon = 6;
		snd_play(snd_cardrive);
		if (healcount > 2)
			msgsetloc(0, "* SELF-FIX engaged!&* A healing aura fired up...!/%", "obj_gigaqueen_enemy_slash_Step_0_gml_320_0");
		else
			msgsetloc(0, "* SELF-FIX engaged!&* A healing aura fired up...!&* (But, the TP cost increased!)/%", "obj_gigaqueen_enemy_slash_Step_0_gml_321_0");
		scr_battletext_default();
		haventusedspell = 0;
		healcount++;
		if (healcount == 1)
			global.actcost[myself][2] = 75;
		if (healcount == 2)
			global.actcost[myself][2] = 100;
		if (healcount == 3)
			global.actcost[myself][2] = 125;
		scr_spellmenu_setup();
		acting = 0;
		actcon = 1;
	}
	if (actcon == 1 && acting == 0 && !instance_exists(obj_writer))
	{
		actcon = 0;
		o_boxingcontroller.acttoenemytalktransition = 1;
		scr_nextact();
	}
}
