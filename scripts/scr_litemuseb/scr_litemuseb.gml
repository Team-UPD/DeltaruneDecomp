function scr_litemuseb(arg0, arg1)
{
	switch (arg1)
	{
		case 0:
			global.msg[0] = stringsetloc("* You grasped at nothing./%%", "scr_litemuseb_slash_scr_litemuseb_gml_6_0");
			break;
		case 1:
			global.msg[0] = stringsetloc("* You drank the hot chocolate^1.&* It tasted wonderful^1.&* Your throat tightened.../%", "scr_litemuseb_slash_scr_litemuseb_gml_9_0");
			snd_play(snd_swallow);
			scr_writetext(0, "x", 0, 0);
			script_execute(scr_litemshift, arg0, 0);
			break;
		case 2:
			global.msg[0] = stringsetloc("* You equipped the Pencil./%", "scr_litemuseb_slash_scr_litemuseb_gml_18_0");
			scr_lweaponeq(arg0, arg1);
			snd_play(snd_item);
			scr_writetext(0, "x", 0, 0);
			break;
		case 3:
			global.msg[0] = stringsetloc("* You re-applied the bandage.", "scr_litemuseb_slash_scr_litemuseb_gml_26_0");
			script_execute(scr_lrecoitem, 1);
			script_execute(scr_litemshift, arg0, 0);
			break;
		case 4:
			global.msg[0] = stringsetloc("* You held out the flowers^1.&* A floral scent fills the air^1.&* Nothing happened./%", "scr_litemuseb_slash_scr_litemuseb_gml_34_0");
			scr_writetext(0, "x", 0, 0);
			break;
		case 5:
			global.msg[0] = stringsetloc("* You looked at the junk ball in admiration^1.&* Nothing happened./%", "scr_litemuseb_slash_scr_litemuseb_gml_42_0");
			scr_writetext(0, "x", 0, 0);
			break;
		case 6:
			global.msg[0] = stringsetloc("* You equipped the Halloween Pencil./%", "scr_litemuseb_slash_scr_litemuseb_gml_48_0");
			scr_lweaponeq(arg0, arg1);
			snd_play(snd_item);
			scr_writetext(0, "x", 0, 0);
			break;
		case 7:
			global.msg[0] = stringsetloc("* You equipped the Lucky Pencil./%", "scr_litemuseb_slash_scr_litemuseb_gml_56_0");
			scr_lweaponeq(arg0, arg1);
			snd_play(snd_item);
			scr_writetext(0, "x", 0, 0);
			break;
		case 8:
			global.msg[0] = stringsetloc("* You used the Egg./%", "scr_litemuseb_slash_scr_litemuseb_gml_63_0");
			snd_play(snd_egg);
			scr_writetext(0, "x", 0, 0);
			break;
		case 9:
			msgsetloc(0, "* You held the cards^1.&* They felt flimsy between your fingers./%", "scr_litemuseb_slash_scr_litemuseb_gml_69_0");
			scr_writetext(0, "x", 0, 0);
			break;
		case 10:
			var consume_item = 0;
			var have_susie = scr_havechar(2);
			var sans_npc = 0;
			if (i_ex(obj_marker))
			{
				with (obj_marker)
				{
					if (sprite_index == spr_sans_d && abs(obj_mainchara.x - x) <= 20 && abs(obj_mainchara.y - y) <= 40)
						sans_npc = 1;
				}
			}
			var alphys_npc = 0;
			if (i_ex(obj_npc_sign))
			{
				with (obj_npc_sign)
				{
					if (sprite_index == spr_alphysd && abs(obj_mainchara.x - x) <= 20 && abs(obj_mainchara.y - y) <= 40)
						alphys_npc = 1;
				}
			}
			if (sans_npc)
			{
				consume_item = 1;
				global.lgold += 5;
				global.flag[342] = 4;
				scr_speaker("sans");
				msgsetloc(0, "* what? a heart shaped box of chocolates?/", "scr_litemuseb_slash_scr_litemuseb_gml_107_0");
				msgnextloc("\\E3* oh^1, i get it./", "scr_litemuseb_slash_scr_litemuseb_gml_108_0");
				msgnextloc("\\E2* heh./", "scr_litemuseb_slash_scr_litemuseb_gml_109_0");
				msgnextloc("* wow./", "scr_litemuseb_slash_scr_litemuseb_gml_110_0");
				msgnextloc("\\E0* you're really.../", "scr_litemuseb_slash_scr_litemuseb_gml_111_0");
				msgnextloc("* hm./", "scr_litemuseb_slash_scr_litemuseb_gml_112_0");
				msgnextloc("\\E1* alright^1, alright./", "scr_litemuseb_slash_scr_litemuseb_gml_113_0");
				msgnextloc("\\E0* ..^1. okay./", "scr_litemuseb_slash_scr_litemuseb_gml_114_0");
				msgnextloc("\\E3* you wanna make a return on these^1, don't you?/", "scr_litemuseb_slash_scr_litemuseb_gml_115_0");
				msgnextloc("\\E5* okay^1, okay^1, no need to break my heart./", "scr_litemuseb_slash_scr_litemuseb_gml_116_0_b");
				msgnextloc("\\E0* here's five dollars./", "scr_litemuseb_slash_scr_litemuseb_gml_117_0_b");
				scr_anyface_next("no_name", 0);
				msgnextloc("* (You traded the chocolates for 5 dollars.)/%", "scr_litemuseb_slash_scr_litemuseb_gml_119_0");
			}
			else if (alphys_npc)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You could give Alphys the chocolate if you talk to her.)/%", "scr_litemuseb_slash_scr_litemuseb_gml_123_0");
			}
			else if (have_susie)
			{
				consume_item = 1;
				global.lhp = 19;
				global.flag[342] = 2;
				scr_speaker("susie");
				msgsetloc(0, "\\E7* Woah^1, Kris^1, where the hell'd you get that?/", "scr_litemuseb_slash_scr_litemuseb_gml_131_0");
				msgnextloc("\\E6* ..^1. someone gave it to you?/", "scr_litemuseb_slash_scr_litemuseb_gml_132_0");
				msgnextloc("\\EY* HAHAHA!^1! YEAH RIGHT!!^1! You stole it^1, didn't you!?/", "scr_litemuseb_slash_scr_litemuseb_gml_133_0");
				msgnextloc("\\E2* Well^1, c'mon!^1! Let's eat it and hide the evidence!!/", "scr_litemuseb_slash_scr_litemuseb_gml_134_0");
				scr_anyface_next("no_name", 0);
				msgnextloc("* (You and Susie shared the heart-shaped box of candies.)/", "scr_litemuseb_slash_scr_litemuseb_gml_136_0_b");
				msgnextloc("* (Both of you had a feeling in your chest...)/", "scr_litemuseb_slash_scr_litemuseb_gml_137_0_b");
				scr_anyface_next("susie", 12);
				msgnextloc("\\EC* Ow^1, my stomach.../", "scr_litemuseb_slash_scr_litemuseb_gml_139_0");
				scr_anyface_next("no_name", 0);
				msgnextloc("* (..^1. that you shouldn't have eaten all of it.)/%", "scr_litemuseb_slash_scr_litemuseb_gml_141_0");
			}
			else
			{
				consume_item = 1;
				global.lhp = 19;
				global.flag[342] = 1;
				scr_speaker("no_name");
				msgsetloc(0, "* (You unhesitatingly devoured the box of heart shaped candies.)/", "scr_litemuseb_slash_scr_litemuseb_gml_149_0");
				msgnextloc("* (Your guts are being destroyed.)/", "scr_litemuseb_slash_scr_litemuseb_gml_150_0");
				msgnextloc("* (You accept this destruction as part of life...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_151_0");
				scr_writetext(0, "x", 0, 0);
			}
			d_make();
			if (consume_item)
			{
				script_execute(scr_litemshift, arg0, 0);
				with (obj_event_manager)
					trigger_event((0 << 0), (10 << 0));
			}
			break;
		case 11:
			if (scr_havechar(2) && global.flag[953] == 0)
			{
				global.flag[953] = 1;
				msgsetloc(0, "* You looked through the glass./", "scr_litemuseb_slash_scr_litemuseb_gml_168_0_b");
				msgnextloc("* For some strange reason^1, for just a brief moment.../", "scr_litemuseb_slash_scr_litemuseb_gml_169_0");
				msgnextloc("* You thought you saw Susie glaring at you^1, coldly.../", "scr_litemuseb_slash_scr_litemuseb_gml_170_0_b");
				msgnextloc("* But when you moved the glass away^1,/", "scr_litemuseb_slash_scr_litemuseb_gml_171_0_b");
				msgnextloc("* You see her looking at you^1, smiling and making a rude gesture./%", "scr_litemuseb_slash_scr_litemuseb_gml_172_0_b");
			}
			else if (!scr_havechar(2) && global.flag[281] == 0)
			{
				global.flag[281] = 1;
				msgsetloc(0, "* You looked through the glass./", "scr_litemuseb_slash_scr_litemuseb_gml_168_0_b");
				msgnextloc("* For some strange reason^1, for just a brief moment.../", "scr_litemuseb_slash_scr_litemuseb_gml_169_0");
				msgnextloc("* You thought you saw through your hand./%", "scr_litemuseb_slash_scr_litemuseb_gml_182_0_b");
			}
			else if (global.flag[951] == 0)
			{
				global.flag[951] = 1;
				msgsetloc(0, "* You looked through the glass./", "scr_litemuseb_slash_scr_litemuseb_gml_178_0");
				msgnextloc("* ..^1. but nothing happened./%", "scr_litemuseb_slash_scr_litemuseb_gml_179_0");
			}
			else
			{
				msgsetloc(0, "* It doesn't seem very useful./%", "scr_litemuseb_slash_scr_litemuseb_gml_182_0");
			}
			scr_writetext(0, "x", 0, 0);
			break;
		case 201:
			tempsaid = 0;
			snd_play_x(snd_phone, 0.7, 1);
			global.msg[0] = stringsetloc("* Ring.../", "scr_litemuseb_slash_scr_litemuseb_gml_116_0");
			global.msg[1] = stringsetloc("* No one picked up./%", "scr_litemuseb_slash_scr_litemuseb_gml_117_0");
			if (room == room_krisroom || room == room_krishallway || room == room_torbathroom)
			{
				tempsaid = 1;
				global.flag[268] = 1;
				scr_torface(1, 0);
				global.msg[2] = stringsetloc("\\E0* Hello?&* Dreemurr residence...&* Who might this be...?/", "scr_litemuseb_slash_scr_litemuseb_gml_126_0");
				global.msg[3] = stringsetloc("\\E3* ... Kris?/", "scr_litemuseb_slash_scr_litemuseb_gml_127_0");
				global.msg[4] = stringsetloc("\\E5* Sigh... Do not make me come over there./", "scr_litemuseb_slash_scr_litemuseb_gml_128_0");
				scr_noface(5);
				global.msg[6] = stringsetloc("* Click.../%", "scr_litemuseb_slash_scr_litemuseb_gml_130_0");
			}
			if (room == room_torhouse)
			{
				tempsaid = 1;
				global.msg[0] = stringsetloc("* Ring.../", "scr_litemuseb_slash_scr_litemuseb_gml_136_0");
				global.msg[1] = stringsetloc("* (The phone is ringing^1, but you can't get it.)/", "scr_litemuseb_slash_scr_litemuseb_gml_137_0");
				global.msg[2] = stringsetloc("* (You're already on the phone^1, after all...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_138_0");
			}
			if (global.chapter == 1)
			{
				if (tempsaid == 0 && global.plot >= 250)
				{
					if (global.flag[272] == 0)
					{
						global.msc = 365;
						scr_text(global.msc);
					}
					if (global.flag[272] == 1)
					{
						global.msg[0] = stringsetloc("* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_156_0");
						scr_torface(1, 1);
						global.msg[2] = stringsetloc("* Kris^1, honey^1, what is it?/", "scr_litemuseb_slash_scr_litemuseb_gml_158_0");
						global.msg[3] = stringsetloc("\\E3* What^1? No^1, I am not giving you a ride home./", "scr_litemuseb_slash_scr_litemuseb_gml_159_0");
						global.msg[4] = stringsetloc("\\E1* Our house is not far^1. It is just at the top of town./", "scr_litemuseb_slash_scr_litemuseb_gml_160_0");
						global.msg[5] = stringsetloc("\\E4* Try walking^1. It builds character^1, honey./", "scr_litemuseb_slash_scr_litemuseb_gml_161_0");
						scr_noface(6);
						global.msg[7] = stringsetloc("* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_163_0");
					}
					if (global.flag[272] >= 2)
					{
						global.msg[0] = stringsetloc("* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_168_0");
						scr_torface(1, 1);
						global.msg[2] = stringsetloc("* Kris^1, I am grading papers./", "scr_litemuseb_slash_scr_litemuseb_gml_170_0");
						global.msg[3] = stringsetloc("\\E0* I can talk to you when you get back^1, alright?/", "scr_litemuseb_slash_scr_litemuseb_gml_171_0");
						global.msg[4] = stringsetloc("\\E0* Our house is only at the top of town^1, you know./", "scr_litemuseb_slash_scr_litemuseb_gml_172_0");
						scr_noface(5);
						global.msg[6] = stringsetloc("* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_174_0");
					}
					global.flag[272] += 1;
				}
			}
			if (global.chapter == 2)
			{
				if (global.plot >= 9 && global.plot <= 20)
				{
					if (room == room_schoollobby && global.plot == 9)
					{
						if (global.flag[306] == 0)
						{
							global.flag[306] = 1;
							global.flag[305] = 1;
							scr_speaker("no name");
							msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_271_0");
							scr_anyface_next("toriel", 1);
							msgnextloc("\\M1\\E1* Oh^1, excuse me^1, I seem to be receiving a phone call./", "scr_litemuseb_slash_scr_litemuseb_gml_273_0");
							msgnextloc("\\E0* Kris...? What is it^1, honey?/", "scr_litemuseb_slash_scr_litemuseb_gml_274_0");
							if (global.flag[303] == 1)
								msgnextloc("\\E3* What? You are \"normal?\"/", "scr_litemuseb_slash_scr_litemuseb_gml_275_0");
							if (global.flag[303] == 0)
								msgnextloc("\\E3* What? You made a \"trash orb\"?/", "scr_litemuseb_slash_scr_litemuseb_gml_276_0");
							msgnextloc("\\E4* ..^1. Could you explain what you mean by that?/", "scr_litemuseb_slash_scr_litemuseb_gml_277_0");
							scr_anyface_next("alphys", 6);
							msgnextloc("\\E6* (Kris^1, d-don't give the phone to me!!!)/", "scr_litemuseb_slash_scr_litemuseb_gml_279_0");
							scr_anyface_next("toriel", 1);
							msgnextloc("\\E1* Oh^1, you are going to the library later?/", "scr_litemuseb_slash_scr_litemuseb_gml_281_0");
							msgnextloc("\\E0* Well^1, thank you for telling me this time^1! Have a nice time!/", "scr_litemuseb_slash_scr_litemuseb_gml_282_0");
							scr_anyface_next("none", 0);
							msgnextloc("\\M0* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_284_0");
						}
						else
						{
							scr_speaker("no name");
							msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_289_0");
							scr_anyface_next("toriel", 1);
							msgnextloc("\\M1\\E1* Kris^1, do not worry about the library./", "scr_litemuseb_slash_scr_litemuseb_gml_291_0");
							scr_anyface_next("none", 0);
							msgnextloc("\\M0* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_293_0");
						}
					}
					else if (global.flag[305] == 0)
					{
						scr_speaker("no name");
						msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_302_0");
						scr_anyface_next("toriel", 1);
						msgnextloc("\\E0* Ah^1, Kris^1! You are going to do your project...?/", "scr_litemuseb_slash_scr_litemuseb_gml_304_0");
						msgnextloc("\\E1* Oh^1, are you calling to ask for my help!?/", "scr_litemuseb_slash_scr_litemuseb_gml_305_0");
						msgnextloc("\\E4* I will go find our homemade scented glue-sticks!/", "scr_litemuseb_slash_scr_litemuseb_gml_306_0");
						msgnextloc("\\E8* ..^1. Oh? You have a partner this time?/", "scr_litemuseb_slash_scr_litemuseb_gml_307_0");
						msgnextloc("\\E9* Kris!^1! That's wonderful!!/", "scr_litemuseb_slash_scr_litemuseb_gml_308_0");
						msgnextloc("\\E4* I hope they like butterscotch-scented gluesticks!/", "scr_litemuseb_slash_scr_litemuseb_gml_309_0");
						scr_anyface_next("none", 0);
						msgnextloc("* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_311_0");
						global.flag[305] = 1;
					}
					else
					{
						scr_speaker("no name");
						msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_317_0");
						scr_anyface_next("toriel", 0);
						msgnextloc("\\E0* Kris^1, do not worry about going to the library./", "scr_litemuseb_slash_scr_litemuseb_gml_319_0");
						msgnextloc("\\E5* If Berdly harasses you about our debt.../", "scr_litemuseb_slash_scr_litemuseb_gml_320_0");
						msgnextloc("\\E4* I will come and throw a smoke bomb so you can escape./", "scr_litemuseb_slash_scr_litemuseb_gml_321_0");
						msgnextloc("\\E0* ..^1. maybe not. Hee hee hee. Try your best^1, honey./", "scr_litemuseb_slash_scr_litemuseb_gml_322_0");
						scr_anyface_next("none", 0);
						msgnextloc("* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_324_0");
					}
				}
				if (global.plot >= 200 && global.plot < 210)
				{
					if (global.flag[380] == 0)
					{
						global.flag[380] = 1;
						scr_speaker("no name");
						msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_336_0");
						scr_anyface_next("toriel", 0);
						msgnextloc("\\E0* Hi honey^1! How was your group project?/", "scr_litemuseb_slash_scr_litemuseb_gml_338_0");
						msgnextloc("\\E0* I can give you a ride home in a minute^1, I am just.../", "scr_litemuseb_slash_scr_litemuseb_gml_339_0");
						msgnextloc("\\E1* ..^1. oh? No need?/", "scr_litemuseb_slash_scr_litemuseb_gml_340_0");
						msgnextloc("\\E8* You are still spending time with a friend...?/", "scr_litemuseb_slash_scr_litemuseb_gml_341_0");
						msgnextloc("\\E4* Oh dear^1! Two days in a row^1, Kris^1! Is that a record?/", "scr_litemuseb_slash_scr_litemuseb_gml_342_0");
						msgnextloc("\\E0* Have fun^1, honey^1! Be back before sunset!/", "scr_litemuseb_slash_scr_litemuseb_gml_343_0");
						scr_anyface_next("none", 0);
						msgnextloc("* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_345_0");
					}
					else
					{
						scr_speaker("no name");
						msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_349_0");
						scr_anyface_next("toriel", "4");
						msgnextloc("\\E4* Calling me again? What must your friend think?/", "scr_litemuseb_slash_scr_litemuseb_gml_351_0");
						msgnextloc("\\E0* Have fun with your friend^1, honey!/", "scr_litemuseb_slash_scr_litemuseb_gml_352_0");
						scr_anyface_next("none", 0);
						msgnextloc("* (Click...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_354_0");
					}
				}
				if (global.plot == 210 || global.plot == 211)
				{
					if (global.flag[436] == 0)
					{
						global.flag[436] = 1;
						if (room == room_torbathroom)
						{
							scr_speaker("no_name");
							msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_366_0");
							scr_anyface_next("toriel", 0);
							msgnextloc("\\E0* Hello^1, Dreemurr residence./", "scr_litemuseb_slash_scr_litemuseb_gml_368_0");
							msgnextloc("\\E8* What? You would like to talk to \"Susie\"?/", "scr_litemuseb_slash_scr_litemuseb_gml_369_0");
							msgnextloc("\\E3* .../", "scr_litemuseb_slash_scr_litemuseb_gml_370_0");
							msgnextloc("\\E4* Of course^1, here you are./", "scr_litemuseb_slash_scr_litemuseb_gml_371_0");
							scr_anyface_next("susie", 17);
							msgnextloc("\\EH* KRIS FINISH WASHING YOUR DAMN HANDS!!!/%", "scr_litemuseb_slash_scr_litemuseb_gml_373_0");
						}
						else
						{
							scr_speaker("no_name");
							msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_378_0");
							scr_anyface_next("toriel", 1);
							msgnextloc("\\E1* Kris^1, the phone is going./", "scr_litemuseb_slash_scr_litemuseb_gml_380_0");
							msgnextloc("\\E0* Would you mind getting it for me while I.../", "scr_litemuseb_slash_scr_litemuseb_gml_381_0");
							msgnextloc("\\E8* .../", "scr_litemuseb_slash_scr_litemuseb_gml_382_0");
							msgnextloc("\\E3* Kris? Why are you calling our house?/%", "scr_litemuseb_slash_scr_litemuseb_gml_383_0");
						}
					}
					else
					{
						scr_speaker("no_name");
						msgsetloc(0, "* (Ring^1, ring...)/", "scr_litemuseb_slash_scr_litemuseb_gml_389_0");
						msgnextloc("* (Everybody seems too busy to pick up the phone...)/%", "scr_litemuseb_slash_scr_litemuseb_gml_390_0");
					}
				}
			}
			scr_writetext(0, "x", 0, 0);
			break;
		case 202:
			global.msc = 375;
			scr_text(global.msc);
			global.typer = 5;
			global.fc = 0;
			instance_create(0, 0, obj_dialoguer);
			break;
	}
}
