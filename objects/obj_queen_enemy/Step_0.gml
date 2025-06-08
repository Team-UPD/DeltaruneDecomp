if (global.monster[myself] == 1)
{
	if (actcon == 36 && alarm[4] > 17)
	{
		siner2 = 0;
	}
	else
	{
		siner2++;
		y += sin(siner2 / 8);
	}
	if (endcon == 0)
	{
		if (instance_exists(obj_queen_battlesolid_wine) || instance_exists(obj_queen_wineglass) || instance_exists(obj_queenshield_intro))
			idlesprite = spr_queen_chair_1_battle;
		else
			idlesprite = spr_queen_chair_1_old;
	}
	if (init == 0)
	{
		init = 1;
		global.typer = 70;
		global.charturn = 3;
		msgsetloc(0, "Ah My Sweet&Idiot Children/%", "obj_queen_enemy_slash_Step_0_gml_12_0");
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
		ballooncon = 15;
		balloonend = 0;
		talked = 0.6;
		talktimer = 0;
	}
	if (instance_exists(obj_queenshield_enemy))
	{
		obj_queenshield_enemy.queenhandx = x + 32;
		obj_queenshield_enemy.queenhandy = y + 10;
	}
	if (shieldbrokecon == 1)
	{
		if (scr_sideb_get_phase() < 1)
		{
			var a = choose(0, 1, 2);
			if (a == 0)
				snd_play(snd_queen_hoot_0);
			if (a == 1)
				snd_play(snd_queen_hoot_1);
			if (a == 2)
				snd_play(snd_queen_hoot_2);
		}
		if (shieldjustbroke == 1)
			shieldjustbroke = 0;
		sprite_index = spr_queen_hurt;
		if (hspeed == 0)
		{
			hspeed = 20;
			x = xstart;
			remx = x;
		}
		else
		{
			if (hspeed < 0)
				hspeed = 0;
			hspeed += 20;
			if (hspeed > 28)
				hspeed = 28;
		}
		image_speed = 0.4;
		shieldbrokecon = 2;
	}
	if (shieldbrokecon == 2)
	{
		hspeed -= 2;
		if (x <= (remx - hspeed) && hspeed < -5)
		{
			x = remx;
			shieldbrokecon = 0;
			hspeed = 0;
			sprite_index = spr_queen_drunk;
			image_speed = 0.16666666666666666;
		}
	}
	if (wineglasscon == 1)
	{
		with (obj_queenshield_enemy)
			appearcon = 2;
		with (obj_queen_battlesolid_wine)
			instance_destroy();
		wineglass = instance_create(x + 29, y + 10, obj_queen_battlesolid_wine);
		obj_queen_battlesolid_wine.nofill = 1;
		instance_create(x + 10, y, obj_queen_wine_shine);
		winetimer = 0;
		wineglasscon = 2;
		sprite_index = spr_queen_throw_wineglass;
	}
	if (wineglasscon == 2)
	{
		wineglass.y += sin(siner2 / 8);
		winetimer++;
		if (winetimer >= 30)
		{
			wineglass._idealx = camerax() + 320;
			wineglass._idealy = cameray() + 228;
			wineglass._remx = wineglass.x;
			wineglass._remy = wineglass.y;
			sprite_index = spr_queen_drunk;
			image_speed = 0.16666666666666666;
			wineglasscon = 3;
			winetimer = 0;
		}
	}
	if (wineglasscon == 3)
	{
		winetimer++;
		var movetimer = winetimer;
		with (wineglass)
		{
			after = instance_create(x, y, obj_afterimage);
			after.x = x;
			after.y = y;
			after.image_speed = 0;
			after.image_xscale = image_xscale;
			after.image_yscale = image_yscale;
			after.sprite_index = sprite_index;
			after.depth = depth + 1;
			after.image_blend = c_lime;
			x = lerp(_remx, _idealx, movetimer / 15);
			y = lerp(_remy, _idealy, movetimer / 15);
			image_xscale = lerp(0.4, 2, movetimer / 15);
			image_yscale = lerp(0.6, 2, movetimer / 15);
		}
		if (winetimer >= 15)
		{
			wineglasscon = 0;
			with (obj_queen_bulletcontroller)
				init = 3;
			with (obj_queen_wineglass)
				visible = true;
			with (obj_queen_battlesolid_wine)
				instance_destroy();
		}
	}
	if (wineglasscon == 10)
	{
		winetimer++;
		sprite_index = spr_queen_throw_wineglass;
		if (winetimer == 1)
		{
			if (!instance_exists(obj_queen_battlesolid_wine))
				wineglass = instance_create(x + 35, y + 13, obj_queen_battlesolid_wine);
			obj_queen_battlesolid_wine.image_angle = -20;
		}
		if (winetimer <= 15)
		{
			instance_create(x + 35, y + 13, obj_queen_drink_droplet);
			droplet = instance_create(x + 35, y + 13, obj_queen_drink_droplet);
			droplet.offset = 0.033;
		}
		if (winetimer == 25)
		{
			wineglasscon = 0;
			obj_queen_battlesolid_wine.image_angle = 0;
			sprite_index = spr_queen_chair_1_old;
		}
	}
	if (intro == 2 && !i_ex(obj_writer))
	{
		intro = 0;
		global.charturn = 0;
	}
	global.mercymod[myself] = 0;
	if (i_ex(obj_battlecontroller))
	{
		if (y > (cameray() + 100))
			depth = obj_battlecontroller.depth + 1;
		else
			depth = obj_battlecontroller.depth - 1;
	}
	if (instance_exists(obj_berdlyplug_enemy))
		event_user(1);
	if (scr_isphase("enemytalk") && talked == 0 && turn > 14)
	{
		if (global.monsterdf[myself] > -25)
			global.monsterdf[myself] -= 5;
	}
	if ((scr_isphase("enemytalk") && talked == 0 && global.monsterhp[myself] <= 0) || (scr_isphase("enemytalk") && talked == 0 && bardlymercy > 99) || (talked == -1 && endcon == 0))
	{
		talked = -1;
		wintimer++;
		if (bardlymercy > 99)
		{
			if (wintimer == 1)
				sprite_index = spr_queen_chair_1_old;
			if (wintimer == 90)
				endcon = 1;
		}
		else
		{
			if (wintimer == 30)
				sprite_index = spr_queen_chair_1_old;
			if (wintimer == 90)
				endcon = 1;
		}
	}
	if (scr_isphase("enemytalk") && talked == 0)
	{
		with (obj_queen_enemy)
			event_user(2);
	}
	if (scr_isphase("enemytalk") && talked == 0 && instance_exists(obj_queenshield_enemy))
	{
		alarm[5] = 30;
		talked = 0.4;
		if (shieldhp <= 5 || shieldacthp < 1)
		{
			with (obj_queenshield_enemy)
			{
				shieldhurt = 2;
				shieldhurttimer = 0;
			}
			with (obj_queen_battlesolid_wine)
				instance_destroy();
			if (shieldhp <= 5 || shieldacthp < 1)
			{
				shieldhp = 0;
				shieldbrokecon = 1;
				shieldjustbroke = 1;
				sprite_index = spr_queen_drunk;
				snd_play(snd_queen_hoot_0);
			}
			if (phase == 4)
				usefinalattack = 1;
			shieldjustwentdown = 1;
		}
		else
		{
			with (obj_queenshield_enemy)
				appearcon = 2;
		}
	}
	if (scr_isphase("enemytalk") && talked == 0)
	{
		talked = 0.5;
		if (instance_exists(obj_queenshield_enemy))
		{
			obj_queenshield_enemy.turn++;
			if (obj_queenshield_enemy.turn > 1)
			{
				if (shieldhp > 0)
					shieldhp -= ceil(shieldmaxhp * 0.1);
			}
		}
	}
	if (scr_isphase("enemytalk") && talked == 0.5)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		if (aimact > 0)
			aimact -= 1;
		with (obj_heartmarker)
			instance_destroy();
		sprite_index = spr_queen_chair_1_old;
		state = 0;
		ballooncon = 0;
		balloonsubcon = 0;
		balloonend = 1;
		talkedcon = 0;
		ralseitalks = 0;
		susietalks = 0;
		attackdone = 0;
		rr = choose(0, 1, 2, 3);
		if (rr == 0)
			msgsetloc(0, "(Regal Laughter)/%", "obj_queen_enemy_slash_Step_0_gml_123_0");
		if (rr == 1)
			msgsetloc(0, "Enjoy Your:&Destruction/%", "obj_queen_enemy_slash_Step_0_gml_124_0");
		if (rr == 2)
			msgsetloc(0, "I'm Computer/%", "obj_queen_enemy_slash_Step_0_gml_125_0");
		if (rr == 3)
			msgsetloc(0, "Perish Under&My Bosom Or&Whatever/%", "obj_queen_enemy_slash_Step_0_gml_126_0");
		if (usefinalattack >= 1 && finalattackdialoguecon < 5)
		{
			if (finalattackdialoguecon == 0)
			{
				msgsetloc(0, "Enough You Foolish&Children!/%", "obj_queen_enemy_slash_Step_0_gml_328_0");
				ballooncon = 22;
				balloonend = 0;
			}
			if (finalattackdialoguecon == 1)
				msgsetloc(0, "So That Final Move&Was Supposed To Be&Cooler But The&Internet Is Down/%", "obj_queen_enemy_slash_Step_0_gml_329_0_b");
			if (finalattackdialoguecon == 2)
			{
				msgsetloc(0, "Yeah My Final&Attack Like/%", "obj_queen_enemy_slash_Step_0_gml_329_0");
				ballooncon = 25;
				balloonend = 0;
			}
			if (finalattackdialoguecon == 3)
				msgsetloc(0, "It Would Have Been&A Really Sick&Final Attack Kris&You Would Have&Loved It/%", "obj_queen_enemy_slash_Step_0_gml_330_0");
			if (finalattackdialoguecon == 4)
				msgsetloc(0, "Yeah Still Thinking&About That Move&HashtagFinalAttack/%", "obj_queen_enemy_slash_Step_0_gml_331_0");
			finalattackdialoguecon++;
			if (balloonorder < 14)
				balloonorder = 14;
		}
		else if (drunk == 1 && drunkcount == 0 && balloonorder > 13)
		{
			drunkcount = 1;
			msgsetloc(0, "Guys I Think I&Drank Too Much Of&This Battery Acid&(Ages 3 And Up)/%", "obj_queen_enemy_slash_Step_0_gml_128_0");
		}
		else
		{
			if (balloonorder == 0)
			{
				msgsetloc(0, "Queen,&think of the&Lightners!/%", "obj_queen_enemy_slash_Step_0_gml_131_0");
				ballooncon = 1;
				balloonend = 0;
				ralseitalks = 1;
			}
			if (balloonorder == 1)
				msgsetloc(0, "Think! Lightners&Have Already Been&Enslaved By Me&And My Kin/%", "obj_queen_enemy_slash_Step_0_gml_132_0");
			if (balloonorder == 2)
			{
				msgsetloc(0, "Each Day They&Spend Hours&Worshipping&In Glowing Rapture/%", "obj_queen_enemy_slash_Step_0_gml_133_0");
				ballooncon = 3;
				balloonend = 0;
			}
			if (balloonorder == 3)
			{
				msgsetloc(0, "Staring, Tapping,&To Receive Joy/%", "obj_queen_enemy_slash_Step_0_gml_134_0");
				ballooncon = 4;
				balloonend = 0;
			}
			if (balloonorder == 4)
			{
				msgsetloc(0, "... Until Recently,&When The Town's&Internet Disappeared/%", "obj_queen_enemy_slash_Step_0_gml_135_0");
				ballooncon = 5;
				balloonend = 0;
			}
			if (balloonorder == 5)
			{
				msgsetloc(0, "Noelle...&Then Who Will&Help Her?/%", "obj_queen_enemy_slash_Step_0_gml_136_0");
				ballooncon = 6;
				balloonend = 0;
			}
			if (balloonorder == 6)
			{
				msgsetloc(0, "Is What I&Wondered, Until&The KNIGHT&appeared.../%", "obj_queen_enemy_slash_Step_0_gml_137_0");
				ballooncon = 8;
				balloonend = 0;
			}
			if (balloonorder == 7)
			{
				msgsetloc(0, "Now, The&Path Is Clear/%", "obj_queen_enemy_slash_Step_0_gml_138_0");
				ballooncon = 9;
				balloonend = 0;
			}
			if (balloonorder == 8)
			{
				msgsetloc(0, "Then With&The World&Covered In&Darkness/%", "obj_queen_enemy_slash_Step_0_gml_139_0");
				ballooncon = 10;
				balloonend = 0;
			}
			if (balloonorder == 9)
			{
				msgsetloc(0, "Instead, Everyone&Can Live In&My Perfect Mansion/%", "obj_queen_enemy_slash_Step_0_gml_140_0");
				ballooncon = 11;
				balloonend = 0;
			}
			if (balloonorder == 10)
				msgsetloc(0, "Now, Stop Resisting&And Welcome The&New Age Of Darkness/%", "obj_queen_enemy_slash_Step_0_gml_141_0");
			if (balloonorder == 11)
			{
				msgsetloc(0, "We won't let&you control&everyone with&your wires!/%", "obj_queen_enemy_slash_Step_0_gml_142_0");
				ballooncon = 12;
				balloonend = 0;
				ralseitalks = 1;
			}
			if (balloonorder == 12)
			{
				msgsetloc(0, "Uhh, you're&literally&controlling&Berdly now./%", "obj_queen_enemy_slash_Step_0_gml_143_0");
				ballooncon = 13;
				balloonend = 0;
				susietalks = 1;
			}
			if (balloonorder == 13)
			{
				msgsetloc(0, "Why Did You&Want One/%", "obj_queen_enemy_slash_Step_0_gml_146_0");
				ballooncon = 14;
				balloonend = 0;
				instance_create(camerax() + 200, cameray() - 30, obj_queen_battle_plug);
				instance_create(camerax() + 300, cameray() - 30, obj_queen_battle_plug);
				instance_create(camerax() + 400, cameray() - 30, obj_queen_battle_plug);
			}
			balloonorder++;
		}
		if (scr_sideb_get_phase() < 2)
			global.typer = 70;
		else
			global.typer = 71;
		if (ralseitalks == 1 && instance_exists(obj_heroralsei))
		{
			global.typer = 74;
			scr_enemyblcon(obj_heroralsei.x + 75, obj_heroralsei.y + 15, 7);
			scr_guardpeek(obj_heroralsei);
		}
		else if (susietalks == 1 && instance_exists(obj_herosusie))
		{
			global.typer = 75;
			scr_enemyblcon(obj_herosusie.x + 75, obj_herosusie.y + 15, 7);
			scr_guardpeek(obj_herosusie);
		}
		else
		{
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		ralseitalks = 0;
		susietalks = 0;
		drunk = 0;
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
		if ((button3_p() && talktimer > 15 && susieinterrupts == 0) || !i_ex(obj_writer) || (susieinterrupts == 1 && talktimer > 15))
		{
			with (obj_writer)
				instance_destroy();
			if (ballooncon == 1)
			{
				msgsetloc(0, "Aren't we&supposed to&make them&happy?/%", "obj_queen_enemy_slash_Step_0_gml_183_0");
				ballooncon = 2;
				ralseitalks = 1;
			}
			else if (ballooncon == 2)
			{
				msgsetloc(0, "Is That Not&What I Am Doing?/%", "obj_queen_enemy_slash_Step_0_gml_184_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 3)
			{
				msgsetloc(0, "Our Screens Of&Funny Animals And&Candied Games/%", "obj_queen_enemy_slash_Step_0_gml_186_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 4)
			{
				msgsetloc(0, "Staring, Tapping,&To Avoid Pain/%", "obj_queen_enemy_slash_Step_0_gml_188_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 5)
			{
				msgsetloc(0, "Now The Refuge&They Take In&The Screens Will&Slowly Fade/%", "obj_queen_enemy_slash_Step_0_gml_190_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 6)
			{
				msgsetloc(0, "Her Strange&And Sad Searches/%", "obj_queen_enemy_slash_Step_0_gml_192_0");
				ballooncon = 7;
			}
			else if (ballooncon == 7)
			{
				msgsetloc(0, "Who Will&Answer Them?/%", "obj_queen_enemy_slash_Step_0_gml_193_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 8)
			{
				msgsetloc(0, "And Created&This Wonderful&World Of&Darkness/%", "obj_queen_enemy_slash_Step_0_gml_195_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 9)
			{
				msgsetloc(0, "All I Have&To Do Is Expand&This Dark World/%", "obj_queen_enemy_slash_Step_0_gml_197_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 10)
			{
				msgsetloc(0, "No One Will&Have To Suffer&Anymore/%", "obj_queen_enemy_slash_Step_0_gml_199_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 11)
			{
				msgsetloc(0, "Everyday Blissfully&Worshipping Me&Like We Both Deserve/%", "obj_queen_enemy_slash_Step_0_gml_201_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 12)
			{
				msgsetloc(0, "Woah When&Did I Say&I Would Do&That/%", "obj_queen_enemy_slash_Step_0_gml_203_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 13)
			{
				msgsetloc(0, "Oh Yeah&That's Just&For Him Only/%", "obj_queen_enemy_slash_Step_0_gml_205_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 14)
			{
				msgsetloc(0, "No!!!!/%", "obj_queen_enemy_slash_Step_0_gml_207_0");
				ballooncon = 0;
				balloonend = 1;
				susietalks = 1;
				with (obj_queen_battle_plug)
					con = 2;
			}
			else if (ballooncon == 15)
			{
				msgsetloc(0, "You Are Just In&Time To Witness&My World Domination/%", "obj_queen_enemy_slash_Step_0_gml_212_0");
				ballooncon = 16;
			}
			else if (ballooncon == 16)
			{
				msgsetloc(0, "With Noelle In&My Possession/%", "obj_queen_enemy_slash_Step_0_gml_213_0");
				ballooncon = 17;
			}
			else if (ballooncon == 17)
			{
				msgsetloc(0, "It Is Only A&Matter Of Time&Before Her&Will Turns/%", "obj_queen_enemy_slash_Step_0_gml_214_0");
				ballooncon = 18;
			}
			else if (ballooncon == 18)
			{
				msgsetloc(0, "And She&Unleashes Her&Power/%", "obj_queen_enemy_slash_Step_0_gml_215_0");
				ballooncon = 19;
			}
			else if (ballooncon == 19)
			{
				msgsetloc(0, "Blanketing The&World In --/%", "obj_queen_enemy_slash_Step_0_gml_216_0");
				ballooncon = 20;
				susieinterrupts = 1;
			}
			else if (ballooncon == 20)
			{
				msgsetloc(0, "Too late,&dumbass!/%", "obj_queen_enemy_slash_Step_0_gml_218_0");
				ballooncon = 21;
				susietalks = 1;
				susieinterrupts = 0;
			}
			else if (ballooncon == 21)
			{
				msgsetloc(0, "Noelle's&with Berdly!/%", "obj_queen_enemy_slash_Step_0_gml_219_0");
				ballooncon = 0;
				balloonend = 1;
				susietalks = 1;
			}
			else if (ballooncon == 22)
			{
				msgsetloc(0, "You May Have&Survived My&Attacks (Regular)/%", "obj_queen_enemy_slash_Step_0_gml_432_0");
				ballooncon = 23;
			}
			else if (ballooncon == 23)
			{
				msgsetloc(0, "But I've Been:&Secretly Been&Downloading My&Ultimate Move&The Whole Time/%", "obj_queen_enemy_slash_Step_0_gml_433_0");
				ballooncon = 24;
			}
			else if (ballooncon == 24)
			{
				msgsetloc(0, "Now, Perish&In The Bosom Of:&My Hellish Reign/%", "obj_queen_enemy_slash_Step_0_gml_434_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (ballooncon == 25)
			{
				msgsetloc(0, "I Was Going To Put&Like Memes In It&And Stuff/%", "obj_queen_enemy_slash_Step_0_gml_436_0");
				ballooncon = 0;
				balloonend = 1;
			}
			talked = 0.7;
			if (scr_sideb_get_phase() < 2)
				global.typer = 70;
			else
				global.typer = 71;
			if (ralseitalks == 1 && instance_exists(obj_heroralsei))
			{
				global.typer = 74;
				scr_heroblcon("ralsei");
				scr_guardpeek(obj_heroralsei);
			}
			else if (susietalks == 1 && instance_exists(obj_herosusie))
			{
				global.typer = 75;
				scr_heroblcon("susie");
				scr_guardpeek(obj_herosusie);
			}
			else
			{
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
			}
			ralseitalks = 0;
			susietalks = 0;
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
			if (scr_isphase("bullets"))
			{
				if (rtimer == 0 && attackdone == 0)
				{
					attackdone = 1;
					if (attackdebug < 0)
						event_user(0);
					else
						rr = attackdebug;
					if (difficultydebug != 0)
						difficulty = difficultydebug;
					if (!instance_exists(obj_growtangle))
					{
						if (rr == 1)
						{
							instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 200, obj_growtangle);
						}
						else if (rr == 5)
						{
							instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 237, obj_growtangle);
						}
						else if (rr == 7)
						{
							instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 200, obj_growtangle);
							obj_growtangle.maxxscale = 2;
							obj_growtangle.maxyscale = 1.5;
						}
						else if (rr == 9)
						{
							instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 200, obj_growtangle);
							if (difficulty == 1)
							{
								obj_growtangle.maxxscale = 1.5;
								obj_growtangle.maxyscale = 2;
							}
						}
						else
						{
							instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
						}
					}
					if (rr == 2)
					{
						obj_growtangle.sprite_index = spr_nothing;
						obj_growtangle.visible = false;
					}
				}
				if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart) && rr != 2)
					scr_moveheart();
			}
		}
	}
	if (scr_isphase("bullets") && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 16)
		{
			switch (rr)
			{
				case 0:
					global.monsterattackname[myself] = "ImageSearch";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 0;
					dc.special = difficulty;
					scr_turntimer(300);
					break;
				case 1:
					global.monsterattackname[myself] = "QueenUltimate";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 1;
					if (ultimateattackused == 0)
						scr_turntimer(371);
					if (ultimateattackused == 1)
						scr_turntimer(311);
					break;
				case 2:
					global.monsterattackname[myself] = "Wine";
					with (obj_queen_enemy)
					{
						wineglasscon = 1;
						drink = 0;
					}
					shieldjustwentup = 1;
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 2;
					dc.bufferattack = bufferattack;
					if (difficulty == 1)
						dc.type = 2.1;
					if (difficulty == 2)
						dc.type = 2.2;
					scr_turntimer(400);
					break;
				case 3:
					global.monsterattackname[myself] = "Stomp";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 3;
					dc.bufferattack = bufferattack;
					scr_turntimer(240);
					if (difficulty == 1)
						dc.type = 3.1;
					if (difficulty == 2)
						dc.type = 3.2;
					if (difficulty == 3)
					{
						dc.type = 3.3;
						scr_turntimer(190);
					}
					if (difficulty == 4)
						dc.type = 3.4;
					break;
				case 4:
					global.monsterattackname[myself] = "NewSocialMedia";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 106;
					dc.bufferattack = bufferattack;
					scr_turntimer(250);
					if (difficulty == 1)
					{
						dc.type = 107;
						scr_turntimer(300);
					}
					if (difficulty == 2)
					{
						dc.type = 105;
						scr_turntimer(300);
					}
					break;
				case 5:
					global.monsterattackname[myself] = "Bufferbullet";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 5;
					dc.bufferattack = bufferattack;
					scr_turntimer(300);
					break;
				case 6:
					global.monsterattackname[myself] = "Explosion";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 6;
					dc.bufferattack = bufferattack;
					if (difficulty == 1)
						dc.type = 6.1;
					scr_turntimer(300);
					break;
				case 7:
					if (difficulty == 0)
					{
						global.monsterattackname[myself] = "BerdlyTornado";
						dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
						dc.type = 112;
					}
					if (difficulty == 1)
					{
						global.monsterattackname[myself] = "BerdlyTornado";
						dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
						dc.type = 113;
					}
					if (difficulty == 2)
					{
						global.monsterattackname[myself] = "BerdlyFeather";
						dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
						dc.type = 7;
					}
					if (difficulty == 3)
					{
						global.monsterattackname[myself] = "BerdlyFeather";
						dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
						dc.type = 7.5;
					}
					scr_turntimer(266);
					break;
				case 8:
					global.monsterattackname[myself] = "QueenLaser";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 100;
					dc.bufferattack = bufferattack;
					if (difficulty == 1)
						dc.type = 101;
					if (difficulty == 2)
						dc.type = 102;
					if (difficulty == 3)
						dc.type = 114;
					if (difficulty == 4)
						dc.type = 115;
					if (difficulty == 5)
						dc.type = 116;
					scr_turntimer(245);
					break;
				case 9:
					global.monsterattackname[myself] = "Plug";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.bufferattack = bufferattack;
					dc.damage = global.monsterat[obj_queen_enemy.myself] * 5;
					dc.target = mytarget;
					if (difficulty == 0)
						dc.type = 110;
					if (difficulty == 1)
						dc.type = 111;
					scr_turntimer(300);
					break;
				case 10:
					global.monsterattackname[myself] = "Birthday";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = 8;
					dc.special = 5;
					dc.bufferattack = bufferattack;
					scr_turntimer(300);
					break;
				default:
					global.monsterattackname[myself] = "Unknown";
					dc = scr_bulletspawner(x, y, obj_queen_bulletcontroller);
					dc.type = rr;
					dc.bufferattack = bufferattack;
					scr_turntimer(300);
			}
			if (rr != 7 && instance_exists(obj_berdlyplug_enemy))
				obj_berdlyplug_enemy.alphacon = 1;
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3);
			if (rr == 0)
				global.battlemsg[0] = stringsetloc("* The skyline echoes with regal laughter.", "obj_queen_enemy_slash_Step_0_gml_462_0");
			if (rr == 1)
				global.battlemsg[0] = stringsetloc("* The fountain flows ominously.", "obj_queen_enemy_slash_Step_0_gml_463_0");
			if (rr == 2)
				global.battlemsg[0] = stringsetloc("* The battlefield feels electric.", "obj_queen_enemy_slash_Step_0_gml_464_0");
			if (rr == 3)
				global.battlemsg[0] = stringsetloc("* Smells like overclocked high heels.", "obj_queen_enemy_slash_Step_0_gml_465_0");
			if (shieldjustwentdown == 1)
				global.battlemsg[0] = stringsetloc("* Queen's acid shield is down!", "obj_queen_enemy_slash_Step_0_gml_467_0");
			if (shieldjustwentup == 1)
				global.battlemsg[0] = stringsetloc("* Queen's acid shield is formed!", "obj_queen_enemy_slash_Step_0_gml_468_0");
			shieldjustwentdown = 0;
			shieldjustwentup = 0;
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
	var xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	var shieldbreaking = 0;
	if (instance_exists(obj_queenshield_enemy) && obj_queenshield_enemy.shieldhurt == 2)
		shieldbreaking = 1;
	if (!instance_exists(obj_queenshield_enemy) || shieldbreaking == 1)
	{
		if (acting == 4)
			acting = 5;
		else if (acting == 5)
			acting = 6;
	}
	else if (acting == 3)
	{
		acting = 5;
	}
	else if (acting == 4)
	{
		acting = 6;
	}
	if (acting == 1 && actcon == 0 && !instance_exists(obj_berdlyplug_enemy))
	{
		actcon = 1;
		msgsetloc(0, "* QUEEN - Her drinking glass generates a powerful barrier. Break or lower it!/%", "obj_queen_enemy_slash_Step_0_gml_338_0");
		scr_battletext_default();
	}
	if (acting == 1 && actcon == 0 && instance_exists(obj_berdlyplug_enemy))
	{
		if (!instance_exists(obj_queenshield_enemy))
		{
			msgsetloc(0, "* You shook Berdly's wire!/%", "obj_queen_enemy_slash_Step_0_gml_346_0");
			scr_battletext_default();
			var mercyset = 5;
			if (global.hp[2] <= 0 && global.hp[3] <= 0)
				mercyset = 8;
			if ((mercyset + bardlymercy) > 100)
				mercyset = 100 - bardlymercy;
			bardlymercy += mercyset;
			__mercydmgwriter = instance_create(obj_berdlyplug_enemy.x + 20, (obj_berdlyplug_enemy.y + 20) - (global.hittarget[0] * 20), obj_dmgwriter);
			__mercydmgwriter.damage = mercyset;
			__mercydmgwriter.type = 5;
			with (obj_berdlyplug_enemy)
				event_user(0);
			with (obj_dmgwriter)
			{
				x = obj_berdlyplug_enemy.x;
				y = obj_berdlyplug_enemy.y + 20;
			}
			obj_dmgwriter.depth = obj_queen_enemy.depth - 1;
			actcon = 1;
		}
		else
		{
			shield_damage_buffer += 1;
			if (global.hp[2] <= 0 && global.hp[3] <= 0)
				shield_damage_buffer += 1.5;
			if (krisflattercount == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* You made a memorable and charming toast to Queen!/", "obj_queen_enemy_slash_Step_0_gml_764_0");
				scr_anyface_next("queen", "1");
				var small_text = stringsetloc("(Why did they make it so emotional?)", "obj_queen_enemy_slash_Step_0_gml_766_0");
				if (jp == 0)
					scr_smallface(0, "susie", 6, 338, 46, small_text);
				if (jp == 1)
					scr_smallface(0, "susie", 6, 458, 46, small_text);
				msgnextloc("\\EC* Wow Spoken Like A Real Trucie\\f0 /%", "obj_queen_enemy_slash_Step_0_gml_768_0");
				scr_battletext_default();
				waitnextactsusie = 1;
				waitnextactralsei = 1;
				if (actingsus == 1 && susieflattercount > 0 && actingral == 1 && ralseiflattercount > 0)
					changesimulorder = 1;
				if (actingsus == 1 && susieflattercount == 0 && actingral == 1 && ralseiflattercount > 0)
					changesimulorder = 2;
				if (actingsus == 0 && actingral == 1 && ralseiflattercount > 0)
					changesimulorder = 2;
				if (actingral == 0 && actingsus == 1 && susieflattercount > 0)
					changesimulorder = 5;
			}
			else
			{
				var aa = 0;
				if (actingsus == 1 && susieflattercount == 0 && actingral == 1 && ralseiflattercount == 0)
					aa = 1;
				if (actingral != 1 && actingsus == 1 && susieflattercount == 0)
					aa = 1;
				if (actingsus != 1 && actingral == 1 && ralseiflattercount == 0)
					aa = 1;
				if (simultotal == 1 || aa == 1)
				{
					msgsetloc(0, "* You made a memorable and charming toast to Queen!/%", "obj_queen_enemy_slash_Step_0_gml_788_0");
					scr_battletext_default();
					if (actingsus == 1 && susieflattercount == 0)
						waitnextactsusie = 1;
					if (actingral == 1 && ralseiflattercount == 0)
						waitnextactralsei = 1;
					if (actingsus == 1 && susieflattercount == 0 && actingral == 1 && ralseiflattercount > 0)
						changesimulorder = 3;
				}
				else
				{
					if (actingsus == 1 && susieflattercount == 0)
						waitnextactsusie = 1;
					if (actingral == 1 && ralseiflattercount == 0)
						waitnextactralsei = 1;
					if (actingsus == 1 && susieflattercount == 0 && actingral == 1 && ralseiflattercount > 0)
						changesimulorder = 3;
					msgsetloc(0, "* You toasted Queen!/%", "obj_queen_enemy_slash_Step_0_gml_803_0");
					scr_simultext("kris");
				}
			}
			krisflattercount++;
			acting = 100;
		}
	}
	if (acting == 2 && actcon == 0)
	{
		if (!instance_exists(obj_queenshield_enemy))
		{
			msgsetloc(0, "* Everyone loosens Berdly!/%", "obj_queen_enemy_slash_Step_0_gml_371_0");
			scr_battletext_default();
			var mercyset = 15;
			if ((mercyset + bardlymercy) > 100)
				mercyset = 100 - bardlymercy;
			bardlymercy += mercyset;
			__mercydmgwriter = instance_create(obj_berdlyplug_enemy.x + 20, (obj_berdlyplug_enemy.y + 20) - (global.hittarget[0] * 20), obj_dmgwriter);
			__mercydmgwriter.damage = mercyset;
			__mercydmgwriter.type = 5;
			with (obj_berdlyplug_enemy)
				event_user(0);
			with (obj_dmgwriter)
			{
				x = obj_berdlyplug_enemy.x;
				y = obj_berdlyplug_enemy.y + 20;
			}
			obj_dmgwriter.depth = obj_queen_enemy.depth - 1;
			actcon = 1;
		}
		else
		{
			shield_damage_buffer += 3;
			if (groupflattercount == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\EF* (That glass of acid is generating her shield!)/", "obj_queen_enemy_slash_Step_0_gml_840_0");
				scr_anyface_next("susie", "1");
				msgnextloc("\\E3* So, uh... you gonna drink all that?/", "obj_queen_enemy_slash_Step_0_gml_842_0");
				scr_anyface_next("queen", "1");
				msgnextloc("\\E6* No This Is All Mine You Can't Have It/%", "obj_queen_enemy_slash_Step_0_gml_844_0");
				scr_battletext();
			}
			else
			{
				msgsetloc(0, "* Everyone toasted to Queen!/%", "obj_queen_enemy_slash_Step_0_gml_384_0");
				scr_battletext_default();
			}
			groupflattercount++;
			acting = 100;
		}
	}
	if ((acting == 3 && actcon == 0) || (acting == 4 && actcon == 0))
	{
		if (acting == 3)
			throwX = 0;
		if (acting == 4)
			throwX = 1;
		actcon = 32;
		acting = 0;
		alarm[4] = 15;
		___myrememberx = xstart;
		___myremembery = ystart;
		siner = 0;
		if (!instance_exists(obj_queenshield_enemy))
		{
			obj_berdlyplug_enemy.con = 1;
			instance_create(__view_get(e__VW.XView, 0) + 380, __view_get(e__VW.YView, 0) + 50, obj_queen_throw_controller);
			scr_move_to_point_over_time(x - 40, cameray() + 195, 8);
		}
	}
	if (acting == 5 && actcon == 0)
	{
		global.msg[0] = stringsetloc("* Your SOUL shined its power on Susie!/%", "obj_queen_enemy_slash_Step_0_gml_410_0");
		actcon = 10;
		scr_battletext_default();
		acttimer = 0;
	}
	if (acting == 6 && actcon == 0)
	{
		global.msg[0] = stringsetloc("* Your SOUL shined its power on RALSEI!/%", "obj_queen_enemy_slash_Step_0_gml_419_0");
		scr_battletext_default();
		actcon = 20;
		acttimer = 0;
	}
	var _susie_simul = 0;
	if (waitnextactsusie == 1 && i_ex(obj_writer))
		_susie_simul = 1;
	if (actingsus == 1 && actconsus == 1 && _susie_simul == 0)
	{
		if (!instance_exists(obj_queenshield_enemy))
		{
			msgsetloc(0, "* Susie loosens one of Berdly's wires!/%", "obj_queen_enemy_slash_Step_0_gml_429_0");
			scr_battletext_default();
			var mercyset = 5;
			if (global.hp[1] <= 0 && global.hp[3] <= 0)
				mercyset = 8;
			if ((mercyset + bardlymercy) > 100)
				mercyset = 100 - bardlymercy;
			bardlymercy += mercyset;
			__mercydmgwriter = instance_create(obj_berdlyplug_enemy.x + 20, (obj_berdlyplug_enemy.y + 20) - (global.hittarget[0] * 20), obj_dmgwriter);
			__mercydmgwriter.damage = mercyset;
			__mercydmgwriter.type = 5;
			with (obj_berdlyplug_enemy)
				event_user(0);
			with (obj_dmgwriter)
			{
				x = obj_berdlyplug_enemy.x;
				y = obj_berdlyplug_enemy.y + 20;
			}
			obj_dmgwriter.depth = obj_queen_enemy.depth - 1;
			actcon = 1;
		}
		else
		{
			shield_damage_buffer += 1;
			if (global.hp[1] <= 0 && global.hp[3] <= 0)
				shield_damage_buffer += 1.5;
			if (susieflattercount == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Susie made a toast to Queen...?/", "obj_queen_enemy_slash_Step_0_gml_928_0");
				scr_anyface_next("susie", "1");
				msgnextloc("\\EK* Pretty cool how we're... uh, gonna kick your ass./", "obj_queen_enemy_slash_Step_0_gml_930_0");
				scr_anyface_next("queen", "1");
				msgnextloc("\\E1* It's A Good Thing I Have No Standards For This/%", "obj_queen_enemy_slash_Step_0_gml_932_0");
				scr_battletext_default();
				waitnextactralsei = 1;
				if (actingral == 1)
					changesimulorder = 2;
			}
			else if (simultotal == 1 || changesimulorder == 5)
			{
				waitnextactralsei = 1;
				if (changesimulorder == 5)
				{
					simulordersus = 0;
					changesimulorder = 0;
				}
				msgsetloc(0, "* Susie made an offensive toast to Queen!/%", "obj_queen_enemy_slash_Step_0_gml_946_0");
				scr_battletext_default();
			}
			else
			{
				if (changesimulorder == 1)
				{
					simulordersus = 0;
					simulorderral = 1;
					changesimulorder = 0;
				}
				if (actingral == 1 && ralseiflattercount == 0)
					waitnextactralsei = 1;
				if (actingral == 1 && ralseiflattercount > 0)
					waitnextactralsei = 0;
				msgsetloc(0, "* Susie toasted Queen!/%", "obj_queen_enemy_slash_Step_0_gml_955_0");
				scr_simultext("susie");
			}
			susieflattercount++;
			acting = 100;
		}
		actconsus = 0;
		actingsus = 0;
	}
	var _ralsei_simul = 0;
	if (waitnextactralsei == 1 && i_ex(obj_writer))
		_ralsei_simul = 1;
	if (actingral == 1 && actconral == 1 && _ralsei_simul == 0)
	{
		if (!instance_exists(obj_queenshield_enemy))
		{
			msgsetloc(0, "* Ralsei loosens one of Berdly's wires!/%", "obj_queen_enemy_slash_Step_0_gml_457_0");
			scr_battletext_default();
			var mercyset = 5;
			if (global.hp[1] <= 0 && global.hp[2] <= 0)
				mercyset = 8;
			if ((mercyset + bardlymercy) > 100)
				mercyset = 100 - bardlymercy;
			bardlymercy += mercyset;
			__mercydmgwriter = instance_create(obj_berdlyplug_enemy.x + 20, (obj_berdlyplug_enemy.y + 20) - (global.hittarget[0] * 20), obj_dmgwriter);
			__mercydmgwriter.damage = mercyset;
			__mercydmgwriter.type = 5;
			with (obj_berdlyplug_enemy)
				event_user(0);
			with (obj_dmgwriter)
			{
				x = obj_berdlyplug_enemy.x;
				y = obj_berdlyplug_enemy.y + 20;
			}
			obj_dmgwriter.depth = obj_queen_enemy.depth - 1;
			actcon = 1;
		}
		else
		{
			shield_damage_buffer += 1;
			if (global.hp[1] <= 0 && global.hp[2] <= 0)
				shield_damage_buffer += 1.5;
			if (ralseiflattercount == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Ralsei made a toast to Queen!/", "obj_queen_enemy_slash_Step_0_gml_1003_0");
				scr_anyface_next("ralsei", "1");
				msgnextloc("\\E2* A toast to you, er, making me wear a butler outfit!/", "obj_queen_enemy_slash_Step_0_gml_1005_0");
				scr_anyface_next("queen", "1");
				msgnextloc("\\EL* Bro That's Weird But OK/%", "obj_queen_enemy_slash_Step_0_gml_1007_0");
				scr_battletext_default();
			}
			else if (simultotal == 1 || changesimulorder == 2)
			{
				if (changesimulorder == 2)
				{
					simulorderral = 0;
					changesimulorder = 0;
				}
				msgsetloc(0, "* Ralsei made a slightly cringeworthy toast to Queen!/%", "obj_queen_enemy_slash_Step_0_gml_1015_0");
				scr_battletext_default();
			}
			else
			{
				if (changesimulorder == 3)
				{
					simulorderral = 1;
					changesimulorder = 0;
				}
				if (changesimulorder == 4)
				{
					simulorderral = 0;
					changesimulorder = 0;
				}
				msgsetloc(0, "* Ralsei toasted Queen!/%", "obj_queen_enemy_slash_Step_0_gml_472_0");
				scr_simultext("ralsei");
			}
			ralseiflattercount++;
			acting = 100;
		}
		actconral = 0;
		actingral = 0;
	}
	if (actingral == 2 && actconral == 1)
	{
		msgsetloc(0, "* Aiming with Throw is easier next turn!/%", "obj_queen_enemy_slash_Step_0_gml_483_0");
		scr_battletext_default();
		aimact = 2;
		actconral = 0;
		actingral = 0;
		actcon = 1;
	}
	if (acting == 100 && !instance_exists(obj_writer))
	{
		acting = 0;
		actcon = 1;
		drunk = 1;
		wineglasscon = 10;
		drink = 1;
		winetimer = 0;
		shieldhp -= (shieldmaxhp * (shield_damage_buffer / shieldactmaxhp));
		shield_damage_buffer = 0;
		with (obj_queenshield_enemy)
			event_user(0);
		if (shieldacthp <= 0)
		{
			msgsetloc(0, "* Queen sips from her acid!/%", "obj_queen_enemy_slash_Step_0_gml_504_0");
			msgnextloc("* She is out of acid, her shield powers down!/%", "obj_queen_enemy_slash_Step_0_gml_505_0");
			scr_battletext_default();
		}
		else
		{
			msgsetloc(0, "* Queen sips from her acid!/%", "obj_queen_enemy_slash_Step_0_gml_510_0");
			scr_battletext_default();
		}
	}
	if (actcon == 33)
	{
		if (aimact == 0)
			msgsetsubloc(0, "* Press ~1 to throw, aim for the weakpoint!", scr_get_input_name(6), "obj_queen_enemy_slash_Step_0_gml_519_0");
		else
			msgsetloc(0, "* Use UP and DOWN to Aim for the wires!", "obj_queen_enemy_slash_Step_0_gml_520_0");
		scr_battletext_default();
		with (obj_herokris)
			visible = 0;
		with (obj_herosusie)
			visible = 0;
		throwsus = instance_create(obj_herosusie.x, obj_herosusie.y, obj_queen_throwkris);
		if (throwX == 1)
		{
			throwsus.throwXcon = 1;
			with (obj_heroralsei)
				visible = 0;
		}
		actcon = 34;
	}
	if (actcon == 35)
	{
		with (obj_queen_throw_controller)
		{
			con = 2;
			lerpintimer = 0;
		}
		scr_move_to_rememberxy(8);
		if (instance_exists(obj_queenshield_enemy))
		{
			actcon = 1;
		}
		else
		{
			actcon = 36;
			alarm[4] = 25;
		}
	}
	if (actcon == 37)
		actcon = 1;
	if (actcon == 10)
	{
		acttimer += 1;
		if (acttimer >= 10 || !instance_exists(obj_writer))
		{
			acttimer = 0;
			actcon = 11;
		}
	}
	if (actcon == 11)
	{
		global.faceaction[1] = 2;
		global.charaction[1] = 2;
		global.charaction[1] = 2;
		global.charspecial[1] = 5;
		global.chartarget[1] = 0;
		global.acting[1] = 0;
		snd_play(snd_boost);
		heartanim = instance_create(obj_herokris.x + 30, obj_herokris.y + 50, obj_animation);
		with (heartanim)
		{
			depth = -20;
			image_index = 0;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 1;
			sprite_index = spr_soulshining;
		}
		with (obj_herokris)
			scr_oflash();
		with (obj_herosusie)
			scr_oflash();
		actcon = 12;
	}
	if (actcon == 12)
	{
		acttimer += 1;
		if (acttimer >= 20)
		{
			actcon = 1;
			with (obj_herosusie)
				state = 0;
		}
	}
	if (actcon == 20)
	{
		acttimer += 1;
		if (acttimer >= 10 || !instance_exists(obj_writer))
		{
			acttimer = 0;
			actcon = 21;
		}
	}
	if (actcon == 21)
	{
		global.faceaction[2] = 2;
		global.charaction[2] = 2;
		global.charspecial[2] = 6;
		global.chartarget[2] = 0;
		global.acting[2] = 0;
		snd_play(snd_boost);
		heartanim = instance_create(obj_herokris.x + 30, obj_herokris.y + 50, obj_animation);
		with (heartanim)
		{
			depth = -20;
			image_index = 0;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 1;
			sprite_index = spr_soulshining;
		}
		with (obj_heroralsei)
			scr_oflash();
		with (obj_herokris)
			scr_oflash();
		actcon = 22;
	}
	if (actcon == 22)
	{
		acttimer += 1;
		if (acttimer >= 20)
		{
			actcon = 1;
			with (obj_heroralsei)
				state = 0;
		}
	}
	if (actcon == 1 && !instance_exists(obj_writer) && !instance_exists(obj_queen_drink_droplet))
	{
		waitnextactsusie = 0;
		waitnextactralsei = 0;
		changesimulorder = 0;
		scr_nextact();
	}
}
sactionboxy = ((y - ystart) / 2) - 20;
if (scr_debug())
{
}
if (endcon == 1)
{
	snd_free(global.batmusic[0]);
	if (defeat_cutscene_version == 0)
	{
		msgsetloc(0, "Not Bad You&Foolish Children/%", "obj_queen_enemy_slash_Step_0_gml_1067_0");
		endcon = 2;
	}
	else
	{
		msgsetloc(0, "...?/%", "obj_queen_enemy_slash_Step_0_gml_1074_0");
		endcon = 3;
	}
	global.mercymod[myself] = bardlymercy;
	event_user(3);
	endtimer = 0;
	ballooncon = 1;
	balloonend = 0;
	talktimer = 0;
	global.typer = 70;
	scr_enemyblcon(x - 10, global.monstery[myself], 10);
	defeat_cutscene_version = (global.flag[529] == 2 || global.flag[529] == 3) && (global.flag[550] == 2 || global.flag[550] == 3) && (global.flag[548] == 2 || global.flag[548] == 3);
}
if (defeat_cutscene_version == 0)
{
	if (endcon == 2)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			if (ballooncon == 1)
			{
				if (bardlymercy > 99)
					msgsetloc(0, "But No Matter&How Long This&Battle Drags On/%", "obj_queen_enemy_slash_Step_0_gml_1108_0");
				else
					msgsetloc(0, "But Even If You&Deplete The Health&Points (Of My: Chair)/%", "obj_queen_enemy_slash_Step_0_gml_1109_0");
				ballooncon = 2;
				balloonend = 0;
			}
			else if (ballooncon == 2)
			{
				msgsetloc(0, "I Can Simply Make&Another Barrier Using&My: Drink/%", "obj_queen_enemy_slash_Step_0_gml_1114_0");
				ballooncon = 3;
				balloonend = 0;
			}
			else if (ballooncon == 3)
			{
				msgsetloc(0, "Bottoms Up/%", "obj_queen_enemy_slash_Step_0_gml_1118_0");
				ballooncon = 4;
				balloonend = 0;
			}
			else if (ballooncon == 4)
			{
				sprite_index = spr_queen_chair_1_old;
				msgsetloc(0, "Wait A Second/%", "obj_queen_enemy_slash_Step_0_gml_1123_0");
				ballooncon = 5;
				balloonend = 0;
			}
			else if (ballooncon == 5)
			{
				sprite_index = spr_queen_chair_1_old;
				msgsetloc(0, "Hey Chat Does Anyone&Know What Happened&To That Stuff/%", "obj_queen_enemy_slash_Step_0_gml_1128_0");
				ballooncon = 0;
				balloonend = 1;
			}
			endcon = 3;
			global.typer = 70;
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
			if (ballooncon != 4 && ballooncon != 5)
				alarm[6] = 1;
		}
	}
	if (endcon == 3 && !i_ex(obj_writer))
	{
		if (ballooncon == 4)
		{
			endtimer++;
			if (endtimer == 1)
			{
				sprite_index = spr_queen_throw_wineglass;
				snd_play(snd_error);
			}
			if (endtimer == 60)
			{
				alarm[6] = 1;
				endtimer = 0;
			}
		}
		if (ballooncon == 5)
		{
			endtimer++;
			if (endtimer == 1)
			{
				sprite_index = spr_queen_throw_wineglass;
				snd_play(snd_error);
			}
			if (endtimer == 60)
			{
				alarm[6] = 1;
				endtimer = 0;
			}
		}
	}
	if (endcon == 4)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			endtimer++;
			if (endtimer == 1)
			{
				global.fighting = 0;
				if (i_ex(obj_ch2_scene25))
					obj_ch2_scene25.forcend = 1;
			}
		}
	}
}
if (defeat_cutscene_version == 1)
{
	if (endcon == 2 && extracon == 0)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			extratimer++;
			if (extratimer == 1)
			{
				obj_berdlyplug_enemy.shake2 = 10;
				snd_play(snd_damage);
			}
			if (extratimer == 50)
				extracon = 1;
		}
	}
	if (endcon == 2 && extracon == 1)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			with (obj_writer)
				instance_destroy();
			if (ballooncon == 1)
			{
				idlesprite = spr_cutscene_25_queen_chair_shocked;
				msgsetloc(0, "What The/%", "obj_queen_enemy_slash_Step_0_gml_1181_0");
				ballooncon = 2;
				balloonend = 0;
			}
			else if (ballooncon == 2)
			{
				msgsetloc(0, "What Are&You Doing/%", "obj_queen_enemy_slash_Step_0_gml_1186_0");
				ballooncon = 3;
				balloonend = 0;
			}
			else if (ballooncon == 3)
			{
				msgsetloc(0, "Why Isn't&My Control&Wire Working/%", "obj_queen_enemy_slash_Step_0_gml_1190_0");
				ballooncon = 4;
				balloonend = 0;
			}
			else if (ballooncon == 4)
			{
				msgsetloc(0, "Thanks to...&my comrades'&kindness...&their MERCY!/%", "obj_queen_enemy_slash_Step_0_gml_1195_0");
				ballooncon = 5;
				balloonend = 0;
			}
			else if (ballooncon == 5)
			{
				msgsetloc(0, "Now.../%", "obj_queen_enemy_slash_Step_0_gml_1200_0");
				ballooncon = 6;
				balloonend = 0;
			}
			else if (ballooncon == 6)
			{
				msgsetloc(0, "It's time...&for me to&take my&freedom!!/%", "obj_queen_enemy_slash_Step_0_gml_1204_0");
				ballooncon = 0;
				balloonend = 1;
			}
			endcon = 3;
			if (ballooncon > 4 || ballooncon == 0)
			{
				global.typer = 69;
				var xx = 30;
				if (ballooncon == 0 || ballooncon == 6)
					xx = 75;
				scr_enemyblcon(obj_berdlyplug_enemy.x + xx, obj_berdlyplug_enemy.ystart + 15, 7);
			}
			else
			{
				global.typer = 70;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
			}
			if (ballooncon != 2 && ballooncon != 5)
				alarm[6] = 1;
		}
	}
	if (endcon == 3 && !i_ex(obj_writer))
	{
		if (ballooncon == 1)
		{
			endtimer++;
			if (endtimer == 2)
			{
				obj_berdlyplug_enemy.shake2 = 10;
				snd_play(snd_damage);
			}
			if (endtimer == 42)
			{
				obj_berdlyplug_enemy.shake2 = 10;
				snd_play(snd_damage);
			}
			if (endtimer == 102)
			{
				alarm[6] = 1;
				endtimer = 0;
			}
		}
		if (ballooncon == 2)
		{
			endtimer++;
			if (endtimer == 1)
				obj_berdlyplug_enemy.savey = obj_berdlyplug_enemy.y;
			if (endtimer < 30)
			{
				obj_berdlyplug_enemy.x = lerp(obj_berdlyplug_enemy.xstart, camerax() + (camerawidth() / 2.5), endtimer / 30);
				obj_berdlyplug_enemy.ystart = lerp(obj_berdlyplug_enemy.savey, cameray() + (cameraheight() / 3.5), endtimer / 30);
			}
			if (endtimer == 60)
				obj_berdlyplug_enemy.image_xscale *= -1;
			if (endtimer == 90)
			{
				alarm[6] = 1;
				endtimer = 0;
			}
		}
		if (ballooncon == 5)
		{
			endtimer++;
			if (endtimer == 1)
			{
				obj_berdlyplug_enemy.sprite_index = spr_cutscene_25_berdly_grab_plug;
				obj_berdlyplug_enemy.shake2 = 10;
				obj_berdlyplug_enemy.image_xscale *= -1;
				obj_berdlyplug_enemy.x -= 50;
				snd_play(snd_grab);
			}
			if (endtimer == 30)
			{
				alarm[6] = 1;
				endtimer = 0;
			}
		}
	}
	if (endcon == 4)
	{
		talktimer++;
		if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
		{
			endtimer++;
			if (endtimer == 1)
			{
				snd_play(snd_great_shine);
				whiteall = scr_dark_marker(-10, -10, spr_pixel_white);
				whiteall.image_xscale = 999;
				whiteall.image_yscale = 999;
				whiteall.depth = -99999;
				whiteall.image_alpha = 0;
			}
			if (endtimer > 0 && endtimer < 16)
				whiteall.image_alpha = lerp(0, 1, endtimer / 15);
			if (endtimer > 25 && endtimer < 41)
				whiteall.image_alpha = lerp(1, 0, (endtimer - 25) / 15);
			if (endtimer >= 42)
			{
				global.fighting = 0;
				instance_destroy(obj_battlecontroller);
			}
		}
	}
}
