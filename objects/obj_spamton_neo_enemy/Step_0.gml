if (bigshot == 1)
	global.sp = 5;
if (cantspareinit == 0 && scr_sideb_get_phase() > 2 && i_ex(obj_battlecontroller))
{
	obj_battlecontroller.cantspare[0] = 1;
	cantspareinit = 1;
}
if (scr_sideb_get_phase() > 2)
	global.mercymod[myself] = 0;
if (global.fighting == 1)
{
	if (global.monster[myself] == 1)
	{
		if ((scr_isphase("enemytalk") && talked == 0 && global.monsterhp[myself] <= 0 && scr_sideb_get_phase() <= 2) || (endcon == 1 && scr_sideb_get_phase() <= 2))
		{
			talked = -1;
			endcon = 1;
		}
		if (global.monsterhp[myself] <= 1 && scr_sideb_get_phase() > 2)
			global.monsterhp[myself] = 1;
		if ((scr_isphase("enemytalk") && global.monsterhp[myself] <= (global.monstermaxhp[myself] * 0.1) && scr_sideb_get_phase() > 2 && weirdpathendcon == 0) || (talked == -1 && weirdpathendcon == 0 && scr_sideb_get_phase() > 2))
		{
			weirdpathendtimer++;
			if (weirdpathendtimer == 1)
			{
				talked = -1;
				partmode = 99;
				mus_volume(global.batmusic[1], 0, 30);
			}
			if (weirdpathendtimer == 91)
			{
				talked = 0;
				weirdpathendcon = 1;
			}
		}
		if (scr_isphase("enemytalk") && talked == 0)
		{
			scr_randomtarget();
			if (!instance_exists(obj_darkener))
				instance_create(0, 0, obj_darkener);
			if (scr_isphase("enemytalk") && talked == 0 && turn > 14 && weirdpathendcon == 0)
			{
				if (global.monsterdf[myself] > -10)
					global.monsterdf[myself] -= 3;
			}
			ballooncon = 0;
			balloonsubcon = 0;
			balloonend = 1;
			talkedcon = 0;
			statustextupdate = 0;
			with (obj_sneo_susie_act)
				turnsleft -= 1;
			global.typer = 72;
			rr = -1;
			event_user(0);
			if (attackdebug >= 0)
				rr = attackdebug;
			if (difficultydebug >= 0)
				difficulty = difficultydebug;
			var final = haveusedfinalattack;
			var weirdside = 0;
			if (scr_sideb_get_phase() > 2)
				weirdside = 1;
			if (scr_sideb_get_phase() > 2 && weirdpathendcon > 0)
			{
				if (weirdpathendcon == 1)
				{
					msgsetloc(0, "MY ESTEEM CUSTOMER I&SEE YOU ARE ATTEMPTING&TO DEPLETE MY HP!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_86_0_b");
					ballooncon = 28;
					balloonend = 0;
					weirdpathendcon = 2;
				}
				else if (usedact == 0)
				{
					msgsetloc(0, "ENJOY THE FIREWORKS,&KID!!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_87_0_b");
					ballooncon = 0;
					balloonend = 1;
					weirdpathendcon = 2;
				}
				else if (savemeactcon == 2)
				{
					msgsetloc(0, "WHAT!? YOU'RE&CALLING FRIENDS!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_88_0");
					ballooncon = 35;
					balloonend = 0;
					weirdpathendcon = 3;
				}
				else if (savemeactcon == 3)
				{
					msgsetloc(0, "GO AHEAD AND&[Scream] INTO THE&[Receiver]./%", "obj_spamton_neo_enemy_slash_Step_0_gml_89_0");
					ballooncon = 38;
					balloonend = 0;
					weirdpathendcon = 4;
				}
				else if (savemeactcon == 4)
				{
					msgsetloc(0, "THERE WILL BE NO&MORE [Miracles]&NO MORE [Magic]./%", "obj_spamton_neo_enemy_slash_Step_0_gml_90_0");
					ballooncon = 41;
					balloonend = 0;
					weirdpathendcon = 5;
				}
				else if (savemeactcon == 5)
				{
					msgsetloc(0, "YOU MAKE ME [Sick]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_91_0");
					ballooncon = 43;
					balloonend = 0;
					weirdpathendcon = 6;
					shockthreshold = 10;
					hurttimer2 = 10;
					partmode = 40;
				}
			}
			else if (weirdside && balloonorder < 10 && !final)
			{
				if (balloonorder == 0)
				{
					msgsetloc(0, "I REMEMBER WHEN&YOU WERE JUST&A LOST [Little Sponge]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_64_0_c");
					ballooncon = 16;
					balloonend = 0;
				}
				else if (balloonorder == 1)
				{
					msgsetloc(0, "I GAVE YOU&EVERYTHING I HAD!&MY LIFE&ADVICE!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_65_0_b");
					ballooncon = 17;
					balloonend = 0;
				}
				else if (balloonorder == 2)
				{
					msgsetloc(0, "I GAVE YOU MY&[Commemorative Ring]&FOR THE PRICE OF&[My Favorite Year]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_66_0_b");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (balloonorder == 3)
				{
					msgsetloc(0, "AND THIS IS HOW&YOU [Repay] ME!?&TREATING ME LIKE&[DLC]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_67_0_b");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (balloonorder == 4)
				{
					msgsetloc(0, "NO, I GET IT!&IT'S YOU AND&THAT [Hochi Mama]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_68_0_b");
					ballooncon = 18;
					balloonend = 0;
				}
				else if (balloonorder == 5)
				{
					msgsetloc(0, "YOU'VE BEEN&MAKING&[Hyperlink Blocked]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_69_0_c");
					ballooncon = 19;
					balloonend = 0;
				}
				else if (balloonorder == 6)
				{
					msgsetloc(0, "I WAS TOO [Trusting]&TOO [Honest]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_70_0_c");
					ballooncon = 20;
					balloonend = 0;
				}
				else if (balloonorder == 7)
				{
					msgsetloc(0, "I SHOULD HAVE&KNOWN YOU WOULD&HAVE USED MY [Ring]&FOR [Evil].../%", "obj_spamton_neo_enemy_slash_Step_0_gml_71_0_b");
					ballooncon = 21;
					balloonend = 0;
				}
				else if (balloonorder == 8)
				{
					msgsetloc(0, "YOU THINK MAKING&[Frozen Chicken]&WITH YOUR&[Side Chick]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_72_0_b");
					ballooncon = 22;
					balloonend = 0;
				}
				else if (balloonorder == 9)
				{
					msgsetloc(0, "WELL, YOU'RE&[$!$!] RIGHT!&BUT DON'T BLAME&ME/%", "obj_spamton_neo_enemy_slash_Step_0_gml_73_0_b");
					ballooncon = 23;
					balloonend = 0;
				}
				balloonorder++;
			}
			else if (rr == 0 && difficulty == 1 && !weirdside && !final)
			{
				msgsetloc(0, "KRIS! ISN'T THIS&[Body] JUST [Heaven]LY!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_56_0");
				ballooncon = 1;
				balloonend = 0;
			}
			else if (rr == 6 && difficulty == 0 && !weirdside && !final)
			{
				msgsetloc(0, "WE'LL TURN THOSE&[Schmoes] AND [Daves]&INTO [Rosen Graves]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_57_0");
				ballooncon = 2;
				balloonend = 0;
			}
			else if (rr == 8 && difficulty == 0 && !weirdside && !final)
			{
				msgsetloc(0, "ALL YOU GOTTA&DO IS [Big]./%", "obj_spamton_neo_enemy_slash_Step_0_gml_58_0_b");
				ballooncon = 3;
				balloonend = 0;
			}
			else if (rr == 2 && difficulty == 0 && !weirdside && !final)
			{
				msgsetloc(0, "KRIS, DON'T YOU&WANNA BE [Part]&OF MY BEAUTIFUL [Heart]?!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_59_0_b");
				ballooncon = 4;
				balloonend = 0;
			}
			else if (rr == 8.5 && difficulty == 0 && !weirdside && !final)
			{
				msgsetloc(0, "IT'S CALLING, KRIS...&MY [Heart]...&MY [Hands].../%", "obj_spamton_neo_enemy_slash_Step_0_gml_60_0");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (rr == 7 && faceattackcount == 0 && !weirdside && !final)
			{
				msgsetloc(0, "KRIS!&CAN YOU REALLY&LOOK IN MY [Eyes]&AND SAY NO!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_61_0");
				ballooncon = 5;
				balloonend = 0;
			}
			else if (rr == 0 && difficulty == 3 && !weirdside && !final)
			{
				msgsetloc(0, "KRIS, I'LL EVEN&GIVE YOU A&[Free Value]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_62_0");
				ballooncon = 6;
				balloonend = 0;
			}
			else if (rr == 2 && difficulty == 2 && !weirdside && !final)
			{
				msgsetloc(0, "I CAN'T STAND IT!!!&I THINK I'M GONNA&HAVE A [HeartAttack]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_63_0_b");
				ballooncon = 0;
				balloonend = 1;
			}
			else if (rr == 8 && difficulty == 1 && !weirdside && !final)
			{
				msgsetloc(0, "DON'T YOU&WANNA HELP YOUR&OLD PAL SPAMTON?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_64_0_b");
				ballooncon = 7;
				balloonend = 0;
			}
			else if (rr == 8.5 && difficulty == 2 && !weirdside && !final)
			{
				msgsetloc(0, "[Friends]!? KRIS!?&WHAT ARE YOU&TALKING ABOUT!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_65_0");
				ballooncon = 8;
				balloonend = 0;
			}
			else if (rr == 7 && faceattackcount == 1 && !weirdside && !final)
			{
				msgsetloc(0, "KRIS. IF YOU GIVE&ME THAT [Soul] I&WILL GIVE YOU&EVERYTHING I HAVE./%", "obj_spamton_neo_enemy_slash_Step_0_gml_66_0");
				ballooncon = 10;
				balloonend = 0;
			}
			else if (rr == 6 && difficulty == 1 && !weirdside && !final)
			{
				msgsetloc(0, "BUT KRIS, IF YOU&REFUSE. THAT'S YOUR&CHOICE. I CAN'T&FORCE YOU./%", "obj_spamton_neo_enemy_slash_Step_0_gml_67_0");
				ballooncon = 11;
				balloonend = 0;
			}
			else if (rr == 2 && difficulty == 1 && !weirdside && !final)
			{
				msgsetloc(0, "KRIS!!! TAKE THE&DEAL!!! TAKE IT!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_69_0_b");
				ballooncon = 12;
				balloonend = 0;
			}
			else if (rr == 8 && difficulty == 3 && !weirdside && !final)
			{
				msgsetloc(0, "OR...&DID YOU WANT&TO BE.../%", "obj_spamton_neo_enemy_slash_Step_0_gml_121_0");
				ballooncon = 13;
				balloonend = 0;
			}
			else if (rr == 9 && finalattackconversationcon == 0 && !weirdside)
			{
				msgsetloc(0, "KRIS...&I WON'T FORCE YOU.&I CAN'T.&I CAN'T FORCE YOU./%", "obj_spamton_neo_enemy_slash_Step_0_gml_93_0");
				ballooncon = 25;
				balloonend = 0;
				finalattackconversationcon = 1;
			}
			else
			{
				var rrr = choose(0, 1, 2, 3);
				if (rrr == 0)
				{
					if (statustextalt2 == 0)
					{
						msgsetloc(0, "CAN A [Little&Sponge] DO THIS?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_86_0");
						ballooncon = 15;
						balloonend = 0;
					}
					if (statustextalt2 == 1)
					{
						msgsetloc(0, "[BreaKing] and&[CracKing]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_87_0");
						balloonend = 1;
					}
					statustextalt2++;
					if (statustextalt2 > 1)
						statustextalt2 = 0;
				}
				if (rrr == 1)
				{
					if (statustextalt == 0)
						msgsetloc(0, "[The Smooth&Taste Of] NEO/%", "obj_spamton_neo_enemy_slash_Step_0_gml_58_0");
					if (statustextalt == 1)
						msgsetloc(0, "THE [@$@!] TASTE&OF SPAMTON/%", "obj_spamton_neo_enemy_slash_Step_0_gml_59_0");
					statustextalt++;
					if (statustextalt > 1)
						statustextalt = 0;
				}
				if (rrr == 2)
					msgsetloc(0, "DON'T YOU&WANNA BE A&BIG SHOT?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_63_0");
				if (rrr == 3)
					msgsetloc(0, "[Clown]!? NO!!!&I FEEL SICK!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_64_0");
			}
			usedact = 0;
			if (correct_answer != 1)
			{
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
			}
			correct_answer = -1;
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
					msgsetloc(0, "3X THE [Fire]POWER.&2X THE [Water]POWER.&AND BEST OF ALL,&FLYING [Heads]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_136_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 2)
				{
					msgsetloc(0, "THOSE [Cathode Screens]&INTO [Cathode Screams]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_137_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 3)
				{
					msgsetloc(0, "THEN WE'LL BE&THE ONES MAKING&THE [Calls], KRIS!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_138_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 4)
				{
					msgsetloc(0, "OR... DID YOU NEED&A LITTLE&[Specil Tour]?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_139_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 5)
				{
					msgsetloc(0, "LOOK IN MY [Eyes]&LOOK IN MY [Nose]&LOOK IN MY [Mouth]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_140_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 6)
				{
					msgsetloc(0, "[Die Now] AND I'LL&THROW IN [50]&[Bullets] FOR FREE!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_141_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 7)
				{
					msgsetloc(0, "KRIS!! THINK!!&WHAT ARE MY&[Eggs] GOING TO DO!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_142_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 8)
				{
					msgsetloc(0, "YOU DON'T NEED [Friends]!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_143_0");
					ballooncon = 9;
					balloonend = 0;
				}
				else if (ballooncon == 9)
				{
					msgsetloc(0, "I CAN MAKE MY&HANDS INTO&PHONES!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_144_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 10)
				{
					msgsetloc(0, "I WILL GIVE YOU&[3 Easy Payments&of $9.99!]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_145_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 11)
				{
					msgsetloc(0, "I CAN ONLY [Kill]&YOU [50-percent faster&than similar products]&OR [No Money Back!]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_146_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 12)
				{
					msgsetloc(0, "DO YOU WANNA BE&A [Heart] ON A [Chain]&YOUR WHOLE LIFE!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_147_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 13)
				{
					msgsetloc(0, "Did you wanna&be.../%", "obj_spamton_neo_enemy_slash_Step_0_gml_163_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 15)
				{
					msgsetloc(0, "GO [Ga-Ga]&AND [Die]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_173_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 16)
				{
					msgsetloc(0, "SLEEPING AT&THE BOTTOM OF&A DUMPSTER!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_174_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 17)
				{
					msgsetloc(0, "I TOLD YOU&[4 Left]&AND ASKED YOU&[Buy] OR [Don't Buy]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_175_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 18)
				{
					msgsetloc(0, "YOU'VE BEEN&[Making],&HAVEN'T YOU!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_176_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 19)
				{
					msgsetloc(0, "AND NOW THAT&YOU HAVE YOUR&OWN SUPPLY,&YOU DON'T NEED ME!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_177_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 20)
				{
					msgsetloc(0, "I'VE ALWAYS BEEN&A MAN OF THE [PIPIS].&A REAL [PIPIS]&PERSON!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_178_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 21)
				{
					msgsetloc(0, "OH, [Right].&THAT'S WHY I SOLD&IT TO YOU/%", "obj_spamton_neo_enemy_slash_Step_0_gml_179_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 22)
				{
					msgsetloc(0, "IS GONNA LET&YOU DRINK UP&THAT [Sweet, Sweet]&[Freedom Sauce]?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_180_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 23)
				{
					msgsetloc(0, "WHEN YOU'RE [Crying]&IN A [Broken Home]&WISHING YOU LET&YOUR OLD PAL&SPAMTON/%", "obj_spamton_neo_enemy_slash_Step_0_gml_181_0");
					ballooncon = 24;
					balloonend = 0;
				}
				else if (ballooncon == 24)
				{
					msgsetloc(0, "[Kill You]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_182_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 25)
				{
					msgsetloc(0, "BUT JUST LOOK, KRIS.&LOOK AT THE [Power of&NEO] AND ASK YOURSELF.../%", "obj_spamton_neo_enemy_slash_Step_0_gml_207_0");
					ballooncon = 26;
					balloonend = 0;
				}
				else if (ballooncon == 26)
				{
					msgsetloc(0, "WELL, DON'T YOU?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_208_0");
					ballooncon = 27;
					balloonend = 0;
				}
				else if (ballooncon == 27)
				{
					msgsetloc(0, "DON'T YOU WANNA&BE A [Big Shot]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_209_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 28)
				{
					msgsetloc(0, "I'LL ADMIT YOU'VE&GOT SOME [Guts]&KID!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_211_0");
					ballooncon = 29;
					balloonend = 0;
				}
				else if (ballooncon == 29)
				{
					msgsetloc(0, "BUT IN A [1 for 1]&BATTLE,  NEO&NEVER LOSES!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_212_0");
					ballooncon = 30;
					balloonend = 0;
				}
				else if (ballooncon == 30)
				{
					msgsetloc(0, "IT'S TIME FOR A&LITTLE [Bluelight Specil]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_213_0");
					ballooncon = 31;
					balloonend = 0;
				}
				else if (ballooncon == 31)
				{
					msgsetloc(0, "* Spamton Neo's ATTACK dropped!&* Spamton Neo's DEFENSE rose greatly!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_214_0");
					ballooncon = 32;
					balloonend = 0;
					specialcon = 1;
					snd_play(snd_cardrive);
				}
				else if (ballooncon == 32)
				{
					msgsetloc(0, "DIDN'T YOU KNOW&[Neo] IS FAMOUS FOR&ITS HIGH DEFENSE!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_217_0");
					ballooncon = 33;
					balloonend = 0;
					partmode = 1;
					snd_free(global.currentsong[1]);
					global.currentsong[0] = snd_init("spamton_neo_meeting.ogg");
					global.currentsong[1] = mus_play(global.currentsong[0]);
					mus_loop(global.currentsong[0]);
					snd_pitch(global.currentsong[0], 1.8);
				}
				else if (ballooncon == 33)
				{
					msgsetloc(0, "NOW... ENJ0Y THE&FIR3WORKS, KID!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_225_0");
					ballooncon = 0;
					balloonend = 1;
					savemeactcon = 1;
					event_user(1);
				}
				else if (ballooncon == 35)
				{
					msgsetloc(0, "YOU THINK YOU&CAN BEAT ME WITH&YOUR FRIENDS' [Magic]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_227_0");
					ballooncon = 36;
					balloonend = 0;
				}
				else if (ballooncon == 36)
				{
					msgsetloc(0, "GO AHEAD, [Kid]...&CALL ALL YOU WANT!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_228_0");
					ballooncon = 37;
					balloonend = 0;
				}
				else if (ballooncon == 37)
				{
					msgsetloc(0, "NO ONE WILL&EVER PICK UP/%", "obj_spamton_neo_enemy_slash_Step_0_gml_229_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 38)
				{
					msgsetloc(0, "THE [Voice] RUNS&OUT EVENTUALLY/%", "obj_spamton_neo_enemy_slash_Step_0_gml_231_0");
					ballooncon = 39;
					balloonend = 0;
				}
				else if (ballooncon == 39)
				{
					msgsetloc(0, "YOUR [Voice]&THEIR [Voice]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_232_0");
					ballooncon = 40;
					balloonend = 0;
				}
				else if (ballooncon == 40)
				{
					msgsetloc(0, "UNTIL YOU REALIZE&YOU ARE ALL ALONE/%", "obj_spamton_neo_enemy_slash_Step_0_gml_233_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 41)
				{
					msgsetloc(0, "YOU LOST IT WHEN&YOU TRIED TO SEE&TOO FAR..../%", "obj_spamton_neo_enemy_slash_Step_0_gml_235_0");
					ballooncon = 42;
					balloonend = 0;
				}
				else if (ballooncon == 42)
				{
					msgsetloc(0, "... YOU LOST IT.../%", "obj_spamton_neo_enemy_slash_Step_0_gml_236_0");
					ballooncon = 0;
					balloonend = 1;
				}
				else if (ballooncon == 43)
				{
					msgsetloc(0, "MUTTERING YOUR&[Lost Friends] NAMES&AT THE BOTTOM OF&A [Dumpster]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_238_0");
					ballooncon = 44;
					balloonend = 0;
					partmode = 40;
				}
				else if (ballooncon == 44)
				{
					msgsetloc(0, "NO ONE'S GONNA&HELP YOU!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_239_0");
					ballooncon = 45;
					balloonend = 0;
				}
				else if (ballooncon == 45)
				{
					msgsetloc(0, "GET THAT THROUGH&YOUR [Beautiful Head],&YOU LITTLE [Worm]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_240_0");
					ballooncon = 0;
					balloonend = 1;
					weirdpathendcon = 7;
				}
				talked = 0.7;
				talktimer = 0;
				if (correct_answer != 1)
				{
					if (ballooncon == 32)
					{
						scr_battletext_default();
					}
					else
					{
						global.typer = 72;
						scr_enemyblcon(x - 10, global.monstery[myself], 10);
					}
				}
				correct_answer = -1;
				alarm[6] = 1;
			}
		}
		if (talked == 1 && scr_isphase("enemytalk") && !i_ex(obj_choicer_neo))
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
				if (partmode == 40)
				{
					partmode = 1;
					shockthreshold = 0;
					hurttimer2 = 0;
				}
				rtimer = 0;
				if (!instance_exists(obj_spamton_cherub))
					scr_blconskip(-1);
				else
					talktimer += 1;
				if (scr_isphase("bullets"))
				{
					if (attackdebug >= 0)
						rr = attackdebug;
					if (difficultydebug >= 0)
						difficulty = difficultydebug;
					if (!instance_exists(obj_growtangle))
					{
						instance_create(__view_get(e__VW.XView, 0) + 245, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
						if (rr == 0)
						{
							obj_growtangle.x += 54;
							obj_growtangle.maxxscale = 3.2;
							obj_growtangle.maxyscale = 1.5;
							chargesfxtimer = 0;
							dance_timer = 0;
							armaim = -80;
							if (difficulty == 3)
							{
								scr_rememberxy();
								scr_move_to_point_over_time(x + 50, y, 8);
								with (obj_sneo_vine_cut)
									hide = 1;
								with (obj_sneo_vine_transition)
									hide = 1;
							}
						}
						if (rr == 3)
						{
							obj_growtangle.x += 44;
							obj_growtangle.y += 54;
							obj_growtangle.maxxscale = 2;
							obj_growtangle.maxyscale = 2;
						}
						if (rr == 5)
						{
							scr_rememberxy();
							scr_move_to_point_over_time(x + 200, y, 8);
							with (obj_sneo_vine_cut)
								hide = 1;
							with (obj_sneo_vine_transition)
								hide = 1;
						}
						if (rr == 7)
						{
							obj_growtangle.x += 15;
							obj_growtangle.maxxscale = 2;
							obj_growtangle.maxyscale = 2;
							scr_rememberxy();
						}
						else if (rr == 8)
						{
							scr_rememberxy();
							scr_move_to_point_over_time(x, cameray() + 20, 8);
							with (obj_sneo_vine_cut)
								hide = 1;
							with (obj_sneo_vine_transition)
								hide = 1;
						}
						else if (rr == 8.5 || rr == 4)
						{
							obj_growtangle.x += 64;
							obj_growtangle.y += 8;
							obj_growtangle.maxxscale = 3.2;
							obj_growtangle.maxyscale = 1.5;
						}
						else if (rr == 6)
						{
							obj_growtangle.x += 58;
							obj_growtangle.maxxscale = 3.3333333333333335;
							obj_growtangle.maxyscale = 2.3;
							scr_rememberxy();
							scr_move_to_point_over_time(x + 200, y, 16);
							with (obj_sneo_vine_cut)
								hide = 1;
							with (obj_sneo_vine_transition)
								hide = 1;
						}
						else if (rr == 9)
						{
							obj_growtangle.y += 10;
							obj_growtangle.maxyscale = 1.9;
							obj_growtangle.maxxscale = 2.5;
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
			if (rtimer == 15)
			{
				if (rr == 0)
				{
					global.monsterattackname[myself] = "FlyingHeads";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 0;
				}
				else if (rr == 1)
				{
					global.monsterattackname[myself] = "FootballPipis";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 1;
				}
				else if (rr == 2)
				{
					global.monsterattackname[myself] = "HeartAttackNeo";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 1.5;
					dc.special = hellmode;
				}
				else if (rr == 3)
				{
					global.monsterattackname[myself] = "FootballPipis";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 1;
				}
				else if (rr == 4)
				{
					global.monsterattackname[myself] = "Phonehands";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 8.5;
				}
				else if (rr == 5)
				{
					global.monsterattackname[myself] = "PipisExplosion";
					dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
					dc.type = 51;
					dc.damage = 3;
					dc.btimer = 35 - random(30);
				}
				else if (rr == 6)
				{
					global.monsterattackname[myself] = "RECREWColumns";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 6;
				}
				else if (rr == 7)
				{
					global.monsterattackname[myself] = "SneoFaceAttack";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 12;
					dc.special = hellmode;
					faceattackcount++;
				}
				else if (rr == 8)
				{
					global.monsterattackname[myself] = "Phonecall";
					dc = instance_create(x - 10, y + 20, obj_sneo_phonecall);
					dc.isattack = 1;
					dc.target = mytarget;
					if (difficulty == 3)
					{
						phoneevent = 2;
					}
					else
					{
						if (phoneevent >= 1)
							dc.skipintro = 1;
						phoneevent++;
					}
				}
				else if (rr == 8.5)
				{
					global.monsterattackname[myself] = "Phonehands";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 8.5;
				}
				else if (rr == 9)
				{
					global.monsterattackname[myself] = "NeoFinale";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = 9;
					dc.target = 3;
				}
				else if (rr == 10)
				{
					global.monsterattackname[myself] = "diamonds";
					dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
					dc.type = 1;
					dc.target = 3;
					partframe[5] = 3;
				}
				else
				{
					global.monsterattackname[myself] = "UnspecifiedSneoAttack";
					dc = scr_bulletspawner(x, y, obj_sneo_bulletcontroller);
					dc.type = rr;
				}
				scr_heartcolor("yellow");
				obj_heart.wspeed = global.sp;
				scr_turntimer(260);
				if (rr == 1)
					scr_turntimer(300);
				if (rr == 2)
					scr_turntimer(750 + (hellmode * 450));
				if (rr == 2 && difficulty == 1)
					scr_turntimer(850 + (hellmode * 450));
				if (rr == 2 && difficulty == 6)
					scr_turntimer(150);
				if (rr == 6)
					scr_turntimer(330);
				if (rr == 7)
					scr_turntimer(300);
				if (rr == 5)
					scr_turntimer(90);
				turns += 1;
				global.typer = 6;
				global.fc = 0;
				rr = choose(0, 1, 2, 3);
				if (rr == 0)
					global.battlemsg[0] = stringsetloc("* The stage lights are shattered.", "obj_spamton_neo_enemy_slash_Step_0_gml_294_0");
				if (rr == 1)
					global.battlemsg[0] = stringsetloc("* It pulls the strings and makes them ring.", "obj_spamton_neo_enemy_slash_Step_0_gml_295_0");
				if (rr == 2)
					global.battlemsg[0] = stringsetloc("* The air crackles with freedom.", "obj_spamton_neo_enemy_slash_Step_0_gml_296_0");
				if (rr == 3)
					global.battlemsg[0] = stringsetloc("* Smells like rotten glass.", "obj_spamton_neo_enemy_slash_Step_0_gml_297_0");
				attacked = 1;
			}
			else
			{
				scr_turntimer(120);
			}
		}
		if (i_ex(obj_returnheart) && statustextupdate == 0)
		{
			statustextupdate = 1;
			if (weirdpathendcon > 0)
			{
				if (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.06))
				{
					global.battlemsg[0] = stringsetloc("* Spamton NEO recovered HP with Pipis!", "obj_spamton_neo_enemy_slash_Step_0_gml_526_0");
					global.monsterhp[myself] = global.monstermaxhp[myself] * 0.06;
				}
				else
				{
					global.battlemsg[0] = stringsetloc("* Spamton NEO's DEFENSE is towering.", "obj_spamton_neo_enemy_slash_Step_0_gml_527_0");
				}
			}
			else if (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.1) && haveusedfinalattack == 0)
			{
				global.battlemsg[0] = stringsetloc("* Spamton looks to the heavens.", "obj_spamton_neo_enemy_slash_Step_0_gml_312_0");
			}
			else if (bigshot == 1 && bigshotused == 0 && global.monsterhp[myself] > (global.monstermaxhp[myself] * 0.7))
			{
				global.battlemsg[0] = stringsetsubloc("* Hold and release ~1 to fire a BIG SHOT!", scr_get_input_name(4), "obj_spamton_neo_enemy_slash_Step_0_gml_313_0");
			}
			else if (bigshot == 1 && bigshotused == 1)
			{
				if (statustextorder == 0)
					global.battlemsg[0] = stringsetloc("* Spamton turns to the audience and laughs.", "obj_spamton_neo_enemy_slash_Step_0_gml_316_0");
				if (statustextorder == 1)
					global.battlemsg[0] = stringsetloc("* Spamton appeals to the audience with a festive jig!", "obj_spamton_neo_enemy_slash_Step_0_gml_317_0");
				if (statustextorder == 2)
					global.battlemsg[0] = stringsetloc("* Spamton begs to the audience, Spamton prays to the audience.", "obj_spamton_neo_enemy_slash_Step_0_gml_318_0");
				if (statustextorder == 3)
					global.battlemsg[0] = stringsetloc("* There is no audience.", "obj_spamton_neo_enemy_slash_Step_0_gml_319_0");
				if (statustextorder == 6)
					global.battlemsg[0] = stringsetloc("* Spamton begs the audience to stop taking the furniture out of his room.", "obj_spamton_neo_enemy_slash_Step_0_gml_320_0");
				if (statustextorder == 9)
					global.battlemsg[0] = stringsetloc("* Spamton feels the sweet breeze as he takes a ride around town.", "obj_spamton_neo_enemy_slash_Step_0_gml_321_0");
				statustextorder++;
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
			var heal_buffer = 0;
			for (var i = 0; i < 3; i++)
			{
				if (global.char[i] == 0)
					continue;
				var _hltarget = global.charinstance[i];
				var _xx = 16;
				var _yy = -38;
				if (i == 1)
				{
					_xx = 34;
					_yy = -32;
				}
				else if (i == 2)
				{
					_xx = 34;
					_yy = -20;
				}
				var _cherub = instance_create(_hltarget.x + _xx, _hltarget.y + _yy, obj_spamton_cherub);
				if (i == 0 && global.char[1] == 0)
				{
					_cherub.healer = true;
				}
				else
				{
					_cherub.heal_state = party_heal;
					_cherub.timer = -5 * i;
					_cherub.target = i;
					if (i == 2 || global.char[i + 1] == 0)
						_cherub.healer = true;
				}
			}
			party_heal = true;
		}
	}
	if (global.myfight == 3)
	{
		xx = __view_get(e__VW.XView, 0);
		yy = __view_get(e__VW.YView, 0);
		if (acting == 1 && actcon == 0 && savemeactcon == 0)
		{
			actcon = 1;
			if (checkcount == 0)
			{
				msgsetloc(0, "* SPAMTON NEO - YOU WON'T FIND HIGHER ATTACK AND DEFENSE ANYWHERE ELSE!!!/", "obj_spamton_neo_enemy_slash_Step_0_gml_375_0");
				msgnextloc("* THE SMOOTH TASTE OF NEO \"WAKE UP AND TASTE THE \\cRPAIN\\cW\"./%", "obj_spamton_neo_enemy_slash_Step_0_gml_376_0");
				msgnextloc("* [[note: pain is in red.]] ./%", "obj_spamton_neo_enemy_slash_Step_0_gml_377_0");
			}
			else
			{
				msgsetloc(0, "* Spamton Neo - He is his own worst invention./%", "obj_spamton_neo_enemy_slash_Step_0_gml_381_0");
			}
			scr_battletext_default();
			checkcount++;
		}
		if (acting == 1 && actcon == 0 && savemeactcon > 0)
		{
			actcon = 1;
			if (savemeactcon < 5)
			{
				msgsetloc(0, "* Kris called for help.../", "obj_spamton_neo_enemy_slash_Step_0_gml_617_0");
				msgnextloc("* ... but nobody came./%", "obj_spamton_neo_enemy_slash_Step_0_gml_618_0");
				scr_battletext_default();
			}
			else
			{
				msgsetloc(0, "* You whispered Noelle's name.../%", "obj_spamton_neo_enemy_slash_Step_0_gml_623_0");
				scr_battletext_default();
				talktimer = 0;
				actcon = 95;
				alarm[4] = 1;
			}
			savemeactcon++;
		}
		if (actcon == 96 && !i_ex(obj_writer))
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				msgsetloc(0, "... HER?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_637_0");
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				talktimer = 0;
				actcon = 97;
				alarm[4] = 1;
			}
		}
		if (actcon == 98 && !i_ex(obj_writer))
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				msgsetloc(0, "YOU'RE STILL TRYING&TO [Use] HER!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_651_0");
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				actcon = 99;
				alarm[4] = 1;
			}
		}
		if (actcon == 100 && !i_ex(obj_writer))
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				msgsetloc(0, "HA HA HA HA!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_667_0");
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				snd_play(snd_sneo_laugh_long);
				laughtimer = 0;
				talktimer = 0;
				actcon = 101;
				alarm[4] = 1;
			}
		}
		if (actcon == 102 && !i_ex(obj_writer))
		{
			talktimer++;
			if (talktimer == 10)
				snd_stop(snd_sneo_laugh_long);
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				msgsetloc(0, "YOU THINK SHE CAN&[Hear] YOU NOW,&MUTTERING HER NAME!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_685_0");
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				snd_stop(snd_sneo_laugh_long);
				partmode = 1;
				talktimer = 0;
				actcon = 103;
				alarm[4] = 15;
			}
		}
		if (actcon == 104 && !i_ex(obj_writer))
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				msgsetloc(0, "WHAT'S SHE GONNA&DO, MAKE ME AN&[Ice Cream]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_701_0");
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				talktimer = 0;
				actcon = 105;
				alarm[4] = 15;
			}
		}
		if (actcon == 106 && !i_ex(obj_writer))
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				partmode = 41;
				actcon = 107;
				laughtimer = 0;
				alarm[4] = 120;
				snd_free(global.currentsong[0]);
			}
		}
		if (actcon == 107 && alarm[4] < 62)
		{
			headforceframe = 2;
			partrot[5] = 30;
			partmode = 99;
			snd_stop(snd_sneo_laugh_long);
		}
		if (actcon == 108 && !i_ex(obj_writer))
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				partmode = 99;
				headforceframe = 2;
				msgsetloc(0, "HEY, IS IT COLD&IN HERE OR IS IT&JUST ME?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_739_0");
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				talktimer = 0;
				actcon = 109;
				alarm[4] = 40;
			}
		}
		if (actcon == 110)
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				actcon = 111;
				snd_play(snd_noise);
				with (obj_writer)
					instance_destroy();
				with (obj_fountainkris_ch2_sideb)
				{
					blackall = scr_dark_marker(-10, -10, spr_pixel_white);
					blackall.image_xscale = 999;
					blackall.image_yscale = 999;
					blackall.depth = 0;
					blackall.image_alpha = 1;
					blackall.image_blend = c_black;
					blackall.depth = -99999;
				}
				alarm[4] = 60;
			}
		}
		if (actcon == 112)
		{
			actcon = 113;
			snd_play(snd_icespell);
			alarm[4] = 12;
		}
		if (actcon == 114)
		{
			actcon = 115;
			snd_play(snd_damage);
			dmgwriter = instance_create(x + 64, y + 62, obj_dmgwriter);
			dmgwriter.damage = 684 + irandom(20);
			dmgwriter.type = 6;
			dmgwriter.depth = -999999;
			alarm[4] = 3;
		}
		if (actcon == 116)
		{
			actcon = 117;
			snd_stop(snd_damage);
			snd_play(snd_damage);
			dmgwriter = instance_create(x + 84, y + 90, obj_dmgwriter);
			dmgwriter.damage = 684 + irandom(20);
			dmgwriter.type = 6;
			dmgwriter.depth = -999999;
			alarm[4] = 3;
		}
		if (actcon == 118)
		{
			actcon = 119;
			snd_stop(snd_damage);
			snd_play(snd_damage);
			dmgwriter = instance_create(x + 66, y + 119, obj_dmgwriter);
			dmgwriter.damage = 684 + irandom(20);
			dmgwriter.type = 6;
			dmgwriter.depth = -999999;
			alarm[4] = 1;
		}
		if (actcon == 120)
		{
			event_user(3);
			obj_battlecontroller.skipvictory = 1;
			global.fighting = 0;
			if (i_ex(obj_fountainkris_ch2_sideb))
				obj_fountainkris_ch2_sideb.forcend = 1;
			if (i_ex(obj_fountainkris_ch2_sideb))
				obj_fountainkris_ch2_sideb.con = 21;
			scr_wincombat();
		}
		if (scr_sideb_get_phase() > 2)
		{
			if (acting == 2 && actcon == 0)
			{
				msgsetloc(0, "* Kris used X-Slash!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_531_0");
				scr_battletext_default();
				acting = 0;
				actcon = 21;
				krs = scr_act_charsprite("kris", spr_krisb_attack, 0.25, 1);
				krs.depth = obj_herokris.depth + 1;
				alarm[4] = 14;
				snd_pitch(snd_play(snd_scytheburst), 1.2);
				att = instance_create(x + 57, y + 76, obj_basicattack);
				att.image_xscale = 2;
				att.image_yscale = 2;
				caster = 0;
				global.hittarget[0] = 0;
				partmode = 40;
				shockthreshold = 15;
				shocktimer = 9999;
				hurttimer2 = 10;
				var dam = round((((global.battleat[obj_herokris.myself] * 150) / 20) - (global.monsterdf[myself] * 3)) * 1.25);
				scr_damage_enemy(0, dam);
			}
			if (actcon == 22)
			{
				actcon = 23;
				scr_act_charsprite_end();
				krs = scr_act_charsprite("kris", spr_krisb_attack, 0.25, 1);
				krs.depth = obj_herokris.depth + 1;
				alarm[4] = 14;
				snd_pitch(snd_play(snd_scytheburst), 0.8);
				att = instance_create(x + 57, y + 76, obj_basicattack);
				att.image_xscale = -2;
				att.image_yscale = 2;
				caster = 0;
				global.hittarget[11] = 0;
				partmode = 40;
				shockthreshold = 15;
				shocktimer = 9999;
				hurttimer2 = 10;
				var dam = round((((global.battleat[obj_herokris.myself] * 150) / 20) - (global.monsterdf[myself] * 3)) * 1.25);
				scr_damage_enemy(0, dam);
			}
			if (actcon == 24)
			{
				scr_act_charsprite_end();
				actcon = 1;
			}
			if (acting == 3 && actcon == 0)
			{
				var n = irandom_range(42, 5555);
				var small_text = stringsetloc(" Liked this!", "obj_spamton_neo_enemy_slash_Step_0_gml_928_0");
				scr_smallface(0, "none", 6, "rightmid", "bottom", string("" + string([n]) + small_text));
				msgset(0, stringsetloc("* RECOVERED HP with pipis!\\f0 /%", "obj_spamton_neo_enemy_slash_Step_0_gml_581_0"));
				scr_battletext_default();
				acting = 0;
				actcon = 31;
				instance_create(obj_herokris.x + 105, obj_herokris.y + 50, obj_sneo_friedpipis);
			}
			if (actcon == 31 && !i_ex(obj_writer) && !instance_exists(obj_sneo_friedpipis))
				actcon = 1;
		}
		else
		{
			if ((acting == 2 && actcon == 0) || (acting == 3 && actcon == 0))
			{
				var a = 0;
				var maxv = 0;
				for (var i = 0; i < 6; i++)
				{
					if (partvisible[i] == 1 && partweakened[i] > 0)
						a++;
					if (partvisible[i] == 1)
						maxv++;
				}
				if (vinebgcount < 1)
					maxvinecount = maxv;
				var multicut = 1;
				if (global.hp[2] <= 0 && global.hp[3] <= 0 && acting == 2)
				{
					var mercyset = 4;
					if ((global.mercymod[myself] + mercyset) > 100)
						mercyset = 100 - global.mercymod[myself];
					scr_mercyadd(myself, mercyset);
					if (mercyset == 0)
					{
						with (obj_dmgwriter)
						{
							if (type == 5)
								instance_destroy();
						}
						msgsetloc(0, "* You tried to snap a wire... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_946_0");
					}
					else
					{
						msgsetloc(0, "* You snapped desperately!/", "obj_spamton_neo_enemy_slash_Step_0_gml_949_0");
						msgnextloc("* Broke 2 wires!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_950_0");
					}
					multicut = 2;
				}
				else if (acting == 3)
				{
					snapallcount++;
					if (snapallcount == 2)
						snapallcount = 0;
					var mercyset = 7;
					if ((global.mercymod[myself] + mercyset) > 100)
						mercyset = 100 - global.mercymod[myself];
					scr_mercyadd(myself, mercyset);
					if (mercyset == 0)
					{
						with (obj_dmgwriter)
						{
							if (type == 5)
								instance_destroy();
						}
						msgsetloc(0, "* Everyone tried to snap wires... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_961_0");
					}
					else
					{
						msgsetloc(0, "* Everyone snapped wires!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_964_0");
					}
				}
				else
				{
					var simultext = (simultotal == 1) ? stringsetloc("* You snapped a wire!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_275_0") : stringsetloc("* You snapped a wire!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_275_1");
					var mercyset = 2;
					if ((global.mercymod[myself] + mercyset) > 100)
						mercyset = 100 - global.mercymod[myself];
					scr_mercyadd(myself, mercyset);
					if (mercyset == 0)
					{
						with (obj_dmgwriter)
						{
							if (type == 5)
								instance_destroy();
						}
						msgsetloc(0, "* You tried to snap a wire... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_973_0");
					}
					else
					{
						msgset(0, simultext);
					}
				}
				scr_battletext_default();
				if (acting == 2)
					alarm[4] = 30;
				else
					actcon = 1;
				acting = 0;
			}
			if (acting == 5 && actcon == 0)
			{
				actcon = 12;
				acting = 0;
				alarm[4] = 15;
				instance_create(x, y, obj_sneo_throwkris_vine_controller);
				scr_rememberxy();
				scr_move_to_point_over_time(x - 40, cameray() + 195, 8);
			}
		}
		if (actcon == 13)
		{
			msgsetsubloc(0, "* Press ~1 to throw, aim for the weakpoint!", scr_get_input_name(6), "obj_spamton_neo_enemy_slash_Step_0_gml_534_0");
			with (obj_herokris)
				visible = 0;
			with (obj_herosusie)
				visible = 0;
			throwsus = instance_create(obj_herosusie.x, obj_herosusie.y, obj_sneo_throwkris);
			scr_battletext_default();
			actcon = 14;
		}
		if (actcon == 15)
		{
			with (obj_sneo_throwkris_vine_controller)
				con = 2;
			scr_move_to_rememberxy(8);
			actcon = 16;
			alarm[4] = 15;
		}
		if (actcon == 17)
			actcon = 1;
		if (actingsus == 1 && actconsus == 1)
		{
			var i = irandom(5);
			var a = -1;
			var maxv = 0;
			repeat (6)
			{
				if (partvisible[i] == 1 && partweakened[i] > 0)
				{
					a = i;
					break;
				}
				i++;
				if (i > 5)
					i = 0;
				if (partvisible[i] == 1)
					maxv++;
			}
			if (vinebgcount < 1)
				maxvinecount = maxv;
			var multicut = 1;
			if (global.hp[1] <= 0 && global.hp[3] <= 0)
			{
				var mercyset = 4;
				if ((global.mercymod[myself] + mercyset) > 100)
					mercyset = 100 - global.mercymod[myself];
				scr_mercyadd(myself, mercyset);
				if (mercyset == 0)
				{
					with (obj_dmgwriter)
					{
						if (type == 5)
							instance_destroy();
					}
					msgsetloc(0, "* Susie tried to snap a wire... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1127_0");
				}
				else
				{
					msgsetloc(0, "* Susie snapped desperately!/", "obj_spamton_neo_enemy_slash_Step_0_gml_1130_0");
					msgnextloc("* Broke 2 wires!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1131_0");
				}
				multicut = 2;
			}
			else
			{
				var mercyset = 2;
				if ((global.mercymod[myself] + mercyset) > 100)
					mercyset = 100 - global.mercymod[myself];
				scr_mercyadd(myself, mercyset);
				if (mercyset == 0)
				{
					with (obj_dmgwriter)
					{
						if (type == 5)
							instance_destroy();
					}
					msgsetloc(0, "* Susie tried to snap a wire... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1140_0");
				}
				else
				{
					msgsetloc(0, "* Susie snapped a wire!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1141_0");
				}
			}
			scr_battletext_default();
			actconsus = 0;
			actingsus = 0;
			alarm[4] = 30;
		}
		if (actingsus == 2 && actconsus == 1)
		{
			actingsus = 0;
			actcon = 1;
			bigshotcount = 20;
			msgsetloc(0, "* You Super Charged! Can charge bullets faster! Lasts 20 shots./%", "obj_spamton_neo_enemy_slash_Step_0_gml_898_0");
			scr_battletext_default();
		}
		if (actingral == 1 && actconral == 1)
		{
			var i = irandom(5);
			var a = -1;
			var maxv = 0;
			repeat (6)
			{
				if (partvisible[i] == 1 && partweakened[i] > 0)
				{
					a = i;
					break;
				}
				i++;
				if (i > 5)
					i = 0;
				if (partvisible[i] == 1)
					maxv++;
			}
			if (vinebgcount < 1)
				maxvinecount = maxv;
			var multicut = 1;
			if (global.hp[1] <= 0 && global.hp[2] <= 0)
			{
				multicut = 2;
				var mercyset = 4;
				if ((global.mercymod[myself] + mercyset) > 100)
					mercyset = 100 - global.mercymod[myself];
				scr_mercyadd(myself, mercyset);
				if (mercyset == 0)
				{
					with (obj_dmgwriter)
					{
						if (type == 5)
							instance_destroy();
					}
					msgsetloc(0, "* Ralsei tried to snap a wire... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1273_0");
				}
				else
				{
					msgsetloc(0, "* Ralsei snapped desperately!/", "obj_spamton_neo_enemy_slash_Step_0_gml_1276_0");
					msgnextloc("* Broke 2 wires!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1277_0");
				}
			}
			else
			{
				var mercyset = 2;
				if ((global.mercymod[myself] + mercyset) > 100)
					mercyset = 100 - global.mercymod[myself];
				scr_mercyadd(myself, mercyset);
				if (mercyset == 0)
				{
					with (obj_dmgwriter)
					{
						if (type == 5)
							instance_destroy();
					}
					msgsetloc(0, "* Ralsei tried to snap a wire... but it failed!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1285_0");
				}
				else
				{
					msgsetloc(0, "* Ralsei snapped a wire!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1288_0");
				}
			}
			scr_battletext_default();
			actconral = 0;
			actingral = 0;
			actcon = 1;
		}
		if (actingral == 2 && actconral == 1)
		{
			actconral = 0;
			actingral = 0;
			actcon = 1;
			if (instance_number(obj_sneo_tiny_ralsei) < 4)
			{
				var simultext = (simultotal == 1) ? stringsetloc("* The power Ralsei's fluffy warmth surrounds you!./%", "obj_spamton_neo_enemy_slash_Step_0_gml_643_0") : stringsetloc("* Ralsei defended you!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_643_1");
				msgset(0, simultext);
				scr_battletext_default();
				var aa = 0;
				for (var i = 0; i < instance_number(obj_sneo_tiny_ralsei); i++)
				{
					fluff[i] = instance_find(obj_sneo_tiny_ralsei, i);
					fluff[i].place = aa * 90;
					aa++;
				}
				repeat (2)
				{
					instance_create(x, y, obj_sneo_tiny_ralsei);
					var a = 0;
					if (instance_number(obj_sneo_tiny_ralsei) == 4)
					{
						for (var i = 0; i < instance_number(obj_sneo_tiny_ralsei); i += 1)
						{
							enemy[i] = instance_find(obj_sneo_tiny_ralsei, i);
							enemy[i].place = a;
							a += 90;
						}
					}
					if (instance_number(obj_sneo_tiny_ralsei) == 3)
					{
						for (var i = 0; i < instance_number(obj_sneo_tiny_ralsei); i += 1)
						{
							enemy[i] = instance_find(obj_sneo_tiny_ralsei, i);
							enemy[i].place = a;
							a += 180;
						}
					}
					if (instance_number(obj_sneo_tiny_ralsei) == 2)
					{
						for (var i = 0; i < instance_number(obj_sneo_tiny_ralsei); i += 1)
						{
							enemy[i] = instance_find(obj_sneo_tiny_ralsei, i);
							enemy[i].place = a;
							a += 270;
						}
					}
				}
			}
			else
			{
				msgsetloc(0, "* Too many fluff balls!&* Can't make any more!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_679_0");
				scr_battletext_default();
				var a = 2;
				if (global.hp[2] < global.hp[3])
					a = 2;
				if (global.hp[2] < global.hp[4])
					a = 2;
				if (global.hp[3] < global.hp[2])
					a = 3;
				if (global.hp[3] < global.hp[4])
					a = 3;
				if (global.hp[4] < global.hp[2])
					a = 4;
				if (global.hp[4] < global.hp[3])
					a = 4;
				global.hp[a] += 10;
				snd_play(snd_boost);
			}
		}
		if ((actcon == 1 && !instance_exists(obj_writer)) || actconsus == 20 || actconral == 20)
		{
			usedact = 1;
			if (global.mercymod[myself] > 99 && endcon == 0)
				endcon = 1;
			else if (endcon == 0)
				scr_nextact();
		}
	}
	if (endcon == 1)
	{
		endtimer++;
		if (endtimer == 1)
		{
			snd_free(global.batmusic[0]);
			event_user(3);
		}
		if (endtimer > 0 && endtimer < 91)
		{
			if (i_ex(obj_ch2_sceneex2))
			{
				obj_ch2_sceneex2.trackspeed = lerp(-15, 0, endtimer / 90);
				obj_ch2_sceneex2.cityscape_speed_max = lerp(5, 0, endtimer / 90);
			}
		}
		if (endtimer == 91)
		{
			didwejustdie = 1;
			if (global.mercymod[myself] > 99)
				sneo_defeat_cutscene_version = 1;
			if (scr_sideb_get_phase() > 2)
				sneo_defeat_cutscene_version = 2;
			if (sneo_defeat_cutscene_version == 0)
			{
			}
			if (sneo_defeat_cutscene_version == 2)
			{
				msgsetloc(0, "My esteem customer&I see you are attempting to deplete my HP!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1492_0");
				partmode = 99;
				endcon = 2;
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
			}
			else
			{
				msgsetloc(0, "WAIT!!&[$!?!] THE PRESSES!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1009_0");
				partmode = 99;
				endcon = 2;
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
			}
			endtimer = 0;
			endcon = 2;
			talktimer = 0;
			ballooncon = 1;
			balloonend = 0;
		}
	}
	if (sneo_defeat_cutscene_version == 0)
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
					msgsetloc(0, "HAHAHA... KRIS!!!&YOU THINK DEPLETING&MY [8000 Life Points]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1034_0");
					ballooncon = 2;
					balloonend = 0;
					shocktimer = 9999;
					hurttimer2 = 10;
					partmode = 40;
				}
				else if (ballooncon == 2)
				{
					msgsetloc(0, "MEANS YOU'VE WON&[A Free Meal] TO&[Winning]?!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1038_0");
					ballooncon = 3;
					balloonend = 0;
					shocktimer = 9999;
					hurttimer2 = 10;
				}
				else if (ballooncon == 3)
				{
					msgsetloc(0, "NO!!! NO!!! NE-O!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1042_0");
					ballooncon = 4;
					balloonend = 0;
					shocktimer = 9999;
					hurttimer2 = 10;
				}
				else if (ballooncon == 4)
				{
					msgsetloc(0, "KRIS!!&YOUR [Deal] HAS FAILED!!&[NEO] NEVER LOSES!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1046_0");
					ballooncon = 5;
					balloonend = 0;
					shocktimer = 9999;
					hurttimer2 = 10;
				}
				else if (ballooncon == 5)
				{
					msgsetloc(0, "THIS IS [Victory Smoke]!!&IT MEANS IT'S TIME&FOR MY [Second Form]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1052_0");
					ballooncon = 6;
					balloonend = 0;
					shockthreshold = 10;
					hurttimer2 = 20;
					snd_play(snd_damage);
					dontchangepose = 0;
					smokethreshold = 10;
					partmode = 40;
					repeat (6)
					{
						var smokey = instance_create(x + 50, y + 80, obj_afterimage_grow);
						smokey.visible = 0;
						with (smokey)
							scr_script_delayed(scr_var, 1, "visible", 1);
						smokey.depth = depth + 10;
						smokey.image_alpha = 2.5;
						smokey.sprite_index = spr_cakesmoke;
						smokey.hspeed = random_range(2, 10);
						smokey.gravity = -0.5;
						smokey.friction = 0.2;
						smokey.vspeed = random_range(-1, -8);
					}
				}
				else if (ballooncon == 6)
				{
					msgsetloc(0, "ARE YOU READY KRIS!?&FOR MY [Next Trick]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1058_0");
					ballooncon = 7;
					balloonend = 0;
				}
				else if (ballooncon == 7)
				{
					msgsetloc(0, "I WILL FILL MY [Body]&WITH [Electricaty] AND BECOME&SPAMTON [EX]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1062_0");
					ballooncon = 8;
					balloonend = 0;
				}
				else if (ballooncon == 8)
				{
					if (i_ex(obj_ch2_sceneex2))
						obj_ch2_sceneex2.trackspeed = 20;
					msgsetloc(0, "ARE YOU READY [Kids]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1068_0");
					ballooncon = 9;
					balloonend = 0;
					shockthreshold = 10;
					hurttimer2 = 10;
					snd_play(snd_sneo_overpower);
					snd_loop(snd_sneo_overpower);
					snd_pitch(snd_sneo_overpower, 0.3);
					targetbgspeed = -5;
				}
				else if (ballooncon == 9)
				{
					msgsetloc(0, "[Turn Up The JUICE!]&[Turn Up The JUICE!]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1076_0");
					ballooncon = 10;
					balloonend = 0;
					shockthreshold = 5;
					snd_pitch(snd_sneo_overpower, 0.5);
					targetbgspeed = -9;
					smokethreshold = 1;
				}
				else if (ballooncon == 10)
				{
					msgsetloc(0, "[Make Sure You Don't&Get It On Your Shoese!]/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1083_0");
					ballooncon = 11;
					balloonend = 0;
					shockthreshold = 3;
					snd_pitch(snd_sneo_overpower, 0.7);
					targetbgspeed = -13;
				}
				else if (ballooncon == 11)
				{
					msgsetloc(0, "ARE YOU GETTING&ALL THIS [Mike]!?&I'M FINALLY/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1089_0");
					ballooncon = 12;
					balloonend = 0;
					shockthreshold = 2;
					snd_pitch(snd_sneo_overpower, 0.9);
					targetbgspeed = -17;
				}
				else if (ballooncon == 12)
				{
					msgsetloc(0, "I'M FINALLY GONNA&BE A BIG SHOT!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1095_0");
					ballooncon = 13;
					balloonend = 0;
					shockthreshold = 1;
					snd_pitch(snd_sneo_overpower, 1.1);
					targetbgspeed = -21;
				}
				else if (ballooncon == 13)
				{
					msgsetloc(0, "HERE I GO!!!!&WATCH ME FLY,&[MAMA]!!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1101_0");
					ballooncon = 0;
					balloonend = 1;
					shocktimer = 1;
					snd_pitch(snd_sneo_overpower, 1.3);
					targetbgspeed = -25;
				}
				endcon = 3;
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				if (ballooncon >= 8)
				{
					with (obj_writer)
						shake = 2;
				}
				if (ballooncon == 0)
				{
					with (obj_writer)
					{
						shake = 3;
						rate = 3;
					}
				}
				alarm[6] = 1;
			}
			if (i_ex(obj_ch2_sceneex2))
				obj_ch2_sceneex2.trackspeed = lerp(obj_ch2_sceneex2.trackspeed, targetbgspeed * 6, 0.1);
			if (i_ex(obj_ch2_sceneex2))
				obj_ch2_sceneex2.cityscape_speed_max = lerp(obj_ch2_sceneex2.cityscape_speed_max, targetbgspeed, 0.1);
		}
		if (endcon == 4)
		{
			talktimer++;
			if ((button3_p() && talktimer > 15) || !i_ex(obj_writer))
			{
				endtimer++;
				if (endtimer <= 90)
					snd_pitch(snd_sneo_overpower, lerp(1.3, 2, endtimer / 90));
				if (endtimer == 120)
				{
					violentendflash = 1;
					endtimer = 140;
				}
				if (endtimer == 151)
				{
					audio_stop_sound(snd_sneo_overpower);
					with (obj_afterimage_grow)
						instance_destroy();
					snd_play(snd_explosion);
					whiteall = scr_dark_marker(-10, -10, spr_pixel_white);
					whiteall.image_xscale = 999;
					whiteall.image_yscale = 999;
					whiteall.depth = 0;
					whiteall.image_alpha = 0;
				}
				if (endtimer > 150 && endtimer < 162)
					whiteall.image_alpha = lerp(0, 1, (endtimer - 150) / 11);
				if (endtimer == 300)
				{
					blackall = scr_dark_marker(-10, -10, spr_pixel_white);
					blackall.image_xscale = 999;
					blackall.image_yscale = 999;
					blackall.depth = -1;
					blackall.image_alpha = 0;
					blackall.image_blend = c_black;
				}
				if (endtimer > 300 && endtimer < 331)
					blackall.image_alpha = lerp(0, 1, (endtimer - 300) / 30);
				if (endtimer == 331)
				{
					with (whiteall)
					{
						if (global.hp[1] < 1)
							global.hp[1] = 1;
						if (global.hp[2] < 1)
							global.hp[2] = 1;
						if (global.hp[3] < 1)
							global.hp[3] = 1;
						if (i_ex(obj_ch2_sceneex2))
							obj_ch2_sceneex2.forcend = 1;
						if (i_ex(obj_ch2_sceneex2))
							obj_ch2_sceneex2.con = 13;
					}
				}
			}
		}
	}
	if (sneo_defeat_cutscene_version == 1)
	{
		if (endcon == 2)
		{
			var aa = 0;
			if (instance_exists(obj_ch2_sceneex2) && obj_ch2_sceneex2.shop_spamton_bg_con > 0 && obj_ch2_sceneex2.shop_spamton_bg_con < 3)
				aa = 1;
			talktimer++;
			if ((button3_p() && talktimer > 15 && aa == 0) || (!i_ex(obj_writer) && aa == 0))
			{
				if (ballooncon == 7 && instance_exists(obj_ch2_sceneex2) && obj_ch2_sceneex2.shop_spamton_bg_con < 3)
				{
					obj_ch2_sceneex2.shop_spamton_bg_con = 1;
					aa = 1;
				}
			}
			if ((button3_p() && talktimer > 15 && aa == 0) || (!i_ex(obj_writer) && aa == 0))
			{
				with (obj_writer)
					instance_destroy();
				if (ballooncon == 1)
				{
					headendcon = 1;
					msgsetloc(0, "MY... MY [Wires]...&THEY'RE ALMOST [Gone]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1172_0");
					ballooncon = 2;
					balloonend = 0;
					partmode = 1;
				}
				else if (ballooncon == 2)
				{
					msgsetloc(0, "KRIS... YOU...&YOU'RE [Gifting] ME&MY [Freedom]?!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1176_0");
					ballooncon = 3;
					balloonend = 0;
				}
				else if (ballooncon == 3)
				{
					headendcon = 2;
					msgsetloc(0, "KRIS... AFTER EVERYTHING&I DID TO YOU...!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1181_0");
					ballooncon = 4;
					balloonend = 0;
					partmode = 1;
				}
				else if (ballooncon == 4)
				{
					headendcon = 3;
					msgsetloc(0, "AFTER ALL THE&[Unforgettable D3als]&[Free KROMER] I&GAVE YOU/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1186_0");
					ballooncon = 5;
					balloonend = 0;
					partmode = 1;
				}
				else if (ballooncon == 5)
				{
					msgsetloc(0, "YOU'RE FINALLY&REPAYING MY&[Genorisity]!?/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1190_0");
					ballooncon = 6;
					balloonend = 0;
				}
				else if (ballooncon == 6)
				{
					headendcon = 2;
					msgsetloc(0, "KRIS!!! I UNDERSTAND&NOW!! THE GREATEST&DEAL OF ALL!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1195_0");
					ballooncon = 7;
					balloonend = 0;
					partmode = 99;
				}
				else if (ballooncon == 7)
				{
					headendcon = 3;
					global.currentsong[0] = snd_init("spamton_happy.ogg");
					global.currentsong[1] = mus_play(global.currentsong[0]);
					mus_loop(global.currentsong[0]);
					msgsetloc(0, "[Friendship]!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1202_0");
					ballooncon = 8;
					balloonend = 0;
					partmode = 36;
				}
				else if (ballooncon == 8)
				{
					msgsetloc(0, "KRIS!!! MY DAYS AS&A [Long-Nosed Doll]&ARE OVER!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1208_0");
					ballooncon = 9;
					balloonend = 0;
				}
				else if (ballooncon == 9)
				{
					msgsetloc(0, "CUT THAT&[Wire] AND MAKE&ME A [Real Boy]!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1212_0");
					ballooncon = 10;
					balloonend = 0;
				}
				else if (ballooncon == 10)
				{
					msgsetloc(0, "ARE YOU WATCHING,&[Heaven]!? IT'S&TIME FOR SPAMTON'S&[Comeback Special]!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1216_0");
					ballooncon = 11;
					balloonend = 0;
				}
				else if (ballooncon == 11)
				{
					msgsetloc(0, "AND THIS TIME...&I LIVE FOR MYSELF!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1220_0");
					ballooncon = 12;
					balloonend = 0;
				}
				else if (ballooncon == 12)
				{
					msgsetloc(0, "NO... MYSELF AND&MY [Friend(s)]!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1225_0");
					ballooncon = 13;
					balloonend = 0;
					partmode = 36;
				}
				else if (ballooncon == 13)
				{
					msgsetloc(0, "HERE I GO!!!!&WATCH ME FLY,&[MAMA]!!!!/%", "obj_spamton_neo_enemy_slash_Step_0_gml_1229_0");
					ballooncon = 0;
					balloonend = 1;
					partmode = 36;
					dancealtcon = 2;
				}
				endcon = 3;
				global.typer = 72;
				scr_enemyblcon(x - 10, global.monstery[myself], 10);
				if (ballooncon >= 8)
				{
					with (obj_writer)
						shake = 2;
				}
				if (ballooncon == 13 || ballooncon == 0)
				{
					with (obj_writer)
					{
						shake = 3;
						rate = 3;
					}
				}
				alarm[6] = 1;
			}
			if (i_ex(obj_ch2_sceneex2))
				obj_ch2_sceneex2.trackspeed = lerp(obj_ch2_sceneex2.trackspeed, targetbgspeed * 6, 0.1);
			if (i_ex(obj_ch2_sceneex2))
				obj_ch2_sceneex2.cityscape_speed_max = lerp(obj_ch2_sceneex2.cityscape_speed_max, targetbgspeed, 0.1);
			if (ballooncon == 13)
			{
				siner += 2;
				for (var i = 0; i < 8; i += 1)
					partsiner[i] += 0.6;
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
					snd_free(global.currentsong[0]);
					snd_play(snd_noise);
					snd_play(snd_damage);
					blackall4 = scr_dark_marker(-10, -10, spr_pixel_white);
					blackall4.image_xscale = 999;
					blackall4.image_yscale = 999;
					blackall4.depth = obj_ch2_sceneex2.depth - 1;
					blackall4.image_alpha = 0.5;
					blackall4.image_blend = c_black;
					vine = instance_create(x, y, obj_sneo_vine_cut);
					vine.x1 = x + partx[4] + (partxoff[4] / 1.2) + 20 + (sin(partsiner[4] / 25) * 1.8);
					vine.x2 = x + partx[4] + (partxoff[4] / 1.5) + 32;
					vine.y1 = ((y + party[4]) - 10) + partyoff[4];
					vine.y2 = -400;
					vine.depth = depth + 1;
					vine.vineid = 4;
					vfx = instance_create(x + partx[4] + (partxoff[4] / 1.2) + 16, y - 35, obj_sneo_vine_weak);
					vfx.depth = depth - 5;
					lastwirecon = 3;
					partmode = 99;
					if (i_ex(obj_ch2_sceneex2))
					{
						obj_ch2_sceneex2.cityscape_speed_max = 0;
						obj_ch2_sceneex2.cityscape_speed = 0;
						obj_ch2_sceneex2.trackspeed = 0;
					}
				}
				if (endtimer == 91)
				{
					depth = -99999;
					blackall = scr_dark_marker(-10, -10, spr_pixel_white);
					blackall.image_xscale = 999;
					blackall.image_yscale = 999;
					blackall.depth = 0;
					blackall.image_alpha = 1;
					blackall.image_blend = c_black;
					partmode = 43;
				}
				if (endtimer == 330)
				{
					blackall2 = scr_dark_marker(-10, -10, spr_pixel_white);
					blackall2.image_xscale = 999;
					blackall2.image_yscale = 999;
					blackall2.depth = 0;
					blackall2.image_alpha = 1;
					blackall2.image_blend = c_black;
					blackall2.depth = -999999;
				}
				if (endtimer == 450)
				{
					with (blackall2)
					{
						if (global.hp[1] < 1)
							global.hp[1] = 1;
						if (global.hp[2] < 1)
							global.hp[2] = 1;
						if (global.hp[3] < 1)
							global.hp[3] = 1;
						if (i_ex(obj_ch2_sceneex2))
							obj_ch2_sceneex2.forcend = 1;
						if (i_ex(obj_ch2_sceneex2))
							obj_ch2_sceneex2.con = 13;
					}
				}
			}
			if (ballooncon == 0 && endtimer == 0)
			{
				siner += 3;
				for (var i = 0; i < 8; i += 1)
					partsiner[i] += 0.9;
			}
		}
	}
	if (endcon == 10)
	{
		endcon = 11;
		obj_battlecontroller.skipvictory = 1;
		scr_wincombat();
	}
	if (weirdpathendcon == 6)
	{
		partmode = 40;
		dontchangepose = 0;
	}
	if (stoprumblesfx > 0)
		stoprumblesfx--;
	if (stoprumblesfx == 1)
		audio_stop_sound(snd_rumble);
	if (scr_debug())
	{
	}
}
