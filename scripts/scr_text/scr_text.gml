function scr_text(arg0)
{
	switch (arg0)
	{
		case 0:
			break;
		case 10:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_8_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_9_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_12_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_13_0_b");
			global.msg[0] = stringsetloc("* You really didn't want to throw it away./", "scr_text_slash_scr_text_gml_12_0");
			global.msg[1] = stringsetloc("* Throw it away anyway?/", "scr_text_slash_scr_text_gml_13_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_14_0");
			if (global.chapter >= 2)
				msgsetloc(0, "* You took it from your pocket^1.&* You have a \\cYvery^1, very^1, bad feeling\\c0 about throwing it away./", "scr_text_slash_scr_text_gml_19_0");
			break;
		case 11:
			if (global.choice == 0)
			{
				global.flag[466] = 1;
				snd_play(snd_bageldefeat);
				global.msg[0] = stringsetloc("* Hand shaking^1, you dropped the ball of junk on the ground./", "scr_text_slash_scr_text_gml_20_0");
				global.msg[1] = stringsetloc("* It broke into pieces./", "scr_text_slash_scr_text_gml_21_0");
				global.msg[2] = stringsetloc("* You felt bitter./%", "scr_text_slash_scr_text_gml_22_0");
				script_execute(scr_litemshift, global.menucoord[1], 0);
				for (i = 0; i < 12; i += 1)
					global.item[i] = 0;
				for (i = 0; i < 48; i += 1)
				{
					global.armor[i] = 0;
					global.weapon[i] = 0;
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* You felt a feeling of relief./%", "scr_text_slash_scr_text_gml_34_0");
			}
			break;
		case 100:
			global.msg[0] = stringsetloc("* Hey, Kris^1! What's up^1?&* Didja lose your pencil again?/", "scr_text_slash_scr_text_gml_39_0");
			global.msg[1] = stringsetloc("\\E4* Here^1, you want the candy-cane one or the one with lights on it?/", "scr_text_slash_scr_text_gml_40_0");
			global.msg[2] = stringsetloc("\\E1* Huh^1?&* You want to be partners?/", "scr_text_slash_scr_text_gml_41_0");
			global.msg[3] = stringsetloc("\\E4* Ummm..^1. Sorry..^1.&* Berdly already asked me.../", "scr_text_slash_scr_text_gml_42_0");
			global.msg[4] = stringsetloc("\\E0* But I could ask Ms. Alphys if we could make a group of 3!/", "scr_text_slash_scr_text_gml_43_0");
			global.msg[5] = stringsetloc("\\E4* I'll ask if you're sure!& &Not yet     Yes. Ask.\\C1 ", "scr_text_slash_scr_text_gml_44_0");
			global.msg[6] = stringsetloc(" ", "scr_text_slash_scr_text_gml_47_0");
			break;
		case 101:
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E0* OK^1, I'll ask!/", "scr_text_slash_scr_text_gml_51_0");
				global.msg[1] = stringsetloc("* Miss Alphys^1!&* Umm^1, is it OK if we have a group of 3?/%", "scr_text_slash_scr_text_gml_52_0");
				with (obj_classscene)
					con = 20;
			}
			if (global.choice == 0)
				global.msg[0] = stringsetloc("\\E4* Yeah^1, I'm sure there's someone else you can ask!/%", "scr_text_slash_scr_text_gml_57_0");
			break;
		case 102:
			global.msg[0] = stringsetloc("\\E0* Do you wanna be partners?&Not yet     Yes\\C1 ", "scr_text_slash_scr_text_gml_62_0");
			global.msg[1] = stringsetloc(" ", "scr_text_slash_scr_text_gml_65_0");
			break;
		case 103:
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E0* OK^1, I'll ask!/", "scr_text_slash_scr_text_gml_69_0");
				global.msg[1] = stringsetloc("* Miss Alphys^1!&* Umm^1, is it OK if we have a group of 3?/%", "scr_text_slash_scr_text_gml_70_0");
				with (obj_classscene)
					con = 20;
			}
			if (global.choice == 0)
				global.msg[0] = stringsetloc("\\E4* Umm^1, OK^1.&* You just keep doing your thing^1, Kris./%", "scr_text_slash_scr_text_gml_75_0");
			break;
		case 104:
			global.msg[0] = stringsetloc("\\E0* Alright^1.&* Let's get this over with./", "scr_text_slash_scr_text_gml_80_0");
			global.msg[1] = stringsetloc("* We'll get more chalk^1.&* Mosey back to class^1.&* And then^1, Kris.../", "scr_text_slash_scr_text_gml_81_0");
			global.msg[2] = stringsetloc("\\E2* YOU'LL do our project./", "scr_text_slash_scr_text_gml_82_0");
			global.msg[3] = stringsetloc("* How's that sound?& &Good        Bad\\C1 ", "scr_text_slash_scr_text_gml_83_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_86_0");
			break;
		case 105:
			global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_90_0");
			break;
		case 110:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_92_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_93_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_96_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_97_0");
			if (global.flag[100] == 0)
			{
				global.msg[0] = stringsetloc("* (There's something glowing inside.)/", "scr_text_slash_scr_text_gml_98_0");
				global.msg[1] = stringsetloc("* (Take it?)/ ", "scr_text_slash_scr_text_gml_99_0");
				global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_100_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* (It's dark inside.)/%", "scr_text_slash_scr_text_gml_104_0");
			}
			break;
		case 111:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* (You got the Glowshard.)/%", "scr_text_slash_scr_text_gml_112_0");
				global.flag[100] = 1;
				scr_itemget(3);
				with (obj_readable_room1)
				{
					with (shine)
						instance_destroy();
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* (It stayed.)/%", "scr_text_slash_scr_text_gml_119_0");
			}
			break;
		case 120:
			global.choicemsg[0] = stringsetloc("#Listen", "scr_text_slash_scr_text_gml_125_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_126_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_129_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_130_0_b");
			global.msg[0] = stringsetloc("* Welcome^1.&* I am the \\cYPrince\\cW of this \\cYKingdom\\cW.../", "scr_text_slash_scr_text_gml_129_0");
			global.msg[1] = stringsetloc("* The \\cYKINGDOM OF DARKNESS\\cW./", "scr_text_slash_scr_text_gml_130_0");
			global.msg[2] = stringsetloc("* Kris^1, Susie..^1.&* There is a \\cYLEGEND\\cW in this land./", "scr_text_slash_scr_text_gml_131_0");
			global.msg[3] = stringsetloc("* A LEGEND that one day^1, two \\cYHEROES of LIGHT\\cW will arrive,/", "scr_text_slash_scr_text_gml_132_0");
			global.msg[4] = stringsetloc("* And fulfill the ancient prophecy^1, foretold by time and space./", "scr_text_slash_scr_text_gml_133_0");
			global.msg[5] = stringsetloc("* Please^1, Heroes..^1.&* Listen to my tale.../", "scr_text_slash_scr_text_gml_134_0");
			global.msg[6] = stringsetloc(" \\C2 ", "scr_text_slash_scr_text_gml_135_0");
			global.msg[7] = stringsetloc(" ", "scr_text_slash_scr_text_gml_138_0");
			break;
		case 121:
			global.choicemsg[0] = stringsetloc("#Listen", "scr_text_slash_scr_text_gml_140_0");
			global.choicemsg[1] = stringsetloc("#We know it#Already", "scr_text_slash_scr_text_gml_141_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_144_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_145_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* Very well then.../%", "scr_text_slash_scr_text_gml_146_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_150_0");
				global.msg[1] = stringsetloc("\\E1* Umm, r-really^1?&* Are you sure^1?&* It's fairly important./", "scr_text_slash_scr_text_gml_151_0");
				global.msg[2] = stringsetloc("* And... um^1, in my opinion^1, it's a really nice \\cYPROPHECY\\cW!/", "scr_text_slash_scr_text_gml_152_0");
				global.msg[3] = stringsetloc("* I think you'd quite like it!/", "scr_text_slash_scr_text_gml_153_0");
				global.msg[4] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_154_0");
				global.msg[5] = stringsetloc(" ", "scr_text_slash_scr_text_gml_157_0");
			}
			break;
		case 122:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E0* Phew^1!&* Um^1, very well then.../%", "scr_text_slash_scr_text_gml_163_0");
			}
			else
			{
				global.flag[203] = 1;
				with (obj_darkcastle_event)
					con = 30;
				global.msg[0] = stringsetloc("* ... really^1?&* You've heard it already?/", "scr_text_slash_scr_text_gml_169_0");
				global.msg[1] = stringsetloc("* Oh..^1. Perhaps I shouldn't have rehearsed it so much.../", "scr_text_slash_scr_text_gml_170_0");
				scr_susface(2, 0);
				global.msg[3] = stringsetloc("* Look^1, dude^1, we didn't come here for a bedtime story./", "scr_text_slash_scr_text_gml_172_0");
				global.msg[4] = stringsetloc("* Just tell us how to get home./", "scr_text_slash_scr_text_gml_173_0");
				scr_ralface(5, 0);
				global.msg[6] = stringsetloc("* Ummm^1, the easiest way would be to seal the \\cYEastern FOUNTAIN\\cW./", "scr_text_slash_scr_text_gml_175_0");
				scr_susface(7, 0);
				global.msg[8] = stringsetloc("* Fountain?/", "scr_text_slash_scr_text_gml_177_0");
				global.msg[9] = stringsetloc("\\E1* You mean^1, uh^1, like the water bubbler or something?/", "scr_text_slash_scr_text_gml_178_0");
				scr_ralface(10, 0);
				global.msg[11] = stringsetloc("* THE fountain^1.&* That which gives the \\cYDARK WORLD\\cW form./", "scr_text_slash_scr_text_gml_180_0");
				global.msg[12] = stringsetloc("\\E1* ... umm^1, are you sure you actually know the legend?/", "scr_text_slash_scr_text_gml_181_0");
				scr_susface(13, 1);
				global.msg[14] = stringsetloc("* Look./", "scr_text_slash_scr_text_gml_183_0");
				global.msg[15] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_184_0");
				global.msg[16] = stringsetloc("* No./", "scr_text_slash_scr_text_gml_185_0");
				global.msg[17] = stringsetloc("* But I think I've got enough info./", "scr_text_slash_scr_text_gml_186_0");
				global.msg[18] = stringsetloc("* See you two later./", "scr_text_slash_scr_text_gml_187_0");
				scr_ralface(19, 1);
				global.msg[20] = stringsetloc("* W-wait^1!&* Let me at least tell you how to.../%", "scr_text_slash_scr_text_gml_189_0");
			}
			break;
		case 125:
			global.choicemsg[0] = stringsetloc("I'll be#Your#Subject", "scr_text_slash_scr_text_gml_196_0");
			global.choicemsg[1] = stringsetloc("Keep#Dreaming", "scr_text_slash_scr_text_gml_197_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_198_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_199_0");
			global.msg[0] = stringsetloc("* This is the CASTLE TOWN^2, where my subjects reside.../", "scr_text_slash_scr_text_gml_200_0");
			global.msg[1] = stringsetloc("\\E1* Err, well, they would if I had any.../", "scr_text_slash_scr_text_gml_201_0");
			global.msg[2] = stringsetloc("\\E8* Oh, don't worry about me, Kris!/", "scr_text_slash_scr_text_gml_202_0_b");
			global.msg[3] = stringsetloc("\\E0* I'm certain I'll find a subject someday.../", "scr_text_slash_scr_text_gml_203_0");
			global.msg[4] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_202_0");
			global.msg[5] = stringsetloc(" ", "scr_text_slash_scr_text_gml_205_0");
			break;
		case 126:
			if (global.choice == 0)
			{
				global.fe = 7;
				global.flag[204] = 1;
				global.msg[0] = stringsetloc("\\E3* H..^1. Huh!?/", "scr_text_slash_scr_text_gml_213_0");
				global.msg[1] = stringsetloc("\\E7* Why^1, Kris^1, you don't have to do that.../", "scr_text_slash_scr_text_gml_214_0");
				global.msg[2] = stringsetloc("\\E1* ... but^1, if you insist.../", "scr_text_slash_scr_text_gml_215_0");
				global.msg[3] = stringsetloc("\\E0* Kris, as your Prince and authority, I order you to...!/", "scr_text_slash_scr_text_gml_216_0");
				global.msg[4] = stringsetloc("\\E8* Please let me know what to do!/%", "scr_text_slash_scr_text_gml_217_0");
			}
			else
			{
				global.flag[204] = 2;
				global.fe = 8;
				global.msg[0] = stringsetloc("* Oh^1, thank you^1, Kris^2!&* I will!/%", "scr_text_slash_scr_text_gml_224_0");
			}
			break;
		case 130:
			global.choicemsg[0] = stringsetloc("#I know", "scr_text_slash_scr_text_gml_227_0");
			global.choicemsg[1] = stringsetloc("#Really!?", "scr_text_slash_scr_text_gml_228_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_231_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_232_0_b");
			input_name = scr_get_input_name(5);
			global.msg[0] = stringsetsubloc("* Er^1, Kris^1, you know you can hold [~1] to run...?/", input_name, "scr_text_slash_scr_text_gml_232_0");
			global.msg[1] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_233_0");
			global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_236_0");
			break;
		case 131:
			if (global.choice == 0)
			{
				global.fe = 3;
				global.msg[0] = stringsetloc("* Really^1?&* And yet you choose not to...?/", "scr_text_slash_scr_text_gml_242_0");
				global.msg[1] = stringsetloc("\\E6* Right^1, who knows how long these leisurely days will last.../", "scr_text_slash_scr_text_gml_243_0");
				global.msg[2] = stringsetloc("\\E0* There's nothing wrong with taking your time^1, Kris./%", "scr_text_slash_scr_text_gml_244_0");
			}
			else
			{
				global.fe = 0;
				input_name = scr_get_input_name(5);
				global.msg[0] = stringsetsubloc("* Right^1!&* You'll move faster by holding [~1]!/", input_name, "scr_text_slash_scr_text_gml_250_0");
				global.msg[1] = stringsetloc("\\E8* And I'll be right behind you^1, so don't worry!/", "scr_text_slash_scr_text_gml_251_0");
				global.msg[2] = stringsetloc("\\E6* ... Unless you want to get away^1, in which case^1, sorry./%", "scr_text_slash_scr_text_gml_252_0");
			}
			break;
		case 132:
			global.choicemsg[0] = stringsetloc("#I know", "scr_text_slash_scr_text_gml_258_0");
			global.choicemsg[1] = stringsetloc("#Really!?", "scr_text_slash_scr_text_gml_259_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_262_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_263_0");
			global.msg[0] = stringsetloc("* Umm^1, Kris^1, did you know.../", "scr_text_slash_scr_text_gml_262_0");
			global.msg[1] = stringsetsubloc("* ... You can skip text by pressing [~1]?/", scr_get_input_name(5), "scr_text_slash_scr_text_gml_265_0");
			global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_264_0");
			global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_267_0");
			break;
		case 133:
			if (global.choice == 0)
			{
				global.fe = 3;
				global.msg[0] = stringsetloc("* ... Really^1?&* So you've just been.../", "scr_text_slash_scr_text_gml_273_0");
				global.msg[1] = stringsetloc("\\E2* Listening to me talk^1, because you wanted to?/", "scr_text_slash_scr_text_gml_274_0");
				global.msg[2] = stringsetloc("\\E6* I'll try to make it worth your while^1, Kris!/%", "scr_text_slash_scr_text_gml_275_0");
			}
			else
			{
				global.fe = 0;
				global.msg[0] = stringsetloc("* Right^1! In the case you read very quickly./", "scr_text_slash_scr_text_gml_280_0");
				global.msg[1] = stringsetloc("\\E1* Or you're tired of what's being said./", "scr_text_slash_scr_text_gml_281_0");
				global.msg[2] = stringsetloc("\\E6* ... No need to skip my text^1, right^1, Kris?/%", "scr_text_slash_scr_text_gml_282_0");
			}
			break;
		case 135:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_289_0");
			global.choicemsg[1] = stringsetloc("#Don't", "scr_text_slash_scr_text_gml_290_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_293_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_294_0_b");
			global.msg[0] = stringsetloc("\\E3* Oh^1, Kris^1!&* It's the training dummy I made!/", "scr_text_slash_scr_text_gml_293_0");
			global.msg[1] = stringsetloc("\\E8* Now seems like a great chance to prepare for the enemy./", "scr_text_slash_scr_text_gml_294_0");
			global.msg[2] = stringsetloc("\\E0* Would you like me to teach you how to fight?/", "scr_text_slash_scr_text_gml_295_0");
			global.msg[3] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_296_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_299_0");
			break;
		case 136:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E0* OK^1!&* Get ready, Kris!/%", "scr_text_slash_scr_text_gml_303_0");
				with (obj_tutorialbattleevent)
					con = 20;
			}
			else
			{
				global.msg[0] = stringsetloc("\\E3* Right^1, you already fought Lancer^1, didn't you...?/", "scr_text_slash_scr_text_gml_308_0");
				global.msg[1] = stringsetloc("\\E1* I was so excited to teach you^1, I absolutely blanked!/", "scr_text_slash_scr_text_gml_309_0");
				global.msg[2] = stringsetloc("\\E2* ... B-but^1, um..^1.&* Just in case you forgot anything.../", "scr_text_slash_scr_text_gml_310_0");
				global.msg[3] = stringsetloc("\\E6* Here^1!&* I made a Manual for you and Susie!/", "scr_text_slash_scr_text_gml_311_0");
				global.msg[4] = stringsetsubloc("\\E0* Press [~1] to open the menu and use it in your ITEMS./", scr_get_input_name(6), "scr_text_slash_scr_text_gml_314_0_b");
				scr_noface(5);
				global.msg[6] = stringsetloc("* (You got the Manual.)/%", "scr_text_slash_scr_text_gml_314_0");
			}
			break;
		case 140:
			global.choicemsg[0] = stringsetloc("#I can#handle it", "scr_text_slash_scr_text_gml_319_0");
			global.choicemsg[1] = stringsetloc("#.....#", "scr_text_slash_scr_text_gml_320_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_323_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_324_0_b");
			global.msg[0] = stringsetloc("\\E3* Oh my^2!&* The Great Door is opened?!/", "scr_text_slash_scr_text_gml_323_0");
			global.msg[1] = stringsetloc("* No wonder Lancer was able to come through.../", "scr_text_slash_scr_text_gml_324_0");
			global.msg[2] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_325_0");
			global.msg[3] = stringsetloc("* Kris, once we pass through this door.../", "scr_text_slash_scr_text_gml_326_0");
			global.msg[4] = stringsetloc("* Our adventure will really begin./", "scr_text_slash_scr_text_gml_327_0");
			global.msg[5] = stringsetloc("* A journey foretold exactly by the prophecy.../", "scr_text_slash_scr_text_gml_328_0");
			global.msg[6] = stringsetloc("\\E6* But^1, Kris^1, I believe YOUR choices are important^1, too./", "scr_text_slash_scr_text_gml_329_0");
			global.msg[7] = stringsetloc("\\E0* This world is full of all kinds of people^1, Kris./", "scr_text_slash_scr_text_gml_330_0");
			global.msg[8] = stringsetloc("\\E6* In the end^1, how we treat them makes all the difference./", "scr_text_slash_scr_text_gml_331_0");
			global.msg[9] = stringsetloc("\\E8* So let's try our best to get by without FIGHTing./", "scr_text_slash_scr_text_gml_332_0");
			global.msg[10] = stringsetloc("\\E1* If we can manage to do that.../", "scr_text_slash_scr_text_gml_333_0");
			global.msg[11] = stringsetloc("\\E0* I believe this tale may have a happy ending./", "scr_text_slash_scr_text_gml_334_0");
			global.msg[12] = stringsetloc("\\E6* Otherwise^1, I fear that.../", "scr_text_slash_scr_text_gml_335_0");
			global.msg[13] = stringsetloc("\\E1* ... you may not..^1. find the result favorable./", "scr_text_slash_scr_text_gml_336_0");
			global.msg[14] = stringsetloc("\\E3* ... Oh^1, I'm sorry^1! Is that too much to ask?/", "scr_text_slash_scr_text_gml_337_0");
			global.msg[15] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_338_0");
			global.msg[16] = stringsetloc(" ", "scr_text_slash_scr_text_gml_341_0");
			break;
		case 141:
			global.msg[0] = stringsetloc("\\E0* Kris^1, I knew you were a hero the moment I saw you./", "scr_text_slash_scr_text_gml_343_0");
			global.msg[1] = stringsetloc("\\E8* Let's try our best^1, alright?/%", "scr_text_slash_scr_text_gml_344_0");
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E3* O-oh^1, I'm sorry!/", "scr_text_slash_scr_text_gml_348_0");
				global.msg[1] = stringsetloc("\\E6* Kris^1, in the end^1, what you choose is up to you./", "scr_text_slash_scr_text_gml_349_0");
				global.msg[2] = stringsetloc("\\E8* As long as you're happy with it^1, I'm happy too./", "scr_text_slash_scr_text_gml_350_0");
				global.msg[3] = stringsetloc("\\E0* So just try your best^1, and don't worry!/%", "scr_text_slash_scr_text_gml_351_0");
			}
			break;
		case 145:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_358_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_359_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_362_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_363_0");
			if (global.flag[101] == 0)
			{
				global.msg[0] = stringsetloc("* (There are two objects hanging from the tree.)/", "scr_text_slash_scr_text_gml_364_0");
				global.msg[1] = stringsetloc("* (Take one?)/ ", "scr_text_slash_scr_text_gml_365_0");
				global.msg[2] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_366_0");
			}
			if (global.flag[101] == 1)
			{
				global.msg[0] = stringsetloc("* (There's a candy hanging from the tree.)/", "scr_text_slash_scr_text_gml_370_0");
				global.msg[1] = stringsetloc("* (Take one?)/ ", "scr_text_slash_scr_text_gml_371_0");
				global.msg[2] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_372_0");
			}
			if (global.flag[101] >= 2)
				global.msg[0] = stringsetloc("* (There's nothing hanging low enough to take.)/%", "scr_text_slash_scr_text_gml_377_0");
			break;
		case 146:
			if (global.choice == 0)
			{
				scr_itemget(1);
				if (noroom == 0)
				{
					global.msg[0] = stringsetloc("* (You got the Dark Candy.)/%", "scr_text_slash_scr_text_gml_388_0");
					global.flag[101] += 1;
				}
				else
				{
					global.msg[0] = stringsetloc("* (You can't carry any more.)/%", "scr_text_slash_scr_text_gml_393_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* (You decided to let the tree keep it.)/%", "scr_text_slash_scr_text_gml_399_0");
			}
			break;
		case 147:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_404_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_405_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_408_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_409_0");
			if (global.flag[102] == 0)
			{
				global.msg[0] = stringsetloc("* (There are two objects hanging from the tree.)/", "scr_text_slash_scr_text_gml_410_0");
				global.msg[1] = stringsetloc("* (Take one?)/", "scr_text_slash_scr_text_gml_411_0");
				global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_412_0");
			}
			if (global.flag[102] == 1)
			{
				global.msg[0] = stringsetloc("* (There's a candy hanging from the tree.)/", "scr_text_slash_scr_text_gml_416_0");
				global.msg[1] = stringsetloc("* (Take one?)/ ", "scr_text_slash_scr_text_gml_417_0");
				global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_418_0");
			}
			if (global.flag[102] >= 2)
				global.msg[0] = stringsetloc("* (There's nothing hanging low enough to take.)/%", "scr_text_slash_scr_text_gml_423_0");
			break;
		case 148:
			if (global.choice == 0)
			{
				scr_itemget(1);
				if (noroom == 0)
				{
					global.msg[0] = stringsetloc("* (You got the Dark Candy.)/%", "scr_text_slash_scr_text_gml_434_0");
					global.flag[102] += 1;
				}
				else
				{
					global.msg[0] = stringsetloc("* (You can't carry any more.)/%", "scr_text_slash_scr_text_gml_439_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* (You decided to let the tree keep it.)/%", "scr_text_slash_scr_text_gml_445_0");
			}
			break;
		case 149:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_450_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_451_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_454_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_455_0");
			if (global.flag[103] == 0)
			{
				global.msg[0] = stringsetloc("* (The remains of the cake are still smoldering...)/", "scr_text_slash_scr_text_gml_456_0");
				global.msg[1] = stringsetloc("* (Take a piece?)/", "scr_text_slash_scr_text_gml_457_0");
				global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_458_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* (The remains of the cake are still smoldering...)/%", "scr_text_slash_scr_text_gml_462_0");
			}
			break;
		case 150:
			if (global.choice == 0)
			{
				scr_keyitemget(3);
				if (noroom == 0)
				{
					global.msg[0] = stringsetloc("* (The Broken Cake was added to your \\cYKEY ITEMS\\cW.)/%", "scr_text_slash_scr_text_gml_473_0");
					global.flag[103] = 1;
				}
				else
				{
					global.msg[0] = stringsetloc("* (You can't carry any more.)/%", "scr_text_slash_scr_text_gml_478_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* (You decided putting cake in your pockets is a bad idea.)/%", "scr_text_slash_scr_text_gml_484_0");
			}
			break;
		case 175:
			global.choicemsg[0] = stringsetloc(" #Crumpled#paper", "scr_text_slash_scr_text_gml_492_0");
			global.choicemsg[1] = stringsetloc("LANCER#labelled#paper", "scr_text_slash_scr_text_gml_493_0");
			global.choicemsg[2] = stringsetloc("Neat paper", "scr_text_slash_scr_text_gml_494_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_497_0_b");
			global.msg[0] = stringsetloc("* Alright^1, everyone's put in their entries!/", "scr_text_slash_scr_text_gml_496_0");
			global.msg[1] = stringsetloc("\\E2* Blue person^1, you can choose./", "scr_text_slash_scr_text_gml_497_0");
			global.msg[2] = stringsetloc("\\E1* Since you look like you don't care./", "scr_text_slash_scr_text_gml_498_0");
			global.msg[3] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_499_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_502_0");
			break;
		case 176:
			if (global.choice == 0)
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = stringsetloc("* (You take the crumpled up piece of paper.)/", "scr_text_slash_scr_text_gml_508_0");
				global.msg[1] = stringsetloc("* (You open it up.)/", "scr_text_slash_scr_text_gml_509_0");
				scr_lanface(2, 2);
				global.msg[3] = stringsetloc("* OK!!&* And your name is...!/", "scr_text_slash_scr_text_gml_511_0");
				global.msg[4] = stringsetloc("\\E6* ... Hmm./", "scr_text_slash_scr_text_gml_512_0");
				global.msg[5] = stringsetloc("\\E7* I don't think I'm allowed to say this one./", "scr_text_slash_scr_text_gml_513_0");
				scr_susface(6, 2);
				global.msg[7] = stringsetloc("* It's PRONOUNCED^1, \"The $!?# Squad.\"/", "scr_text_slash_scr_text_gml_517_0_b");
				scr_lanface(8, 7);
				global.msg[9] = stringsetloc("* Woah^1, I'm not allowed to say Tier-TWO swear words!/", "scr_text_slash_scr_text_gml_517_0");
				global.msg[10] = stringsetloc("\\E3* Wow^1. You three's collective dad must be very cool./", "scr_text_slash_scr_text_gml_518_0");
				scr_ralface(11, 1);
				global.msg[12] = stringsetloc("* Er^1, could we PERHAPS consider a DIFFERENT name?/", "scr_text_slash_scr_text_gml_520_0");
				scr_susface(13, 2);
				global.msg[14] = stringsetloc("* Ralsei^1, you don't HAVE to be in our Squad./", "scr_text_slash_scr_text_gml_522_0");
				scr_lanface(15, 2);
				global.msg[16] = stringsetloc("* Yeah! How about I be in the Squad and YOU be the bad guy?/", "scr_text_slash_scr_text_gml_524_0");
				global.msg[17] = stringsetloc("\\E1* Here^1.&* Call up my dad./", "scr_text_slash_scr_text_gml_525_0");
				global.msg[18] = stringsetloc("* Tell him he has a new son./", "scr_text_slash_scr_text_gml_526_0");
				global.msg[19] = stringsetloc("\\E3* One that has to take a shower every time he reads a swear word./", "scr_text_slash_scr_text_gml_527_0");
				scr_ralface(20, "A");
				global.msg[21] = stringsetloc("* OK^1, fine^1!&* We can keep the name^1!&* I just won't say it./", "scr_text_slash_scr_text_gml_529_0");
				scr_lanface(22, 2);
				global.msg[23] = stringsetloc("* Haha^1, me too!/", "scr_text_slash_scr_text_gml_531_0");
				global.msg[24] = stringsetloc("\\E1* See ya^1, losers^1!&* It's shower time!/%", "scr_text_slash_scr_text_gml_532_0");
				global.flag[214] = 1;
			}
			if (global.choice == 1)
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = stringsetloc("* (You take the paper with \"LANCER\" written on the outside.)/", "scr_text_slash_scr_text_gml_540_0");
				global.msg[1] = stringsetloc("* (You open it up.)/", "scr_text_slash_scr_text_gml_541_0");
				global.msg[2] = stringsetloc("* (On the inside...)&* (It also says \"LANCER.\")/", "scr_text_slash_scr_text_gml_542_0");
				scr_lanface(3, 3);
				global.msg[4] = stringsetloc("* Wow^1, who did that one^1?&* It's really good!/", "scr_text_slash_scr_text_gml_544_0");
				scr_ralface(5, "A");
				global.msg[6] = stringsetloc("* Wait^1, why do YOU get to choose the name?/", "scr_text_slash_scr_text_gml_546_0");
				scr_susface(7, 1);
				global.msg[8] = stringsetloc("* Hey^1.&* He didn't^1, Kris did./", "scr_text_slash_scr_text_gml_548_0");
				scr_lanface(9, 3);
				global.msg[10] = stringsetloc("* Yeah^1!&* It doesn't matter who MAY have written it!/", "scr_text_slash_scr_text_gml_550_0");
				global.msg[11] = stringsetloc("\\E1* Regardless^1, LANCER's going to meet absolute doom!/", "scr_text_slash_scr_text_gml_551_0");
				global.msg[12] = stringsetloc("\\E6* ... this name feels weird^1, actually./", "scr_text_slash_scr_text_gml_552_0");
				global.msg[13] = stringsetloc("\\E4* Hmmm..../", "scr_text_slash_scr_text_gml_553_0");
				global.msg[14] = stringsetloc("\\E3* I know^1! Let's call it the LANCER FAN CLUB for short!/", "scr_text_slash_scr_text_gml_554_0");
				global.msg[15] = stringsetloc("\\E3* See you later^1, me!/%", "scr_text_slash_scr_text_gml_555_0");
				global.flag[214] = 2;
			}
			if (global.choice == 2)
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = stringsetloc("* (You take the neatly folded piece of paper.)/", "scr_text_slash_scr_text_gml_563_0");
				global.msg[1] = stringsetloc("* (You open it up.)/", "scr_text_slash_scr_text_gml_564_0");
				scr_lanface(2, 7);
				global.msg[3] = stringsetloc("* \"The Legendary Heroes: The Herald of Fun and Friendship\"/", "scr_text_slash_scr_text_gml_566_0");
				scr_ralface(4, 8);
				global.msg[5] = stringsetloc("* Oh^1, oh!&* That's mine!/", "scr_text_slash_scr_text_gml_568_0");
				global.msg[6] = stringsetloc("\\E0* See^1, I think it's the perfect name.../", "scr_text_slash_scr_text_gml_569_0");
				global.msg[7] = stringsetloc("\\E6* Because we're all friends^1: That like to have a lot of fun./", "scr_text_slash_scr_text_gml_570_0");
				scr_susface(8, 0);
				global.msg[9] = stringsetloc("* Okay^1, first..^1. jeez^1, that's a mouthful^1, dude./", "scr_text_slash_scr_text_gml_572_0");
				global.msg[10] = stringsetloc("* Second^1, what are our enemies gonna think?/", "scr_text_slash_scr_text_gml_573_0");
				global.msg[11] = stringsetloc("\\E2* That we're gonna be BUDDIES with 'em?/", "scr_text_slash_scr_text_gml_574_0");
				global.msg[12] = stringsetloc("* Let's change it to something SHORT^1! INTIMIDATING!/", "scr_text_slash_scr_text_gml_575_0");
				global.msg[13] = stringsetloc("\\E4* Something PUNCHY^1! Something BAD-ASS!/", "scr_text_slash_scr_text_gml_576_0");
				scr_ralface(14, 1);
				global.msg[15] = stringsetloc("* ... like what?/", "scr_text_slash_scr_text_gml_578_0");
				scr_susface(16, 2);
				global.msg[17] = stringsetloc("* Well^1, uh..^1.&* Y'know^1, for starters.../", "scr_text_slash_scr_text_gml_580_0");
				global.msg[18] = stringsetloc("\\E0* How about..^1.&* JUST^1, uh..^1./", "scr_text_slash_scr_text_gml_581_0");
				global.msg[19] = stringsetloc("\\E6* \"The Fun Gang.\"/", "scr_text_slash_scr_text_gml_582_0");
				global.msg[20] = stringsetloc("\\E6* Ya know^1, just^1, uh^1, concentrating on the \"Fun\" part./", "scr_text_slash_scr_text_gml_583_0");
				scr_lanface(21, 1);
				global.msg[22] = stringsetloc("* It's perfect!!!/", "scr_text_slash_scr_text_gml_585_0");
				global.msg[23] = stringsetloc("* Well^1, see ya^1, Fun Gang!/", "scr_text_slash_scr_text_gml_586_0");
				global.msg[24] = stringsetloc("* I've got to osmose my afternoon milk!/%", "scr_text_slash_scr_text_gml_587_0");
				global.flag[214] = 3;
			}
			break;
		case 180:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_596_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_597_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_600_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_601_0_b");
			global.msg[0] = stringsetloc("\\E2* Well jingle my goshdarn bells^1! Looks like Krismas came early!/", "scr_text_slash_scr_text_gml_600_0");
			global.msg[1] = stringsetloc("\\E1* Alright^1, Kris^1. Just gimme the straight shot./", "scr_text_slash_scr_text_gml_601_0");
			global.msg[2] = stringsetloc("\\E2* Why you here^1?&* Did your mom make you come here?/", "scr_text_slash_scr_text_gml_602_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_603_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_606_0");
			break;
		case 181:
			global.choicemsg[0] = stringsetloc(" #Noelle", "scr_text_slash_scr_text_gml_608_0");
			global.choicemsg[1] = stringsetloc(" #Family", "scr_text_slash_scr_text_gml_609_0");
			global.choicemsg[2] = stringsetloc("Illness", "scr_text_slash_scr_text_gml_610_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_613_0_b");
			global.msg[0] = stringsetloc("\\E0* Hey^1, Kris^1, you wanna chat or something?/", "scr_text_slash_scr_text_gml_612_0");
			global.msg[1] = stringsetloc("\\E2* Don't worry^1, there's no way you can bore me right now!/", "scr_text_slash_scr_text_gml_613_0");
			global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_614_0");
			if (global.flag[255] < 2)
			{
				global.flag[255] = 2;
				global.msg[0] = stringsetloc("\\E2* Hahaha^1, that's what I thought^1!&* She's a PEACH^1, huh...?/", "scr_text_slash_scr_text_gml_619_0");
				global.msg[1] = stringsetloc("\\E7* Fuzzy n' sweet on the outside^1, a total NUT on the inside!/", "scr_text_slash_scr_text_gml_620_0");
				global.msg[2] = stringsetloc("\\E0* Oh^1, your dad^1? Yeah^1, he's a real fruit himself too./", "scr_text_slash_scr_text_gml_621_0");
				global.msg[3] = stringsetloc("\\E7* Which one^1? I dunno^1, probably a hairy one...^1 like a kiwi./", "scr_text_slash_scr_text_gml_622_0");
				global.msg[4] = stringsetloc("\\E7* Hahahaha!!!/", "scr_text_slash_scr_text_gml_625_0");
				global.msg[5] = stringsetloc("\\E0* Okay^1, okay^1, seriously^1, you wanna chat or something?/", "scr_text_slash_scr_text_gml_626_0");
				if (global.choice == 1)
				{
					global.fe = 1;
					global.msg[0] = stringsetloc("\\E1* Really^1?&* You've grown up a lot^1, Kris./", "scr_text_slash_scr_text_gml_630_0");
					global.msg[1] = stringsetloc("\\E4* I'm proud of you./", "scr_text_slash_scr_text_gml_631_0");
					global.msg[2] = stringsetloc("\\E5* Wasn't too long ago you were just the creepy kid next door./", "scr_text_slash_scr_text_gml_632_0");
					global.msg[3] = stringsetloc("\\E7* Now you're the creepy kid right in front of me!/", "scr_text_slash_scr_text_gml_633_0");
					global.msg[4] = stringsetloc("* Hahahaha!!!/", "scr_text_slash_scr_text_gml_634_0");
					global.msg[5] = stringsetloc("\\E0* Okay^1, okay^1, seriously^1, you wanna chat or something?/", "scr_text_slash_scr_text_gml_635_0");
				}
				global.msg[6] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_637_0");
			}
			break;
		case 182:
			global.msg[0] = stringsetloc("* Huh?/%", "scr_text_slash_scr_text_gml_642_0");
			if (global.choice == 0)
			{
				global.fe = 0;
				global.msg[0] = stringsetloc("\\E4* She's a sweetheart^1, isn't she^1, Kris?/", "scr_text_slash_scr_text_gml_646_0");
				global.msg[1] = stringsetloc("\\E0* Smart, kind, sweet... couldn't ask for a better daughter./", "scr_text_slash_scr_text_gml_647_0");
				global.msg[2] = stringsetloc("\\E5* I just wish she wasn't so..^1. defenseless./", "scr_text_slash_scr_text_gml_648_0");
				global.msg[3] = stringsetloc("\\E1* Scary movies^1, bugs^1, Santa Claus..^1. everything scares her./", "scr_text_slash_scr_text_gml_649_0");
				global.msg[4] = stringsetloc("\\E5* And when it happens^1, she freezes like a deer in headlights./", "scr_text_slash_scr_text_gml_650_0");
				global.msg[5] = stringsetloc("\\E0* Remember she used to even be afraid of humans under the bed?/", "scr_text_slash_scr_text_gml_651_0");
				global.msg[6] = stringsetloc("\\E7* (Kris^1, it was NOT nice of you to hide under there^1, by the way!)/", "scr_text_slash_scr_text_gml_652_0");
				global.msg[7] = stringsetloc("\\E1* ... anyhow^1, that's what's tough about being in here^1, Kris./", "scr_text_slash_scr_text_gml_653_0");
				global.msg[8] = stringsetloc("\\E4* Not what's going on with me./", "scr_text_slash_scr_text_gml_654_0");
				global.msg[9] = stringsetloc("\\E5* Just that..^1. in the meantime^1, I can't be there to protect her./", "scr_text_slash_scr_text_gml_655_0");
				global.msg[10] = stringsetloc("\\E3* Keep an eye out for her^1, OK?/%", "scr_text_slash_scr_text_gml_656_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E3* Kris^1, even if we've grown apart^1, we still love your family./", "scr_text_slash_scr_text_gml_660_0");
				global.msg[1] = stringsetloc("\\E4* After all^1, me and Asgore were college pals^1, right?/", "scr_text_slash_scr_text_gml_661_0");
				global.msg[2] = stringsetloc("\\E1* Oh hey..^1. now that Asriel's off to college.../", "scr_text_slash_scr_text_gml_662_0");
				global.msg[3] = stringsetloc("\\E2* Y'think he's doing any CRAZY parties^1, like me and your dad?/", "scr_text_slash_scr_text_gml_663_0");
				global.msg[4] = stringsetloc("\\E3* Heh^1, I'm just pulling your leg^1. Your dad was no party animal./", "scr_text_slash_scr_text_gml_664_0");
				global.msg[5] = stringsetloc("\\E7* Your MOTHER on the other hand...^1! Whoo!/", "scr_text_slash_scr_text_gml_665_0");
				global.msg[6] = stringsetloc("\\E4* She'd alway fuss about going^1, but once the party started.../", "scr_text_slash_scr_text_gml_666_0");
				global.msg[7] = stringsetloc("\\E7* Yikes^1, man!/", "scr_text_slash_scr_text_gml_667_0");
				global.msg[8] = stringsetloc("\\E7* Once she hit me clear across the room with a key lime pie!/", "scr_text_slash_scr_text_gml_668_0");
				global.msg[9] = stringsetloc("\\E2* I got smashed into the snack table and toppled everything!/", "scr_text_slash_scr_text_gml_669_0");
				global.msg[10] = stringsetloc("\\E7* Tasty pie though^1. Couldn't complain./%", "scr_text_slash_scr_text_gml_670_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E1* ... So^1, why am I in here...?/", "scr_text_slash_scr_text_gml_674_0");
				global.msg[1] = stringsetloc("\\E4* Well^1, they found some crap^1, so it's just some tests./", "scr_text_slash_scr_text_gml_675_0");
				global.msg[2] = stringsetloc("\\E3* Yeah, it's no big deal^1. Nothing a Holiday can't handle./", "scr_text_slash_scr_text_gml_676_0");
				global.msg[3] = stringsetloc("\\E4* I'll be outta here in a jiff, then I can go back to, I dunno.../", "scr_text_slash_scr_text_gml_677_0");
				global.msg[4] = stringsetloc("\\E2* Yelling at you for getting tangled in our light display./%", "scr_text_slash_scr_text_gml_678_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E2* Then what the hell're you here for^1, Kris!^1? To gawk!?/", "scr_text_slash_scr_text_gml_683_0");
				global.msg[1] = stringsetloc("\\E7* You thought this was the zoo or something!^1? C'mon!/%", "scr_text_slash_scr_text_gml_684_0");
			}
			break;
		case 185:
			global.choicemsg[0] = stringsetloc("No No No#No No No#No No No", "scr_text_slash_scr_text_gml_690_0");
			global.choicemsg[1] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_691_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_694_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_695_0_b");
			global.msg[0] = stringsetloc("* (There's an anime review.^1)&* (Read it?)/", "scr_text_slash_scr_text_gml_694_0");
			global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_695_0");
			global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_698_0");
			break;
		case 186:
			global.msg[0] = stringsetloc("* Teen'z Corner&Monthly Toon Review:&Mew Mew Kissy Cutie 2/", "scr_text_slash_scr_text_gml_700_0");
			global.msg[1] = stringsetloc("* This reviewer had Mew Mew 2 as her first exposure to the series.../", "scr_text_slash_scr_text_gml_701_0");
			global.msg[2] = stringsetloc("* And let her tell you^1, it makes Mew Mew 1 look like a dumpster with sparkly cat ears!/", "scr_text_slash_scr_text_gml_702_0");
			global.msg[3] = stringsetloc("* With a darker storyline and more mature themes.../", "scr_text_slash_scr_text_gml_703_0");
			global.msg[4] = stringsetloc("* The second one treats the viewer like a real adult.../", "scr_text_slash_scr_text_gml_704_0");
			global.msg[5] = stringsetloc("* Instead of like an animal that will die if it goes ten seconds without seeing a beach ball./", "scr_text_slash_scr_text_gml_705_0");
			global.msg[6] = stringsetloc("* Not to mention, Mew Mew's character in the first one.../", "scr_text_slash_scr_text_gml_706_0");
			global.msg[7] = stringsetloc("* Is more stale than the ramen I eat at home by myself with the lights off./", "scr_text_slash_scr_text_gml_707_0");
			global.msg[8] = stringsetloc("* Teens and older should check out this dark masterpiece!/", "scr_text_slash_scr_text_gml_708_0");
			global.msg[9] = stringsetloc("* Signed^1,&The Anonymous Yellow Lizard/%", "scr_text_slash_scr_text_gml_709_0");
			if (global.choice < 1)
				global.msg[0] = stringsetloc("* (You decide not to read it.)/%", "scr_text_slash_scr_text_gml_710_0");
			break;
		case 190:
			global.choicemsg[0] = stringsetloc(" #Sit", "scr_text_slash_scr_text_gml_716_0");
			global.choicemsg[1] = stringsetloc(" #Don't Sit", "scr_text_slash_scr_text_gml_717_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_718_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_719_0_b");
			global.msg[0] = stringsetloc("* (Gerson Boom Memorial Bench)/", "scr_text_slash_scr_text_gml_718_0");
			global.msg[1] = stringsetloc("* \"Throughout my career^1, some of my best ideas came from dreams.\"/", "scr_text_slash_scr_text_gml_719_0");
			global.msg[2] = stringsetloc("* \"Take a rest here. If anyone asks -- you're writing!\"/%", "scr_text_slash_scr_text_gml_720_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_721_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_724_0");
			break;
		case 191:
			if (global.choice == 0)
				global.msg[0] = stringsetloc("* (Didn't feel like it.)/%", "scr_text_slash_scr_text_gml_730_0");
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (You decided not to sit.)/%", "scr_text_slash_scr_text_gml_736_0");
			break;
		case 192:
			global.choicemsg[0] = stringsetloc(" #Stick fingers", "scr_text_slash_scr_text_gml_739_0");
			global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_740_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_743_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_744_0_b");
			global.msg[0] = stringsetloc("* (It's a metal picnic table.^1)&* (Cigarette butts lay on the ground underneath it.)/", "scr_text_slash_scr_text_gml_744_0");
			global.msg[1] = stringsetloc("* (Stick your fingers into the holes in the table?)/", "scr_text_slash_scr_text_gml_745_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_746_0");
			global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_749_0");
			if (global.flag[257] == 1)
				global.msg[0] = stringsetloc("* (It's a metal picnic table.^1)&* (Cigarette butts lay on the ground underneath it.)/%", "scr_text_slash_scr_text_gml_750_0");
			break;
		case 193:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* (Your fingers don't fit through the top anymore.^1)&* (You try from below.)/", "scr_text_slash_scr_text_gml_757_0");
				global.msg[1] = stringsetloc("* (... your hand became covered in cobwebs.)/%", "scr_text_slash_scr_text_gml_758_0");
				global.flag[257] = 1;
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (You decided not to stick your fingers through.)/%", "scr_text_slash_scr_text_gml_764_0");
			break;
		case 195:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_770_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_771_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_774_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_775_0_b");
			global.msg[0] = stringsetloc("\\M0* Hey..^1. there..^1.&* Noticed you were..^1.&* Here.../", "scr_text_slash_scr_text_gml_775_0");
			global.msg[1] = stringsetloc("\\M1* It's me^1!&* You know ME^1, right^1?&* Of course you do!/", "scr_text_slash_scr_text_gml_776_0");
			global.msg[2] = stringsetloc("\\M0* I'm REAL popular^1!&* I just!/", "scr_text_slash_scr_text_gml_777_0");
			global.msg[3] = stringsetloc("\\M3* Don't have any friends.../", "scr_text_slash_scr_text_gml_778_0");
			global.msg[4] = stringsetloc("\\M1* But it's OK^1, y'hear^1!&* Because you're y'here!/", "scr_text_slash_scr_text_gml_779_0");
			global.msg[5] = stringsetloc("\\M0* Will YOU be my friend?/", "scr_text_slash_scr_text_gml_780_0");
			global.msg[6] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_781_0");
			global.msg[7] = stringsetloc(" ", "scr_text_slash_scr_text_gml_784_0");
			break;
		case 196:
			global.choicemsg[0] = stringsetloc(" #Kris", "scr_text_slash_scr_text_gml_787_0");
			global.choicemsg[1] = stringsetloc(" #Hippo-#potamus", "scr_text_slash_scr_text_gml_788_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_791_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_792_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\M4* Oh^1! Oh^1!&* I'm so happy^1, y'hear!^1?&* I'm so happy I..^1. I.../", "scr_text_slash_scr_text_gml_795_0");
				global.msg[1] = stringsetloc("\\M3* I don't know what to do^1!&* I don't remember being this happy before!/", "scr_text_slash_scr_text_gml_796_0");
				global.msg[2] = stringsetloc("\\M2* What's your name^1, friend?/", "scr_text_slash_scr_text_gml_797_0");
				global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_798_0");
				global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_801_0");
			}
			if (global.choice == 1)
			{
				global.flag[258] = 3;
				global.flag[20] = 1;
				global.msg[0] = stringsetloc("%%%", "scr_text_slash_scr_text_gml_807_0");
			}
			break;
		case 197:
			global.choicemsg[0] = stringsetloc(" #Onion", "scr_text_slash_scr_text_gml_810_0");
			global.choicemsg[1] = stringsetloc(" #Beauty", "scr_text_slash_scr_text_gml_811_0");
			global.choicemsg[2] = stringsetloc("Asriel II", "scr_text_slash_scr_text_gml_812_0");
			global.choicemsg[3] = stringsetloc("Disgusting", "scr_text_slash_scr_text_gml_813_0");
			if (global.choice == 0)
			{
				global.flag[259] = 1;
				global.msg[0] = stringsetloc("\\M0* Kris^1! That's you^1!&* That's a real nice name for a friend!/", "scr_text_slash_scr_text_gml_818_0");
			}
			if (global.choice == 1)
			{
				global.flag[259] = 2;
				global.msg[0] = stringsetloc("\\M0* H..^1. Hippa..^1. Hyper..^1. Hoper..^1.&* Um^1, Hippopotamus^1! That's you^1!&* Big name^1, but it's worth it!/", "scr_text_slash_scr_text_gml_823_0");
			}
			global.msg[1] = stringsetloc("\\M1* Oh^1, excuse me^1!&* I forgot to introduce myself!/", "scr_text_slash_scr_text_gml_826_0");
			global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_827_0");
			global.msg[3] = stringsetloc("\\M3* ... Actually^1, since no one talks to me^1, I forgot my own name.../", "scr_text_slash_scr_text_gml_828_0");
			nn = stringsetloc("Kris", "scr_text_slash_scr_text_gml_831_0_b");
			if (global.flag[259] == 2)
				nn = stringsetloc("Hippopotatomus", "scr_text_slash_scr_text_gml_832_0_b");
			global.msg[4] = stringsetsubloc("\\M1* ~1^1!&* Can you give me a name...?/", nn, "scr_text_slash_scr_text_gml_831_0");
			global.msg[5] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_832_0");
			global.msg[6] = stringsetloc(" ", "scr_text_slash_scr_text_gml_835_0");
			break;
		case 198:
			if (global.choice == 0)
			{
				global.flag[258] = 2;
				global.flag[260] = 1;
				global.msg[0] = stringsetloc("\\M0* Hmmm^1! It's perfect^1, y'hear^1!&* I don't know what it means^1, but it's perfect!/", "scr_text_slash_scr_text_gml_841_0");
				global.msg[1] = stringsetloc("\\M4* Hmm!^1!&* Feels like it's shaped like me^1!&* Feels like it smells like me!/", "scr_text_slash_scr_text_gml_842_0");
				global.msg[2] = stringsetloc("\\M2* Wait^1, what was the name^1?&* U..^1. Umyum^1? Yeah^1! It's perfect^1!&* Umyum^1, that's my name./", "scr_text_slash_scr_text_gml_843_0");
			}
			if (global.choice == 1)
			{
				global.flag[258] = 2;
				global.flag[260] = 2;
				global.msg[0] = stringsetloc("\\M0^1* Wow..^1.&* What a wonderful name!/", "scr_text_slash_scr_text_gml_849_0");
				global.msg[1] = stringsetloc("\\M4* Feels like my self-esteem's in full bloom^1! Feels like my head's about to flower!/", "scr_text_slash_scr_text_gml_850_0");
				global.msg[2] = stringsetloc("\\M2* Wait^1, what was the name^1?&* B..^1. Bootis^1? Yeah^1! Perfect^1!&* The taste^1, the smell^1, the.../", "scr_text_slash_scr_text_gml_851_0");
			}
			if (global.choice == 2)
			{
				global.flag[258] = 2;
				global.flag[260] = 3;
				global.msg[0] = stringsetloc("\\M2* Asriel II..^1. Mmm..^1.&* Sounds..^1. familiar^1.&* It feels like..^1. a memory!/", "scr_text_slash_scr_text_gml_858_0");
				global.msg[1] = stringsetloc("\\M4* It feels like that good boy..^1.&* That threw those good corn flakes in the water for me./", "scr_text_slash_scr_text_gml_859_0");
				global.msg[2] = stringsetloc("\\M2* Wait^1, what was the name^1?&* C..^1. Cereal^1? Yeah^1! I love Cereal^1! Bathe me in flakes!/", "scr_text_slash_scr_text_gml_860_0");
			}
			if (global.choice == 3)
			{
				global.flag[258] = 3;
				global.flag[260] = 4;
				global.flag[20] = 1;
				global.msg[0] = stringsetloc("%%%", "scr_text_slash_scr_text_gml_869_0");
			}
			global.msg[3] = stringsetloc("\\M0* Thank you for giving me a name^1!&* I'll cherish it^1, y'hear!?/", "scr_text_slash_scr_text_gml_870_0");
			global.msg[4] = stringsetloc("\\M0* .../", "scr_text_slash_scr_text_gml_871_0");
			global.msg[5] = stringsetloc("\\M2* K..^1. Krismas^1?&* That's your name^1, right?/", "scr_text_slash_scr_text_gml_872_0");
			if (global.flag[259] == 2)
				global.msg[5] = stringsetloc("\\M3* Um^1, H..^1. Hippa..^1. um..^1.&* Hyper Potato Mask^1.&* That's your name^1, right?/", "scr_text_slash_scr_text_gml_873_0");
			global.msg[6] = stringsetloc("\\M1* I wanna tell you..^1. something..^1. tomorrow.../", "scr_text_slash_scr_text_gml_874_0");
			global.msg[7] = stringsetloc("\\M5* Somethin' I can only tell a friend.../", "scr_text_slash_scr_text_gml_875_0");
			global.msg[8] = stringsetloc("\\M5* Come back soon, y'hear.../%", "scr_text_slash_scr_text_gml_876_0");
			break;
		case 210:
			global.choicemsg[0] = stringsetloc("Open#Fridge", "scr_text_slash_scr_text_gml_880_0");
			global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_881_0");
			global.choicemsg[2] = stringsetloc("See photos", "scr_text_slash_scr_text_gml_882_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_885_0");
			if (read == 0)
			{
				global.msg[0] = stringsetloc("* (It's a rusty fridge with some photos on it.)/", "scr_text_slash_scr_text_gml_886_0");
				scr_asgface(1, 0);
				global.msg[2] = stringsetloc("\\E2* Oh^1, Kris^1.&* If you're hungry.../", "scr_text_slash_scr_text_gml_888_0");
				global.msg[3] = stringsetloc("\\E0* ... help yourself to anything you want./", "scr_text_slash_scr_text_gml_889_0");
				global.msg[4] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_890_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* (It's a rusty fridge with some photos on it.)/", "scr_text_slash_scr_text_gml_895_0");
				global.msg[1] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_896_0");
			}
			break;
		case 211:
			global.fc = 0;
			global.typer = 5;
			global.msg[0] = stringsetloc("* Nothing happened./%", "scr_text_slash_scr_text_gml_903_0");
			if (global.choice == 0)
			{
				if (global.flag[263] == 2)
					global.msg[0] = stringsetloc("* (There are two Eggs inside the fridge.)/%", "scr_text_slash_scr_text_gml_908_0");
				if (global.flag[263] == 1)
				{
					global.msg[0] = stringsetloc("* (All that's inside is a jar with a single pickle in it...)/", "scr_text_slash_scr_text_gml_913_0");
					global.msg[1] = stringsetloc("* (... and^1, for some reason^1, a lone egg.)/", "scr_text_slash_scr_text_gml_914_0");
					global.msg[2] = stringsetloc("* (You decide to pass.)/%", "scr_text_slash_scr_text_gml_915_0");
				}
				if (global.flag[263] == 0)
				{
					global.msg[0] = stringsetloc("* (All that's inside is a jar with a single pickle in it.)/", "scr_text_slash_scr_text_gml_920_0");
					global.msg[1] = stringsetloc("* (You decide to pass.)/%", "scr_text_slash_scr_text_gml_921_0");
					global.flag[263] = 1;
					if (scr_litemcheck(8))
					{
						global.msg[0] = stringsetloc("* (All that's inside is a jar with a single pickle in it.)/", "scr_text_slash_scr_text_gml_925_0");
						global.msg[1] = stringsetloc("* (...)/", "scr_text_slash_scr_text_gml_926_0");
						global.msg[2] = stringsetloc("* (You put the Egg you were carrying inside^1, too...)/%", "scr_text_slash_scr_text_gml_927_0");
						for (i = 0; i < 8; i += 1)
						{
							if (global.litem[i] == 8)
								scr_litemshift(i, 0);
						}
						global.flag[263] = 2;
					}
				}
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (You decide not to look.)/%", "scr_text_slash_scr_text_gml_944_0");
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* (A photo of your mother and father on their wedding day.)/", "scr_text_slash_scr_text_gml_948_0");
				global.msg[1] = stringsetloc("* (She's holding a bouquet of seven flowers.)/", "scr_text_slash_scr_text_gml_949_0");
				global.msg[2] = stringsetloc("* (A reindeer-looking monster stands nearby in a tuxedo.)/", "scr_text_slash_scr_text_gml_950_0");
				global.msg[3] = stringsetloc("* (They all look happy.)/%", "scr_text_slash_scr_text_gml_951_0");
			}
			break;
		case 215:
			global.choicemsg[0] = stringsetloc(" #Asriel", "scr_text_slash_scr_text_gml_956_0");
			global.choicemsg[1] = stringsetloc(" #Neighbors", "scr_text_slash_scr_text_gml_957_0");
			global.choicemsg[2] = stringsetloc("Sister", "scr_text_slash_scr_text_gml_958_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_959_0");
			global.msg[0] = stringsetloc("\\E4* Lil Krissy!!^1!&* Like, what's up!^1?&* Give Aunt Catty a hug!/", "scr_text_slash_scr_text_gml_962_0");
			global.msg[1] = stringsetloc("\\E2* Mwah^1!&* Mwah^1!&* Mwah!/", "scr_text_slash_scr_text_gml_963_0");
			global.msg[2] = stringsetloc("\\E8* Ha ha ha^1!&* I'm not even actually your aunt!/", "scr_text_slash_scr_text_gml_964_0");
			global.msg[3] = stringsetloc("\\E5* Oh my god..^1.&* Can I talk to you about something?/", "scr_text_slash_scr_text_gml_965_0");
			global.msg[4] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_966_0");
			global.msg[5] = stringsetloc("\\E6* Actually^1, like^1, anything^1, though^1.&* Your choice./", "scr_text_slash_scr_text_gml_967_0");
			global.msg[6] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_968_0");
			if (global.flag[265] > 0)
			{
				global.msg[0] = stringsetloc("\\E4* Lil Krissy^1!&* Did you wanna talk about something!?/", "scr_text_slash_scr_text_gml_971_0");
				global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_972_0");
			}
			global.flag[265] = 1;
			break;
		case 216:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E2* Oh my god^1, Asriel^1!&* Like^1, what a cutie pie!/", "scr_text_slash_scr_text_gml_980_0");
				global.msg[1] = stringsetloc("\\E6* Do you remember when me and him went to the dance?/", "scr_text_slash_scr_text_gml_981_0");
				global.msg[2] = stringsetloc("\\E2* That was like..^1.&* The best night EVER!/", "scr_text_slash_scr_text_gml_982_0");
				global.msg[3] = stringsetloc("\\E4* Even though I spilled the entire punch bowl all over him.../", "scr_text_slash_scr_text_gml_983_0");
				global.msg[4] = stringsetloc("\\E6* And danced inappropriately in front of your mom.../", "scr_text_slash_scr_text_gml_984_0");
				global.msg[5] = stringsetloc("\\E5* And got arrested in the parking lot for making a scene.../", "scr_text_slash_scr_text_gml_985_0");
				global.msg[6] = stringsetloc("\\E2* Hahaha^1! That was SO much fun^1!&* Tell him I said hi!/%", "scr_text_slash_scr_text_gml_986_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E1* Like^1, that green girl next door?/", "scr_text_slash_scr_text_gml_990_0");
				global.msg[1] = stringsetloc("\\E5* Oh my god^1, Krissy^1.&* She's like..^1. my LIFE VILLAIN./", "scr_text_slash_scr_text_gml_991_0");
				global.msg[2] = stringsetloc("\\E6* Like^1, the other day^1, I went to see Cat Petters 2.../", "scr_text_slash_scr_text_gml_992_0");
				global.msg[3] = stringsetloc("\\E3* And the only other person in the theater was her!/", "scr_text_slash_scr_text_gml_993_0");
				global.msg[4] = stringsetloc("\\E1* Then I went to QC's and ordered a Catpuccino.../", "scr_text_slash_scr_text_gml_994_0");
				global.msg[5] = stringsetloc("\\E5* And she^1, like^1, was already drinking one!/", "scr_text_slash_scr_text_gml_995_0");
				global.msg[6] = stringsetloc("\\E3* She's SUCH a copycat^1!&* ... uhh^1, copygator?/", "scr_text_slash_scr_text_gml_996_0");
				global.msg[7] = stringsetloc("\\E5* Copysaurus^1?&* Copodile^1?&* IDK^1, she sucks!/%", "scr_text_slash_scr_text_gml_997_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E6* Ooo^1, how's Catti doing^1?&* I have no idea./", "scr_text_slash_scr_text_gml_1001_0");
				global.msg[1] = stringsetloc("\\E5* We^1, like^1, totally can't connect at all!/", "scr_text_slash_scr_text_gml_1002_0");
				global.msg[2] = stringsetloc("\\E1* Yesterday^1, I asked if she wanted to hear me play the ukelele.../", "scr_text_slash_scr_text_gml_1003_0");
				global.msg[3] = stringsetloc("\\E5* She said no^1!&* And then she^1, like^1, told me.../", "scr_text_slash_scr_text_gml_1004_0");
				global.msg[4] = stringsetloc("\\E3* My playing is \"an anti-blessing from Planet Hell.\"/", "scr_text_slash_scr_text_gml_1005_0");
				global.msg[5] = stringsetloc("\\E5* What the HECK^1, Krissy?/", "scr_text_slash_scr_text_gml_1006_0");
				global.msg[6] = stringsetloc("\\E2* That's SOOO cute^1!&* I love my fricked-up lil sis!/%", "scr_text_slash_scr_text_gml_1007_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E6* Oh^1, you gotta go^1?&* Do you have^1, like^1, homework...?/", "scr_text_slash_scr_text_gml_1011_0");
				global.msg[1] = stringsetloc("\\E0* You should^1, like^1, let me help!/", "scr_text_slash_scr_text_gml_1012_0");
				global.msg[2] = stringsetloc("\\E2* Hahaha^1, JK^1!&* I totally don't want to^1! Laters!/%", "scr_text_slash_scr_text_gml_1013_0");
			}
			break;
		case 220:
			global.choicemsg[0] = stringsetloc("#Neighbor", "scr_text_slash_scr_text_gml_1018_0");
			global.choicemsg[1] = stringsetloc("#Memories", "scr_text_slash_scr_text_gml_1019_0");
			global.choicemsg[2] = stringsetloc("Go Away", "scr_text_slash_scr_text_gml_1020_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_1021_0");
			global.msg[0] = stringsetloc("\\E4* Krissy!&* Like^1, long time no see!/", "scr_text_slash_scr_text_gml_1022_0");
			global.msg[1] = stringsetloc("\\E0* What's up^1?&* Did you wanna talk about something?/", "scr_text_slash_scr_text_gml_1023_0");
			global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1024_0");
			break;
		case 221:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E2* Ugh^1, that chick next door drives me NUTS./", "scr_text_slash_scr_text_gml_1030_0");
				global.msg[1] = stringsetloc("\\E3* I keep seeing her EVERYWHERE I go^1.&* She's a TOTAL copycat./", "scr_text_slash_scr_text_gml_1031_0");
				global.msg[2] = stringsetloc("\\E5* Like^1, WHY though^1?&* Doesn't she realize she'll NEVER be me?/", "scr_text_slash_scr_text_gml_1032_0");
				global.msg[3] = stringsetloc("\\E6* Honestly^1, her whole family is^1, like^1, SO trashy./", "scr_text_slash_scr_text_gml_1033_0");
				global.msg[4] = stringsetloc("\\E3* Once her sister served me a coffee and I swear it was half cat fur./", "scr_text_slash_scr_text_gml_1034_0");
				global.msg[5] = stringsetloc("\\E6* Like^1, get a hairnet^1, girl^1. For^1, like^1, your whole body./%", "scr_text_slash_scr_text_gml_1035_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E0* Remember that time you wanted to hang out with us big kids?/", "scr_text_slash_scr_text_gml_1040_0");
				global.msg[1] = stringsetloc("\\E6* I was like, \"yeah^1, of course! Just get us some burgers!\"/", "scr_text_slash_scr_text_gml_1041_0");
				global.msg[2] = stringsetloc("\\E3* Then^1, like^1, amazingly..^1.&* You ACTUALLY got them.../", "scr_text_slash_scr_text_gml_1042_0");
				global.msg[3] = stringsetloc("\\E4* So I told you to go back and get some french fries, too.../", "scr_text_slash_scr_text_gml_1043_0");
				global.msg[4] = stringsetloc("\\E5* ... then a dozen miniature cakes.../", "scr_text_slash_scr_text_gml_1044_0");
				global.msg[5] = stringsetloc("\\E6* They were SO good^1, I ate like six!/", "scr_text_slash_scr_text_gml_1045_0");
				global.msg[6] = stringsetloc("\\E3* Then I like..^1.&* Suddenly got so sick I had to go home./", "scr_text_slash_scr_text_gml_1046_0");
				global.msg[7] = stringsetloc("\\E1* Man./", "scr_text_slash_scr_text_gml_1047_0");
				global.msg[8] = stringsetloc("\\E5* So^1, like^1, anyway..^1.&* Kris^1, are you busy?/%", "scr_text_slash_scr_text_gml_1048_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E5* Aww^1, that's no way to talk to your almost-sister-in-law./", "scr_text_slash_scr_text_gml_1053_0");
				global.msg[1] = stringsetloc("\\E4* Nah^1, I'm joking^1.&* But^1, like.../", "scr_text_slash_scr_text_gml_1054_0");
				global.msg[2] = stringsetloc("\\E0* Remember that time I played truth or dare with Azzy?/", "scr_text_slash_scr_text_gml_1055_0");
				global.msg[3] = stringsetloc("\\E5* I^1, like^1, made him give me his first kiss.../", "scr_text_slash_scr_text_gml_1056_0");
				global.msg[4] = stringsetloc("\\E3* Then your mom found out he kissed someone^1, and.../", "scr_text_slash_scr_text_gml_1057_0");
				global.msg[5] = stringsetloc("\\E6* Like^1, I think she basically dialed 911./", "scr_text_slash_scr_text_gml_1058_0");
				global.msg[6] = stringsetloc("\\E5* I swear your family went to church^1, like.../", "scr_text_slash_scr_text_gml_1059_0");
				global.msg[7] = stringsetloc("\\E6* Every single day that week./%", "scr_text_slash_scr_text_gml_1060_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E0* Aw^1, Krissy^1, you just wanted to say hi?/", "scr_text_slash_scr_text_gml_1064_0");
				global.msg[1] = stringsetloc("\\E6* That's adorable..^1.&* Now get out of here./%", "scr_text_slash_scr_text_gml_1065_0");
			}
			break;
		case 225:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1070_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_1071_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1074_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1075_0_b");
			global.msg[0] = stringsetloc("* Hey^1.&* Hey kid./", "scr_text_slash_scr_text_gml_1074_0");
			global.msg[1] = stringsetloc("* ... ya wanna buy a tutorial?/", "scr_text_slash_scr_text_gml_1075_0");
			global.msg[2] = stringsetloc("* It's only 50 Dark Dollars./", "scr_text_slash_scr_text_gml_1076_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1077_0");
			break;
		case 226:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1081_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_1082_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1085_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1086_0");
			if (global.choice == 0)
			{
				afford = 1;
				if (global.gold >= 50)
					global.gold -= 50;
				else
					afford = 0;
				if (afford == 1)
				{
					global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1092_0");
					global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1093_0");
				}
				else
				{
					global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1097_0");
					global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Just hand over the money^1, and.../", "scr_text_slash_scr_text_gml_1098_0");
					global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_1099_0");
					global.msg[3] = stringsetloc("\\M2* YOU DON'T HAVE ENOUGH MONEY!?/", "scr_text_slash_scr_text_gml_1100_0");
					global.msg[4] = stringsetloc("\\M1* Jumpin' jigsaws^1!&* You..^1.&* You...!/", "scr_text_slash_scr_text_gml_1101_0");
					global.msg[5] = stringsetloc("\\M0* You're just like us^1.&* An' people like us gotta help each other out./", "scr_text_slash_scr_text_gml_1102_0");
					global.msg[6] = stringsetloc("\\M0* C'mon this way./%", "scr_text_slash_scr_text_gml_1103_0");
				}
				with (obj_npc_puzzlemaster1)
					con = 5;
			}
			else
			{
				global.msg[0] = stringsetloc("\\M1* HA^1! HA^1! Did I say FIFTY!^1?&* Well^1, we just went on sale!&* TWENTY^1! TWENTY Dark Dollars!/", "scr_text_slash_scr_text_gml_1111_0");
				global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1112_0");
				afford = 0;
			}
			break;
		case 227:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1121_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_1122_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1125_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1126_0");
			if (global.choice == 0)
			{
				afford = 1;
				if (global.gold >= 20)
					global.gold -= 20;
				else
					afford = 0;
				if (afford == 1)
				{
					global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1132_0");
					global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1133_0");
				}
				else
				{
					global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1137_0");
					global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Just hand over the money^1, and.../", "scr_text_slash_scr_text_gml_1138_0");
					global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_1139_0");
					global.msg[3] = stringsetloc("\\M2* YOU DON'T HAVE ENOUGH MONEY!?/", "scr_text_slash_scr_text_gml_1140_0");
					global.msg[4] = stringsetloc("\\M1* Jumpin' jigsaws^1!&* You..^1.&* You...!/", "scr_text_slash_scr_text_gml_1141_0");
					global.msg[5] = stringsetloc("\\M0* You're just like us^1.&* An' people like us gotta help each other out./", "scr_text_slash_scr_text_gml_1142_0");
					global.msg[6] = stringsetloc("\\M0* C'mon this way./%", "scr_text_slash_scr_text_gml_1143_0");
				}
				with (obj_npc_puzzlemaster1)
					con = 5;
			}
			else
			{
				global.msg[0] = stringsetloc("\\M2* ONE!!^1! ONLY ONE DOLLAR!!^1!&* PLEASE!!^1! PLEASE!!^1!&* I NEED THIS RIGHT NOW!!!/", "scr_text_slash_scr_text_gml_1151_0");
				global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1152_0");
				afford = 0;
			}
			break;
		case 228:
			if (global.choice == 0)
			{
				afford = 1;
				if (global.gold >= 1)
					global.gold -= 1;
				else
					afford = 0;
				if (afford == 1)
				{
					global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You changed your mind!?/", "scr_text_slash_scr_text_gml_1168_0");
					global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1169_0");
				}
				else
				{
					global.msg[0] = stringsetloc("\\M1* F-Finally!/", "scr_text_slash_scr_text_gml_1173_0");
					global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Just hand over the money^1, and.../", "scr_text_slash_scr_text_gml_1174_0");
					global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_1175_0");
					global.msg[3] = stringsetloc("\\M2* YOU DON'T HAVE A DOLLAR!?/", "scr_text_slash_scr_text_gml_1176_0");
					global.msg[4] = stringsetloc("\\M1* Jumpin' jigsaws^1!&* You..^1.&* You...!/", "scr_text_slash_scr_text_gml_1177_0");
					global.msg[5] = stringsetloc("\\M0* You're just like us^1.&* An' people like us gotta help each other out./", "scr_text_slash_scr_text_gml_1178_0");
					global.msg[6] = stringsetloc("\\M0* C'mon this way./%", "scr_text_slash_scr_text_gml_1179_0");
				}
				with (obj_npc_puzzlemaster1)
					con = 5;
			}
			else
			{
				scr_ralface(0, 6);
				global.msg[1] = stringsetloc("* Er^1, excuse me^1, Sir^1.&* I think I have a dollar./", "scr_text_slash_scr_text_gml_1188_0");
				scr_noface(2);
				global.msg[3] = stringsetloc("\\M0* ... is it Dark?/", "scr_text_slash_scr_text_gml_1190_0");
				scr_ralface(4, 1);
				global.msg[5] = stringsetloc("* Umm^1, yes?/", "scr_text_slash_scr_text_gml_1192_0");
				scr_noface(6);
				global.msg[7] = stringsetloc("* Heheh^1, perfect^1!&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1194_0");
				with (obj_npc_puzzlemaster1)
					con = 5;
				afford = 0;
			}
			break;
		case 230:
			global.choicemsg[0] = stringsetloc(" #What's TP?", "scr_text_slash_scr_text_gml_1203_0");
			global.choicemsg[1] = stringsetloc(" #Secret", "scr_text_slash_scr_text_gml_1204_0");
			global.choicemsg[2] = stringsetloc("Gaining TP", "scr_text_slash_scr_text_gml_1205_0");
			global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1206_0");
			global.msg[0] = stringsetloc("* I'm TP Master^1.&* Ask me about TP's./", "scr_text_slash_scr_text_gml_1207_0");
			global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1208_0");
			break;
		case 231:
			global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1212_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* TP^1? What's TP^1?&* That's what lets you cast SPELLS^1, see!?/", "scr_text_slash_scr_text_gml_1215_0");
				global.msg[1] = stringsetloc("* When you see that orange bar^1,&* Cast some SPELLS when it's filled up far./", "scr_text_slash_scr_text_gml_1216_0");
				global.msg[2] = stringsetloc("* TP...^1! It's quite a caper^1!&* TP^1! Stands for..^1.&* ... Toilet Paper!/", "scr_text_slash_scr_text_gml_1217_0");
				scr_ralface(3, 9);
				global.msg[4] = stringsetloc("* ... no^1, it stands for Tension Points./", "scr_text_slash_scr_text_gml_1219_0");
				scr_noface(5);
				global.msg[6] = stringsetloc("\\M1* What^1, really!?/%", "scr_text_slash_scr_text_gml_1221_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* TP only lasts^1, inside a fight^1.&* Once you win^1, it's out of sight./", "scr_text_slash_scr_text_gml_1225_0");
				global.msg[1] = stringsetloc("* Having extra^1, feels unbearable^1.&* No point in saving^1, it's straight-up terrible./", "scr_text_slash_scr_text_gml_1226_0");
				scr_ralface(2, 1);
				global.msg[3] = stringsetloc("* But leftover TP turns into extra money at the end of battle.../", "scr_text_slash_scr_text_gml_1228_0");
				scr_noface(4);
				global.msg[5] = stringsetloc("\\M1* You mean I only should have been using one square!?/%", "scr_text_slash_scr_text_gml_1230_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* You get TP when you DEFEND^1.&* Protect yourself^1, then cast SPELLs^1, friend./", "scr_text_slash_scr_text_gml_1234_0");
				global.msg[1] = stringsetloc("* You also get TP by getting close to bullets./", "scr_text_slash_scr_text_gml_1235_0");
				global.msg[2] = stringsetloc("* Look for the heart outline when you get close to bullets./", "scr_text_slash_scr_text_gml_1236_0");
				scr_susface(3, 0);
				global.msg[4] = stringsetloc("* You rhymed \"bullets\" with \"bullets.\"/", "scr_text_slash_scr_text_gml_1238_0");
				scr_noface(5);
				global.msg[6] = stringsetloc("\\M1* B-because it's important!/%", "scr_text_slash_scr_text_gml_1240_0");
				if (!scr_havechar(2))
				{
					scr_ralface(3, 1);
					global.msg[4] = stringsetloc("* You rhymed \"bullets\" with \"bullets\"...?/", "scr_text_slash_scr_text_gml_1245_0");
				}
			}
			break;
		case 235:
			global.choicemsg[0] = stringsetloc(" #Pacify", "scr_text_slash_scr_text_gml_1252_0");
			global.choicemsg[1] = stringsetloc(" #Healing", "scr_text_slash_scr_text_gml_1253_0");
			global.choicemsg[2] = stringsetloc("Fact", "scr_text_slash_scr_text_gml_1254_0");
			global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1255_0");
			global.msg[0] = stringsetloc("* I'm Ralsei Master^1.&* Ask me about RALSEI's./", "scr_text_slash_scr_text_gml_1256_0");
			global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1257_0");
			break;
		case 236:
			global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1261_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* Ralsei's spell's called PACIFY^1.&* Use it on BABIES^1, before they CRY./", "scr_text_slash_scr_text_gml_1264_0");
				scr_ralface(1, 9);
				global.msg[2] = stringsetloc("* What^1? It safely removes a \"TIRED\" enemy from combat./", "scr_text_slash_scr_text_gml_1266_0");
				scr_noface(3);
				global.msg[4] = stringsetloc("\\M1* What if you're fighting a BABY!?/%", "scr_text_slash_scr_text_gml_1268_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* Ralsei has a spell that HEALS^1, dude./", "scr_text_slash_scr_text_gml_1273_0");
				global.msg[1] = stringsetloc("* Why use that^1, when you can eat FOOD?/", "scr_text_slash_scr_text_gml_1274_0");
				scr_ralface(2, 1);
				global.msg[3] = stringsetloc("* Because you won't have to use up an ITEM?/", "scr_text_slash_scr_text_gml_1276_0");
				scr_noface(4);
				global.msg[5] = stringsetloc("\\M1* I could have avoided all those empty calories!?/%", "scr_text_slash_scr_text_gml_1278_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* Ralsei loves when you give us MONEY./", "scr_text_slash_scr_text_gml_1282_0");
				global.msg[1] = stringsetloc("* He will hug you^1, and call you HONEY./", "scr_text_slash_scr_text_gml_1283_0");
				scr_ralface(2, "A");
				global.msg[3] = stringsetloc("* Hey^1, that's not true!/", "scr_text_slash_scr_text_gml_1285_0");
				global.msg[4] = stringsetloc("\\E8* You don't need money to get me to do that!/%", "scr_text_slash_scr_text_gml_1286_0");
			}
			break;
		case 240:
			global.choicemsg[0] = stringsetloc(" #Warning", "scr_text_slash_scr_text_gml_1291_0");
			global.choicemsg[1] = stringsetloc(" #Attack", "scr_text_slash_scr_text_gml_1292_0");
			global.choicemsg[2] = stringsetloc("Fact", "scr_text_slash_scr_text_gml_1293_0");
			global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1294_0");
			global.msg[0] = stringsetloc("* I'm Susie Master^1.&* Ask me about SUSIE's./", "scr_text_slash_scr_text_gml_1295_0");
			global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1296_0");
			break;
		case 241:
			global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1300_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* When KRIS uses WARNING^1, SUSIE can't hit^1.&* So make sure to -/", "scr_text_slash_scr_text_gml_1303_0");
				scr_susface(1, 2);
				global.msg[2] = stringsetloc("* So there's no reason to use it./", "scr_text_slash_scr_text_gml_1305_0");
				scr_noface(3);
				global.msg[4] = stringsetloc("\\M1* Unless..^1.&* Unless you wanted not to hurt -/", "scr_text_slash_scr_text_gml_1307_0");
				scr_susface(5, 4);
				global.msg[6] = stringsetloc("* SO THERE'S NO REASON./%", "scr_text_slash_scr_text_gml_1309_0");
				if (!scr_havechar(2))
				{
					global.msg[0] = stringsetloc("* Susie's gone^1, I'm afraid^1, I'm afreet./", "scr_text_slash_scr_text_gml_1313_0");
					global.msg[1] = stringsetloc("*Seems like WARNING is obsolete./%", "scr_text_slash_scr_text_gml_1314_0");
				}
				if (global.plot >= 150)
				{
					global.msg[0] = stringsetloc("* The days of WARNing^1, have long since past./", "scr_text_slash_scr_text_gml_1318_0");
					global.msg[1] = stringsetloc("* The circumstances^1, changed pretty fast./%", "scr_text_slash_scr_text_gml_1319_0");
				}
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* Susie always attacks^1, the foe on top./", "scr_text_slash_scr_text_gml_1326_0");
				global.msg[1] = stringsetloc("* She'll smash them^1, with a crushing chop./", "scr_text_slash_scr_text_gml_1327_0");
				global.msg[2] = stringsetloc("* She always strikes^1, at the first thing she sees.../", "scr_text_slash_scr_text_gml_1328_0");
				scr_susface(3, 2);
				global.msg[4] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_1330_0");
				scr_noface(5);
				global.msg[6] = stringsetloc("\\M1* Oh no^1, oh no^1!&* She's looking at ME!/%", "scr_text_slash_scr_text_gml_1332_0");
				if (!scr_havechar(2))
				{
					global.msg[0] = stringsetloc("* Susie's gone^1, so no attack./", "scr_text_slash_scr_text_gml_1336_0");
					global.msg[1] = stringsetloc("* Will you two pick up the slack?/%", "scr_text_slash_scr_text_gml_1337_0");
				}
				if (global.plot >= 150)
				{
					input_name = scr_get_input_name(4);
					global.msg[0] = stringsetloc("* Susie's BUSTER^1, RUDE as may be^1.../", "scr_text_slash_scr_text_gml_1342_0");
					global.msg[1] = stringsetsubloc("* Will deal more damage^1, if you just press [~1]!/%", input_name, "scr_text_slash_scr_text_gml_1343_0");
				}
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* Susie loves^1, when you give us MONEY^1.&* She will -/", "scr_text_slash_scr_text_gml_1349_0");
				scr_susface(1, 0);
				global.msg[2] = stringsetloc("* Nope^1, don't care./", "scr_text_slash_scr_text_gml_1351_0");
				scr_noface(3);
				global.msg[4] = stringsetloc("\\M1* Did I say something funny!?/%", "scr_text_slash_scr_text_gml_1353_0");
				if (!scr_havechar(2))
				{
					global.msg[0] = stringsetloc("* Susie's gone^1, so no facts./", "scr_text_slash_scr_text_gml_1356_0");
					global.msg[1] = stringsetloc("* Will you two pick up the slackts?/%", "scr_text_slash_scr_text_gml_1357_0");
				}
				if (global.plot >= 150)
				{
					global.msg[0] = stringsetloc("* SUSIE seems to have changed^1, just a hair./", "scr_text_slash_scr_text_gml_1361_0");
					global.msg[1] = stringsetloc("* That kind of growth is actually rare./%", "scr_text_slash_scr_text_gml_1362_0");
				}
			}
			break;
		case 245:
			global.choicemsg[0] = stringsetloc(" #Reviving", "scr_text_slash_scr_text_gml_1374_0");
			global.choicemsg[1] = stringsetloc(" #Acting", "scr_text_slash_scr_text_gml_1375_0");
			global.choicemsg[2] = stringsetloc("Fact", "scr_text_slash_scr_text_gml_1376_0");
			global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1377_0");
			global.msg[0] = stringsetloc("* I'm Kris Master^1.&* Ask me about KRIS's./", "scr_text_slash_scr_text_gml_1378_0");
			global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1379_0");
			break;
		case 246:
			global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1383_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* When HP goes negative^1, your friends fall down/", "scr_text_slash_scr_text_gml_1386_0");
				global.msg[1] = stringsetloc("* But bringing them back^1, is easy-town/", "scr_text_slash_scr_text_gml_1387_0");
				global.msg[2] = stringsetloc("* Plain foods and spells^1, work like a charm -/", "scr_text_slash_scr_text_gml_1388_0");
				global.msg[3] = stringsetloc("* And with a MINT^1, you can cure all HARM./", "scr_text_slash_scr_text_gml_1389_0");
				scr_ralface(4, 0);
				global.msg[5] = stringsetloc("* Even normal items and spells can revive people^1, huh?/", "scr_text_slash_scr_text_gml_1391_0");
				scr_noface(6);
				global.msg[7] = stringsetloc("* Yeah^1, that's what I'm saying!/%", "scr_text_slash_scr_text_gml_1393_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* If you only ACT^1, you might start to think -/", "scr_text_slash_scr_text_gml_1398_0");
				global.msg[1] = stringsetloc("* What about the guy with the scarf in pink?/", "scr_text_slash_scr_text_gml_1399_0");
				scr_ralface(2, 0);
				global.msg[3] = stringsetloc("* If you know ACTing will make the enemy friendly -/", "scr_text_slash_scr_text_gml_1401_0");
				global.msg[4] = stringsetloc("* Then you can ask me to SPARE on the SAME TURN./", "scr_text_slash_scr_text_gml_1402_0");
				global.msg[5] = stringsetloc("* Or^1, cast PACIFY if you know they'll get TIRED./", "scr_text_slash_scr_text_gml_1403_0");
				global.msg[6] = stringsetloc("* If you plan ahead^1, a lot can happen in ONE TURN!/", "scr_text_slash_scr_text_gml_1404_0");
				scr_noface(7);
				global.msg[8] = stringsetloc("\\M1* Hey^1, who's the MASTER here^1, me or you!?/%", "scr_text_slash_scr_text_gml_1406_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* It's a good idea^1, to give us BUCKs./", "scr_text_slash_scr_text_gml_1410_0");
				global.msg[1] = stringsetloc("* It'll make you happy^1, and fill you with LUCKs./", "scr_text_slash_scr_text_gml_1411_0");
				global.msg[2] = stringsetloc("* Over there^1, is our DONATION HOLE./", "scr_text_slash_scr_text_gml_1412_0");
				global.msg[3] = stringsetloc("* We had a BOX^1, but it got STOLE./%", "scr_text_slash_scr_text_gml_1413_0");
			}
			break;
		case 250:
			global.choicemsg[0] = stringsetloc(" #Throw $1", "scr_text_slash_scr_text_gml_1418_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1419_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1422_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1423_0_b");
			global.msg[0] = stringsetloc("* \"Donation Hole\"/", "scr_text_slash_scr_text_gml_1422_0");
			global.msg[1] = stringsetloc("* (If you like our tutorials^1, please throw your money into a hole.)/", "scr_text_slash_scr_text_gml_1423_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1424_0");
			if (global.flag[216] == 1)
				global.msg[0] = stringsetloc("* (The hole is filled to the brim with cash.)/%", "scr_text_slash_scr_text_gml_1427_0");
			break;
		case 251:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* (You put a dollar in the \"Hole.\")/", "scr_text_slash_scr_text_gml_1434_0");
				global.msg[1] = stringsetloc("* (The \"Hole\" became \"Full.\")/%", "scr_text_slash_scr_text_gml_1435_0");
				afford = 1;
				if (global.gold >= 1)
					global.gold -= 1;
				else
					afford = 0;
				if (afford == 1)
					global.flag[216] = 1;
				if (afford == 0)
				{
					global.msg[0] = stringsetloc("* (You don't have enough money.)/", "scr_text_slash_scr_text_gml_1441_0");
					global.msg[1] = stringsetloc("* (You failed to budget enough money to throw into a hole...)/%", "scr_text_slash_scr_text_gml_1442_0");
				}
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (You decided to save the dollar for a different hole.)/%", "scr_text_slash_scr_text_gml_1447_0");
			break;
		case 255:
			global.choicemsg[0] = stringsetloc("Make#Ralsei#try it", "scr_text_slash_scr_text_gml_1452_0");
			global.choicemsg[1] = stringsetloc("#Try it", "scr_text_slash_scr_text_gml_1453_0");
			global.choicemsg[2] = stringsetloc("Decline", "scr_text_slash_scr_text_gml_1454_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1457_0");
			global.msg[0] = stringsetloc("* How's the evil scheming going?/", "scr_text_slash_scr_text_gml_1456_0");
			scr_susface(1, 6);
			global.msg[2] = stringsetloc("* Huh^1? Oh^1, that?/", "scr_text_slash_scr_text_gml_1458_0");
			global.msg[3] = stringsetloc("\\E2* We^1, uh^1, got bored^1.&* So we're having a snack./", "scr_text_slash_scr_text_gml_1459_0");
			scr_ralface(4, 1);
			global.msg[5] = stringsetloc("* ... I see./", "scr_text_slash_scr_text_gml_1461_0");
			scr_susface(6, 7);
			global.msg[7] = stringsetloc("* C'mon^1! All I ate for breakfast was chalk!/", "scr_text_slash_scr_text_gml_1463_0");
			scr_lanface(8, 3);
			global.msg[9] = stringsetloc("* And I didn't eat anything!/", "scr_text_slash_scr_text_gml_1465_0");
			scr_ralface(10, 6);
			global.msg[11] = stringsetloc("* Sorry^1. What are you two having^1, exactly...?/", "scr_text_slash_scr_text_gml_1467_0");
			scr_lanface(12, 2);
			global.msg[13] = stringsetloc("* Just a daily treasure I hid in this stump's orifice./", "scr_text_slash_scr_text_gml_1469_0");
			scr_ralface(14, 8);
			global.msg[15] = stringsetloc("* And that is...?/", "scr_text_slash_scr_text_gml_1471_0");
			scr_lanface(16, 1);
			global.msg[17] = stringsetloc("* Feast for yourself^1, my main man./", "scr_text_slash_scr_text_gml_1473_0");
			scr_ralface(18, 8);
			global.msg[19] = stringsetloc("* Kris^1, do you want to^1, um^1, try it?/", "scr_text_slash_scr_text_gml_1475_0");
			global.msg[20] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_1476_0");
			break;
		case 256:
			global.flag[232] = 1;
			if (global.choice == 0)
			{
				scr_ralface(0, 6);
				global.msg[1] = stringsetloc("\\E6* Oh^1, there's a..^1.&* Honeypot^1? Inside^1?/", "scr_text_slash_scr_text_gml_1489_0");
				global.msg[2] = stringsetloc("\\E1* ... It's full of salsa./", "scr_text_slash_scr_text_gml_1490_0");
				scr_lanface(3, 3);
				global.msg[4] = stringsetloc("\\E3* Bingo^1, you sweet little pumpkin!/", "scr_text_slash_scr_text_gml_1492_0");
				global.msg[5] = stringsetloc("\\E1* It's my secret stash^1.&* A little snackeroo from me to you.../", "scr_text_slash_scr_text_gml_1493_0");
				scr_ralface(6, 1);
				global.msg[7] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_1495_0");
				global.msg[8] = stringsetloc("\\E8* Mmmm^1. Yummy^1. It's delicious.../", "scr_text_slash_scr_text_gml_1496_0");
				scr_susface(9, 7);
				global.msg[10] = stringsetloc("* C'mon^1, you're just pretending to eat it!/", "scr_text_slash_scr_text_gml_1498_0");
				scr_lanface(11, 3);
				global.msg[12] = stringsetloc("* Haha^1, yeah^1! That's what I do^1, too!/", "scr_text_slash_scr_text_gml_1500_0");
				scr_susface(13, 6);
				global.msg[14] = stringsetloc("* ?????/%", "scr_text_slash_scr_text_gml_1502_0");
			}
			if (global.choice == 1)
			{
				scr_noface(0);
				global.msg[1] = stringsetloc("* (There was a honeypot of salsa inside the stump.)/", "scr_text_slash_scr_text_gml_1508_0");
				global.msg[2] = stringsetloc("* (You ate some salsa.)/", "scr_text_slash_scr_text_gml_1509_0");
				global.msg[3] = stringsetloc("* (It recovered... something.)/", "scr_text_slash_scr_text_gml_1510_0");
				global.msg[4] = stringsetloc("* (Not HP.^1)&* (Just... something.)/", "scr_text_slash_scr_text_gml_1511_0");
				scr_susface(5, 2);
				global.msg[6] = stringsetloc("\\E2* Mmm..^1.&* Hey^1, what's in this?/", "scr_text_slash_scr_text_gml_1513_0");
				scr_lanface(7, 3);
				global.msg[8] = stringsetloc("* I don't know!/%", "scr_text_slash_scr_text_gml_1515_0");
			}
			if (global.choice == 2)
			{
				scr_susface(0, 2);
				global.msg[1] = stringsetloc("* Look^1, if no one else will eat it^1, I'll try it!/", "scr_text_slash_scr_text_gml_1522_0");
				global.msg[2] = stringsetloc("\\E6* ... there's a jar of..^1. Blood...^1?&* In here./", "scr_text_slash_scr_text_gml_1523_0");
				scr_lanface(3, 3);
				global.msg[4] = stringsetloc("* No^1, no^1.&* It's merely a pot of free-range salsa./", "scr_text_slash_scr_text_gml_1525_0");
				scr_susface(5, 2);
				global.msg[6] = stringsetloc("\\E2* Thanks^1, that's actually more gross somehow./", "scr_text_slash_scr_text_gml_1527_0");
				scr_lanface(7, 3);
				global.msg[8] = stringsetloc("\\E3* Any time!/", "scr_text_slash_scr_text_gml_1529_0");
				scr_susface(9, 2);
				global.msg[10] = stringsetloc("\\E2* Mmm..^1.&* Hey^1, what's in this?/", "scr_text_slash_scr_text_gml_1531_0");
				scr_lanface(11, 3);
				global.msg[12] = stringsetloc("* I don't know!/%", "scr_text_slash_scr_text_gml_1533_0");
			}
			break;
		case 270:
			addflag = 0;
			if (global.flag[267] == -10)
			{
				global.msg[0] = stringsetloc("\\E5* Kris...?/%", "scr_text_slash_scr_text_gml_1551_0");
				addflag = 1;
			}
			if (global.flag[267] == 0)
			{
				global.msg[0] = stringsetloc("\\E0* Kris^1, honey^1, you have grown up so much.../", "scr_text_slash_scr_text_gml_1560_0");
				global.msg[1] = stringsetloc("\\E9* Someday soon you will be going off to university as well.../", "scr_text_slash_scr_text_gml_1561_0");
				global.msg[2] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_1562_0");
				global.msg[3] = stringsetloc("\\E9* Remember when you were little.../", "scr_text_slash_scr_text_gml_1563_0");
				global.msg[4] = stringsetloc("\\E8* You asked when your horns were going to grow in?/", "scr_text_slash_scr_text_gml_1564_0");
				global.msg[5] = stringsetloc("\\E0* So we bought that headband with the little red horns on it./", "scr_text_slash_scr_text_gml_1565_0");
				global.msg[6] = stringsetloc("\\E4* Oh^1, you wore it for months! Whatever happened to it?/%", "scr_text_slash_scr_text_gml_1566_0");
				addflag = 1;
			}
			if (global.flag[267] == 1)
			{
				global.msg[0] = stringsetloc("\\E2* Kris^1, I need to grade these assignments./", "scr_text_slash_scr_text_gml_1575_0");
				global.msg[1] = stringsetloc("\\E0* Perhaps you should go to bed...?/", "scr_text_slash_scr_text_gml_1576_0");
				global.msg[2] = stringsetloc("\\E1* You do not look very well.../%", "scr_text_slash_scr_text_gml_1577_0");
			}
			if (addflag == 1)
				global.flag[267] += 1;
			break;
		case 285:
			global.choicemsg[0] = stringsetloc(" #Flowers", "scr_text_slash_scr_text_gml_1587_0");
			global.choicemsg[1] = stringsetloc(" #Saucer", "scr_text_slash_scr_text_gml_1588_0");
			global.choicemsg[2] = stringsetloc("Chalk", "scr_text_slash_scr_text_gml_1589_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_1590_0");
			global.msg[0] = stringsetloc("* O..^1. Oh^1, Kris.../", "scr_text_slash_scr_text_gml_1591_0");
			global.msg[1] = stringsetloc("\\E4* D..^1. Did you want to talk about something?/", "scr_text_slash_scr_text_gml_1592_0");
			global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1593_0");
			break;
		case 286:
			global.msg[0] = stringsetloc("* Huh?/%", "scr_text_slash_scr_text_gml_1597_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E3* O-Oh^1, these flowers...^1? They're from your dad.../", "scr_text_slash_scr_text_gml_1600_0");
				global.msg[1] = stringsetloc("\\E0* He..^1. He always asks how you're doing in school.../", "scr_text_slash_scr_text_gml_1601_0");
				global.msg[2] = stringsetloc("\\E7* ... Then gives me a bouquet of them./", "scr_text_slash_scr_text_gml_1602_0");
				global.msg[3] = stringsetloc("\\E1* ... A-actually^1, that he always gives me flowers.../", "scr_text_slash_scr_text_gml_1603_0");
				global.msg[4] = stringsetloc("\\E4* ... R-really makes me w-wonder if he..^1. If he l-likes.../", "scr_text_slash_scr_text_gml_1604_0");
				global.msg[5] = stringsetloc("\\EB* I-if..^1. If he l-likes.../", "scr_text_slash_scr_text_gml_1605_0");
				global.msg[6] = stringsetloc("\\EA* ... The awesome comics I lent to him./", "scr_text_slash_scr_text_gml_1606_0");
				global.msg[7] = stringsetloc("\\EB* Honestly^1, HE kind of reminds me of a superhero^1, Kris./", "scr_text_slash_scr_text_gml_1607_0");
				global.msg[8] = stringsetloc("\\EA* (He's huge and could kick my ass.)/%", "scr_text_slash_scr_text_gml_1608_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E0* Oh^1, this saucer of milk?/", "scr_text_slash_scr_text_gml_1612_0");
				global.msg[1] = stringsetloc("\\E7* I-It's for my kitty^1, MewMew^1! She's a perfect angel!/", "scr_text_slash_scr_text_gml_1613_0");
				global.msg[2] = stringsetloc("\\E3* ... uh^1? What does she look like...?/", "scr_text_slash_scr_text_gml_1614_0");
				global.msg[3] = stringsetloc("\\E9* W..^1. well, I've never actually s-seen her^1, b-but.../", "scr_text_slash_scr_text_gml_1615_0");
				global.msg[4] = stringsetloc("\\E7* Ever since I started putting out milk^1, it's been disappearing./", "scr_text_slash_scr_text_gml_1616_0");
				global.msg[5] = stringsetloc("\\E6* S..^1. So I'd like to think that there's a cat./", "scr_text_slash_scr_text_gml_1617_0");
				global.msg[6] = stringsetloc("\\E9* M.^1.. My cat./%", "scr_text_slash_scr_text_gml_1618_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E0* K..^1. Kris^1, even though you never got the chalk.../", "scr_text_slash_scr_text_gml_1625_0");
				global.msg[1] = stringsetloc("\\E0* You deserve an award for trying so hard to find it./", "scr_text_slash_scr_text_gml_1626_0");
				global.msg[2] = stringsetloc("\\E3* So^1, in return^1, I can let you borrow^1, um.../", "scr_text_slash_scr_text_gml_1627_0");
				global.msg[3] = stringsetloc("\\E0* M... My home-made DVD collection of the Symptons!/", "scr_text_slash_scr_text_gml_1628_0");
				global.msg[4] = stringsetloc("\\E7* Y-you know, the sitcom about the middle-class monster family./", "scr_text_slash_scr_text_gml_1629_0");
				global.msg[5] = stringsetloc("\\E3* It's got every episode in all 28 seasons!/", "scr_text_slash_scr_text_gml_1630_0");
				global.msg[6] = stringsetloc("\\E0* It's the funniest^1, most quotable show ever...!/", "scr_text_slash_scr_text_gml_1631_0");
				global.msg[7] = stringsetloc("\\E3* But make sure you don't watch past the second season %", "scr_text_slash_scr_text_gml_1632_0");
				global.msg[8] = stringsetloc("\\E9* Since they just rebooted it as Symptons Turbo %", "scr_text_slash_scr_text_gml_1633_0");
				global.msg[9] = stringsetloc("\\E8* They all started driving their own motor-vehicles %", "scr_text_slash_scr_text_gml_1634_0");
				global.msg[10] = stringsetloc("\\E3* And fighting giant giga-demons and stuff %", "scr_text_slash_scr_text_gml_1635_0");
				global.msg[11] = stringsetloc("\\E9* The main problem about that is that it kind of %", "scr_text_slash_scr_text_gml_1636_0");
				global.msg[12] = stringsetloc("\\E6* Lost the focus on family that it had earlier %", "scr_text_slash_scr_text_gml_1637_0");
				global.msg[13] = stringsetloc("\\E7* When their vehicles were shaped like animals %", "scr_text_slash_scr_text_gml_1638_0");
				global.msg[14] = stringsetloc("\\E5* And they were friends with the animal vehicles too %", "scr_text_slash_scr_text_gml_1639_0");
				global.msg[15] = stringsetloc("\\E3* And let's not get into Symptons Galaxy Force %", "scr_text_slash_scr_text_gml_1640_0");
				global.msg[16] = stringsetloc("\\E8* Where the Symptons discover another Earth %", "scr_text_slash_scr_text_gml_1641_0");
				global.msg[17] = stringsetloc("\\E9* On the other side of the Sun %", "scr_text_slash_scr_text_gml_1642_0");
				global.msg[18] = stringsetloc("\\E6* WOULDN'T THE GRAVITATIONAL FIELD JUST %", "scr_text_slash_scr_text_gml_1643_0");
				global.msg[19] = stringsetloc("\\E1* ... Huh?/", "scr_text_slash_scr_text_gml_1644_0");
				global.msg[20] = stringsetloc("\\E2* ... You don't want to watch it?/", "scr_text_slash_scr_text_gml_1645_0");
				global.msg[21] = stringsetloc("\\EB* ... Th-That's ok^1, Kris.../%", "scr_text_slash_scr_text_gml_1646_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E1* OK^1, umm^1, if you ever need help with homework.../", "scr_text_slash_scr_text_gml_1651_0");
				global.msg[1] = stringsetloc("\\EA* My office hours are in this disgusting alley./", "scr_text_slash_scr_text_gml_1652_0");
				global.msg[2] = stringsetloc("\\EB* H..^1. Heheheh..^1. Umm^1, tell your mom I said hi./%", "scr_text_slash_scr_text_gml_1653_0");
			}
			break;
		case 290:
			global.choicemsg[0] = stringsetloc(" #Add Spade", "scr_text_slash_scr_text_gml_1659_0");
			global.choicemsg[1] = stringsetloc(" #Add Diamond", "scr_text_slash_scr_text_gml_1660_0");
			global.choicemsg[2] = stringsetloc("Swap", "scr_text_slash_scr_text_gml_1661_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1664_0");
			global.msg[0] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_1663_0");
			global.msg[1] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1666_0");
			break;
		case 291:
			if (global.choice == 0)
			{
				with (obj_suitspuzz)
					event_user(2);
			}
			if (global.choice == 1)
			{
				with (obj_suitspuzz)
					event_user(3);
			}
			if (global.choice == 2)
			{
				with (obj_suitspuzz)
					event_user(4);
			}
			global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_1682_0");
			break;
		case 295:
			global.choicemsg[0] = stringsetloc(" #Perpetuate", "scr_text_slash_scr_text_gml_1684_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1685_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1688_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1689_0_b");
			global.msg[0] = stringsetloc("* (Life cannot exist without consuming.^1)&* (Even the moss drinks water.)/", "scr_text_slash_scr_text_gml_1688_0");
			global.msg[1] = stringsetloc("* (Perpetuate the cycle of existence?)/", "scr_text_slash_scr_text_gml_1689_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1690_0");
			global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1693_0");
			if (global.flag[106] == 1)
				global.msg[0] = stringsetloc("* (The moss has been eaten.^1)&* (The cycle continues...)/%", "scr_text_slash_scr_text_gml_1694_0");
			break;
		case 296:
			if (global.choice == 0)
			{
				global.hp[1] = global.maxhp[1];
				snd_play(snd_swallow);
				global.msg[0] = stringsetloc("* (You ate the moss.^1)&* (Tastes..^1. mossy.)/", "scr_text_slash_scr_text_gml_1703_0");
				global.msg[1] = stringsetloc("* (Your HP was mossed out.)/%", "scr_text_slash_scr_text_gml_1704_0");
				global.flag[106] = 1;
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (The cycle ends here^1, in the corner of a small cell...)/%", "scr_text_slash_scr_text_gml_1709_0");
			break;
		case 300:
			global.choicemsg[0] = stringsetloc(" #Take", "scr_text_slash_scr_text_gml_1714_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1715_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1718_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1719_0_b");
			global.msg[0] = stringsetloc("* (These shackles seem oddly fashionable.)/", "scr_text_slash_scr_text_gml_1718_0");
			global.msg[1] = stringsetloc("* (Take them?)/", "scr_text_slash_scr_text_gml_1719_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1720_0");
			global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1723_0");
			if (global.flag[105] == 1)
				global.msg[0] = stringsetloc("* (Ain't nothin' to hold you down...)/%", "scr_text_slash_scr_text_gml_1724_0");
			break;
		case 301:
			if (global.choice == 0)
			{
				scr_armorget(5);
				if (noroom == 1)
				{
					global.msg[0] = stringsetloc("* (You're carrying too many ARMORs.)/%", "scr_text_slash_scr_text_gml_1734_0");
				}
				else
				{
					with (obj_npc_sign)
						image_index = 1;
					global.msg[0] = stringsetloc("* (IRONSHACKLE was put in your ARMORs.)/%", "scr_text_slash_scr_text_gml_1739_0");
					global.flag[105] = 1;
				}
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (Don't need nothin' to hold you down...)/%", "scr_text_slash_scr_text_gml_1745_0");
			break;
		case 305:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_1750_0");
			global.choicemsg[1] = stringsetloc(" #She'll be#fine", "scr_text_slash_scr_text_gml_1751_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1754_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1755_0_b");
			global.msg[0] = stringsetloc("\\E6* ... thanks for helping her^1, Kris^1. She appreciates it./", "scr_text_slash_scr_text_gml_1754_0");
			global.msg[1] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_1755_0");
			global.msg[2] = stringsetloc("\\E1* Kris.../", "scr_text_slash_scr_text_gml_1756_0");
			global.msg[3] = stringsetloc("\\E6* Are you worried about Susie?/", "scr_text_slash_scr_text_gml_1757_0");
			global.msg[4] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1758_0");
			global.msg[5] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1761_0");
			break;
		case 306:
			global.msg[0] = stringsetloc("\\E6* Well, regardless of how you feel.../", "scr_text_slash_scr_text_gml_1763_0");
			global.msg[1] = stringsetloc("\\E0* I don't think it would hurt to take a moment.../", "scr_text_slash_scr_text_gml_1764_0");
			global.msg[2] = stringsetloc("\\E6* Close your eyes^1, and think about what she's doing now.../%", "scr_text_slash_scr_text_gml_1765_0");
			break;
		case 310:
			global.choicemsg[0] = stringsetloc(" #Go Left", "scr_text_slash_scr_text_gml_1769_0");
			global.choicemsg[1] = stringsetloc(" #Go Right", "scr_text_slash_scr_text_gml_1770_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1773_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1774_0_b");
			global.msg[0] = stringsetloc("\\E0* (Alright..^1. out of the cell...)/", "scr_text_slash_scr_text_gml_1773_0");
			global.msg[1] = stringsetloc("* (Where to next...?)/", "scr_text_slash_scr_text_gml_1774_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1775_0");
			global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1778_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1779_0");
			break;
		case 311:
			global.msg[0] = stringsetloc("\\E9* Huh...? Kris...^1? Did you say something back there?/", "scr_text_slash_scr_text_gml_1781_0");
			global.msg[1] = stringsetloc("\\E0* (... I can't hear them anymore...)/%", "scr_text_slash_scr_text_gml_1782_0");
			break;
		case 315:
			global.choicemsg[0] = stringsetloc(" #Fix Item", "scr_text_slash_scr_text_gml_1786_0");
			global.choicemsg[1] = stringsetloc(" #Leave", "scr_text_slash_scr_text_gml_1787_0");
			global.choicemsg[2] = stringsetloc("Fix Us", "scr_text_slash_scr_text_gml_1788_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1791_0_b");
			global.msg[0] = stringsetloc("* Well^1, well^1. I am the smith Malius^1. I can fix anything^1. Weapon, armor.../", "scr_text_slash_scr_text_gml_1790_0");
			global.msg[1] = stringsetloc("* ... I can even fix you^1! Well^1, well^1, what will it be?/", "scr_text_slash_scr_text_gml_1791_0");
			global.msg[2] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_1792_0");
			break;
		case 316:
			global.msg[0] = stringsetloc("* Hm^1? What is it now?/%", "scr_text_slash_scr_text_gml_1796_0");
			if (global.choice == 0)
			{
				which = 0;
				if (scr_keyitemcheck(4) && scr_keyitemcheck(6) && scr_keyitemcheck(7))
					which = 3;
				if (scr_keyitemcheck(3) && which == 0)
				{
					which = 1;
					scr_itemget(6);
					if (noroom == 1)
						which = 2;
				}
				if (which == 0)
				{
					global.msg[0] = stringsetloc("* Well^1, well^1. You have nothing to fix^1./", "scr_text_slash_scr_text_gml_1813_0");
					global.msg[1] = stringsetloc("* But if you find anything BROKEN^1, return here./", "scr_text_slash_scr_text_gml_1814_0");
					global.msg[2] = stringsetloc("* After all^1, I can fix anything.../", "scr_text_slash_scr_text_gml_1815_0");
					global.msg[3] = stringsetloc("* ... except for a BROKEN HEART./%", "scr_text_slash_scr_text_gml_1816_0");
				}
				if (which == 1)
				{
					global.msg[0] = stringsetloc("* Huh---^1! That CAKE is seething with energy^1! You must let me fix it!/", "scr_text_slash_scr_text_gml_1821_0");
					global.msg[1] = stringsetloc("* Huh-hah^1! Let's feel my technique!/%", "scr_text_slash_scr_text_gml_1822_0");
					with (obj_npc_hammerguy)
						con = 30;
				}
				if (which == 2)
				{
					global.msg[0] = stringsetloc("* Huh---^1! That CAKE is seething with energy^1! You must let me fix it!/", "scr_text_slash_scr_text_gml_1828_0");
					global.msg[1] = stringsetloc("* ... actually^1, you will need a free space in your ITEMs first./%", "scr_text_slash_scr_text_gml_1829_0");
				}
				if (which == 3)
				{
					global.msg[0] = stringsetloc("* Huh---^1! That KEY is seething with energy^1! You must let me fix it!/", "scr_text_slash_scr_text_gml_1834_0");
					global.msg[1] = stringsetloc("* Huh-hah^1! Let's feel my technique!/%", "scr_text_slash_scr_text_gml_1835_0");
					with (obj_npc_hammerguy)
						con = 50;
				}
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* Well^1, well^1. Good journey^1, my friends./%", "scr_text_slash_scr_text_gml_1842_0");
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* Your body is a weapon^1, too^1. You must take care of it from time to time./", "scr_text_slash_scr_text_gml_1846_0");
				global.msg[1] = stringsetloc("* Huh-hah^1! Let's feel my technique./%", "scr_text_slash_scr_text_gml_1847_0");
				with (obj_npc_hammerguy)
					con = 10;
			}
			break;
		case 325:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1854_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1855_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1858_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1859_0");
			global.msg[0] = stringsetloc("* Interested in a Choco Diamond^1? /", "scr_text_slash_scr_text_gml_1858_0");
			global.msg[1] = stringsetloc("* All proceeds go to Rudinn Relief Funds^1, I guess^1.&* It's only $40!/", "scr_text_slash_scr_text_gml_1861_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1860_0");
			global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1863_0");
			if (scr_itemcheck(13))
			{
				global.msg[0] = stringsetloc("* Choco Diamonds^1, only $40^1, I guess./", "scr_text_slash_scr_text_gml_1866_0");
				global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1865_0");
			}
			break;
		case 326:
			if (global.choice == 0)
			{
				if (global.gold >= 40)
				{
					scr_itemget(13);
					if (noroom == 0)
					{
						global.gold -= 40;
						global.msg[0] = stringsetloc("* Thanks^1, I guess^1.&* (The Choco Diamond was added to your ITEMS.)/%", "scr_text_slash_scr_text_gml_1878_0");
					}
					else
					{
						global.msg[0] = stringsetloc("* ... You have too many ITEMS for this^1, I guess./%", "scr_text_slash_scr_text_gml_1882_0");
					}
				}
				else
				{
					global.msg[0] = stringsetloc("* You don't have enough money^1, I guess./%", "scr_text_slash_scr_text_gml_1887_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* Okay I guess./%", "scr_text_slash_scr_text_gml_1892_0");
			}
			break;
		case 327:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1901_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1902_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1905_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1906_0_b");
			global.msg[0] = stringsetloc("* (Hathy offers a Hearts Donut.^1)&* (Proceeds go to Hathy's Health. It costs $40.)/", "scr_text_slash_scr_text_gml_1907_0");
			global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1906_0");
			global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1909_0");
			break;
		case 328:
			if (global.choice == 0)
			{
				if (global.gold >= 40)
				{
					scr_itemget(12);
					if (noroom == 0)
					{
						global.gold -= 40;
						global.msg[0] = stringsetloc("* (Hathy seemed happy.^1)&* (The Hearts Donut was added to your ITEMS.)/%", "scr_text_slash_scr_text_gml_1919_0");
					}
					else
					{
						global.msg[0] = stringsetloc("* (You didn't have enough room in your ITEMs.^1)&* (Hathy seemed sad.)/%", "scr_text_slash_scr_text_gml_1923_0");
					}
				}
				else
				{
					global.msg[0] = stringsetloc("* (You didn't have enough money.^1)&* (Hathy seemed sad.)/%", "scr_text_slash_scr_text_gml_1928_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* (Hathy accepted your choice.)/%", "scr_text_slash_scr_text_gml_1933_0");
			}
			break;
		case 330:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1939_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1940_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1943_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1944_0");
			global.fc = 5;
			global.typer = 32;
			global.fe = 2;
			global.msg[0] = stringsetloc("* Greetings^1, gentleclowns./", "scr_text_slash_scr_text_gml_1946_0");
			global.msg[1] = stringsetloc("\\E1* May we interest you in a Lancer Cookie?/", "scr_text_slash_scr_text_gml_1947_0");
			scr_susface(2, 2);
			global.msg[3] = stringsetloc("* All proceeds go to kicking your ass./", "scr_text_slash_scr_text_gml_1949_0");
			scr_lanface(4, 3);
			global.msg[5] = stringsetloc("* It's a mere $40./", "scr_text_slash_scr_text_gml_1953_0");
			global.msg[6] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1952_0");
			global.msg[7] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1955_0");
			break;
		case 331:
			if (global.choice == 0)
			{
				if (global.gold >= 40)
				{
					scr_itemget(9);
					if (noroom == 0)
					{
						global.gold -= 40;
						global.fc = 1;
						global.fe = 1;
						global.typer = 30;
						global.msg[0] = stringsetloc("* Heheheh^1, thanks.../", "scr_text_slash_scr_text_gml_1969_0");
						scr_noface(1);
						global.msg[2] = stringsetloc("* (The LANCERCOOKIE was added to your ITEMs.)/", "scr_text_slash_scr_text_gml_1971_0");
						scr_susface(3, 2);
						global.msg[4] = stringsetloc("\\E2* For getting CHEATED by us!!/", "scr_text_slash_scr_text_gml_1973_0");
						scr_lanface(5, 1);
						global.msg[6] = stringsetloc("* Now we may fund our illicit plans!!/%", "scr_text_slash_scr_text_gml_1975_0");
						with (obj_lancerbakesale_event)
							con = 10;
					}
					else
					{
						global.gold -= 40;
						global.fc = 0;
						global.fe = 0;
						global.typer = 6;
						global.msg[0] = stringsetloc("* (You bought LANCERCOOKIE.^1)&* (But you didn't have any room.)/", "scr_text_slash_scr_text_gml_1985_0");
						global.msg[1] = stringsetloc("* (So Lancer just dropped it on the ground and it broke.)/", "scr_text_slash_scr_text_gml_1986_0");
						scr_lanface(2, 7);
						global.msg[3] = stringsetloc("* Oops./", "scr_text_slash_scr_text_gml_1988_0");
						scr_susface(4, 2);
						global.msg[5] = stringsetloc("* Oh well^1. Buyers cryers./", "scr_text_slash_scr_text_gml_1990_0");
						scr_lanface(6, 3);
						global.msg[7] = stringsetloc("* Thank you anyway for your contribution.../", "scr_text_slash_scr_text_gml_1992_0");
						scr_susface(8, 2);
						global.msg[9] = stringsetloc("* ... to getting SWINDLED by us!/", "scr_text_slash_scr_text_gml_1994_0");
						scr_lanface(10, 2);
						global.msg[11] = stringsetloc("* Now we can fund our illicit plans!!!/%", "scr_text_slash_scr_text_gml_1996_0");
						with (obj_lancerbakesale_event)
							con = 10;
					}
				}
				else
				{
					global.typer = 32;
					global.fe = 6;
					global.fc = 5;
					global.msg[0] = stringsetloc("* ... You don't have enough funds./", "scr_text_slash_scr_text_gml_2007_0");
					scr_susface(1, 0);
					global.msg[2] = stringsetloc("* What^1? What did you spend it on!^1? Pastries!?/", "scr_text_slash_scr_text_gml_2009_0");
					scr_lanface(3, 6);
					global.msg[4] = stringsetloc("* That's irresponsible./%", "scr_text_slash_scr_text_gml_2011_0");
				}
			}
			else
			{
				global.typer = 32;
				global.fc = 5;
				global.fe = 2;
				global.msg[0] = stringsetloc("* Hey^1! You can't not buy from us!/", "scr_text_slash_scr_text_gml_2019_0");
				scr_susface(1, 2);
				global.msg[2] = stringsetloc("* Hey DUMBASS^1!&* It's for a GOOD CAUSE!/", "scr_text_slash_scr_text_gml_2021_0");
				scr_ralface(3, 6);
				global.msg[4] = stringsetloc("* (Let's just buy one^1, Kris.)/%", "scr_text_slash_scr_text_gml_2023_0");
			}
			break;
		case 335:
			global.choicemsg[0] = stringsetloc("#Alphys", "scr_text_slash_scr_text_gml_2028_0");
			global.choicemsg[1] = stringsetloc("#Dark World", "scr_text_slash_scr_text_gml_2029_0");
			global.choicemsg[2] = stringsetloc("Help you", "scr_text_slash_scr_text_gml_2030_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_2031_0");
			global.fe = 2;
			global.fc = 9;
			global.msg[0] = stringsetloc("\\E2* HEY^1, PUNK!!^1!&* GET OUT OF THE ROAD!!!/", "scr_text_slash_scr_text_gml_2034_0");
			global.msg[1] = stringsetloc("* YOU'RE BLOCKIN' TRAFFIC!!!!/", "scr_text_slash_scr_text_gml_2035_0");
			global.msg[2] = stringsetloc("\\E1* ... Oh^1, wait^1, it's just Asgore's kid./", "scr_text_slash_scr_text_gml_2036_0");
			global.msg[3] = stringsetloc("\\E7* Sorry^1, I'm a little^1, uh^1, worked up lately./", "scr_text_slash_scr_text_gml_2037_0");
			global.msg[4] = stringsetloc("\\E2* This job is SO boring^1.&* Nothing EVER happens in this town!/", "scr_text_slash_scr_text_gml_2038_0");
			global.msg[5] = stringsetloc("\\E4* Ngh..^1. I just wish SOMETHING would shake things up!/", "scr_text_slash_scr_text_gml_2039_0");
			global.msg[6] = stringsetloc("\\E7* ... Huh^1?&* You got somethin' to report?/", "scr_text_slash_scr_text_gml_2040_0");
			global.msg[7] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2041_0");
			if (global.flag[270] >= 1)
			{
				global.fe = 1;
				global.msg[0] = stringsetloc("\\E1* Got somethin' to report?/", "scr_text_slash_scr_text_gml_2045_0");
				global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2046_0");
			}
			global.flag[270] = 1;
			break;
		case 336:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E0* ... Alphys?/", "scr_text_slash_scr_text_gml_2054_0");
				global.msg[1] = stringsetloc("\\E3* Who's Alphys^1?&* No idea who you're talking about./", "scr_text_slash_scr_text_gml_2055_0");
				global.msg[2] = stringsetloc("\\E2* ... Why^1, did they do something illegal!?/", "scr_text_slash_scr_text_gml_2056_0");
				global.msg[3] = stringsetloc("\\E5* Gotcha^1, if I see \"Alphys^1,\" I'll tackle 'em!!/", "scr_text_slash_scr_text_gml_2057_0");
				global.msg[4] = stringsetloc("* Fuhuhuhu!^1!&* They're as good as dead!!/%", "scr_text_slash_scr_text_gml_2058_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E1* What^1?&* There's a Dark World inside the school?/", "scr_text_slash_scr_text_gml_2062_0");
				global.msg[1] = stringsetloc("\\E2* Uh..^1. SURE^1, kid./", "scr_text_slash_scr_text_gml_2063_0");
				global.msg[2] = stringsetloc("\\E5* There's no law against Dark Worlds anyway!/", "scr_text_slash_scr_text_gml_2064_0");
				global.msg[3] = stringsetloc("* That's a job for the school board!/%", "scr_text_slash_scr_text_gml_2065_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E6* Aww^1, you wanna help me^1? Sure^1, punk./", "scr_text_slash_scr_text_gml_2069_0");
				global.msg[1] = stringsetloc("\\E5* Get someone to rob the bank so I can suplex them!/", "scr_text_slash_scr_text_gml_2070_0");
				global.msg[2] = stringsetloc("\\E1* ... wait^1, do we even have a bank?/", "scr_text_slash_scr_text_gml_2071_0");
				global.msg[3] = stringsetloc("\\E5* Hey^1, get someone to build a bank...!/%", "scr_text_slash_scr_text_gml_2072_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E6* Don't do anything illegal^1, you little punk~!/", "scr_text_slash_scr_text_gml_2076_0");
				global.msg[1] = stringsetloc("\\E3* And lemme know if you get a lead on any purple girls./", "scr_text_slash_scr_text_gml_2077_0");
				global.msg[2] = stringsetloc("\\E4* There's one wanted on SEVERAL counts of Comic Mischief./%", "scr_text_slash_scr_text_gml_2078_0");
			}
			break;
		case 340:
			global.choicemsg[0] = stringsetloc("#Asriel", "scr_text_slash_scr_text_gml_2083_0");
			global.choicemsg[1] = stringsetloc("#Job", "scr_text_slash_scr_text_gml_2084_0");
			global.choicemsg[2] = stringsetloc("Co-Workers", "scr_text_slash_scr_text_gml_2085_0");
			global.choicemsg[3] = stringsetloc("No", "scr_text_slash_scr_text_gml_2086_0");
			global.fe = 0;
			global.fc = 19;
			global.msg[0] = stringsetloc("\\E0* Little buddy^1!&* It's me!/", "scr_text_slash_scr_text_gml_2089_0");
			global.msg[1] = stringsetloc("\\E3* Wanna chat for a minute before I lose my mind?/", "scr_text_slash_scr_text_gml_2090_0");
			global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2091_0");
			if (global.flag[271] > 1)
			{
				global.msg[0] = stringsetloc("\\E0* H... Hey!&* Hey little buddy^1!&* What's up?!/", "scr_text_slash_scr_text_gml_2094_0");
				global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2095_0");
			}
			global.flag[271] = 2;
			break;
		case 341:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E0* Do you know when Azzy's coming home?/", "scr_text_slash_scr_text_gml_2103_0");
				global.msg[1] = stringsetloc("\\E8* Y..^1. You can't tell him this^1, but I really miss the guy./", "scr_text_slash_scr_text_gml_2104_0");
				global.msg[2] = stringsetloc("\\E8* It'd be sweet to cruise around town like old times.../", "scr_text_slash_scr_text_gml_2105_0");
				global.msg[3] = stringsetloc("\\E3* Picking up^1, for example.../", "scr_text_slash_scr_text_gml_2106_0");
				global.msg[4] = stringsetloc("\\E4* CHICKS/", "scr_text_slash_scr_text_gml_2107_0");
				global.msg[5] = stringsetloc("\\E5* Which^1, as a matter of course/", "scr_text_slash_scr_text_gml_2108_0");
				global.msg[6] = stringsetloc("\\E6* May not have ever actually happened./", "scr_text_slash_scr_text_gml_2109_0");
				global.msg[7] = stringsetloc("\\E2* B-but one time Undyne made eye contact with me!/", "scr_text_slash_scr_text_gml_2110_0");
				global.msg[8] = stringsetloc("\\E7* ... while she was writing me a speeding ticket./%", "scr_text_slash_scr_text_gml_2111_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E1* Make no mistake^1, little buddy./", "scr_text_slash_scr_text_gml_2115_0");
				global.msg[1] = stringsetloc("\\E2* ICE-E's P\"E\"ZZA is H\"E\"LL./", "scr_text_slash_scr_text_gml_2116_0");
				global.msg[2] = stringsetloc("\\E0* I can't slack off for SECONDS without hearing.../", "scr_text_slash_scr_text_gml_2117_0");
				global.msg[3] = stringsetloc("\\E3* \"Be a team player^1, there's no I in PEZZA!\"/", "scr_text_slash_scr_text_gml_2118_0");
				global.msg[4] = stringsetloc("\\E2* YES THERE IS^1.&* YOU JUST TOOK IT OUT./", "scr_text_slash_scr_text_gml_2119_0");
				global.msg[5] = stringsetloc("\\E3* But it's OK^1, little buddy^1.&* I've been saving up.../", "scr_text_slash_scr_text_gml_2120_0");
				global.msg[6] = stringsetloc("\\E8* ... To go to college where Azzy is!/", "scr_text_slash_scr_text_gml_2121_0");
				global.msg[7] = stringsetloc("\\E5* Then I'll get a theater degree^1, become a famous actor.../", "scr_text_slash_scr_text_gml_2122_0");
				global.msg[8] = stringsetloc("\\E1* And let the fangirls roll in, little buddy./%", "scr_text_slash_scr_text_gml_2123_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E1* Ah^1, yes^1, Little Buddy^1. Good idea^1. Meet the Rogue's Gallery./", "scr_text_slash_scr_text_gml_2128_0");
				global.msg[1] = stringsetloc("\\E3* Blue Ears - Soft serve obsessed^1, no concept of personal space./", "scr_text_slash_scr_text_gml_2129_0");
				global.msg[2] = stringsetloc("\\E2* Keeps accidentally pouring slushies on me and giggling./", "scr_text_slash_scr_text_gml_2130_0");
				global.msg[3] = stringsetloc("\\E1* The Warrior - Thankfully absent due to pizza-related injuries./", "scr_text_slash_scr_text_gml_2131_0");
				global.msg[4] = stringsetloc("\\E2* Constantly terrorizing customers with war chants./", "scr_text_slash_scr_text_gml_2132_0");
				global.msg[5] = stringsetloc("\\E3* Purple Guy - Man^1, THAT GUY^1, you gotta.../", "scr_text_slash_scr_text_gml_2133_0");
				global.msg[6] = stringsetloc("\\E6* ... actually^1, does that guy even work here?/", "scr_text_slash_scr_text_gml_2134_0");
				global.msg[7] = stringsetloc("\\E3* Ah^1, my co-workers^1. Where would I be without them?/", "scr_text_slash_scr_text_gml_2135_0");
				global.msg[8] = stringsetloc("\\E1* A happy place^1, little buddy^1. A much happier place./%", "scr_text_slash_scr_text_gml_2136_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E3* It's fine^1, Little Buddy^1. You don't have to watch me suffer./", "scr_text_slash_scr_text_gml_2141_0");
				global.msg[1] = stringsetloc("\\E1* Just enjoy your freedom... While it lasts.../%", "scr_text_slash_scr_text_gml_2142_0");
			}
			break;
		case 345:
			global.choicemsg[0] = stringsetloc("#Fruit Juice", "scr_text_slash_scr_text_gml_2147_0");
			global.choicemsg[1] = stringsetloc("#Nothing", "scr_text_slash_scr_text_gml_2148_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2151_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2152_0_b");
			global.msg[0] = stringsetloc("* Kris..^1. What a pleasant surprise to see you here^1.&* And on a school day./", "scr_text_slash_scr_text_gml_2151_0");
			global.msg[1] = stringsetloc("* There must be a reason that you came here at such a time./", "scr_text_slash_scr_text_gml_2152_0");
			global.msg[2] = stringsetloc("* I^1, Father Alvin^1, implore you^1.&* If you have anything weighing on your mind^1, please^1, speak./", "scr_text_slash_scr_text_gml_2153_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2154_0");
			break;
		case 346:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* Kris, if you want some of our \"sick\" Fruit Juice^1, you should come to our service./", "scr_text_slash_scr_text_gml_2160_0");
				global.msg[1] = stringsetloc("* Our choir sounds a bit thinner since your brother went away./", "scr_text_slash_scr_text_gml_2161_0");
				global.msg[2] = stringsetloc("* Kris^1, it would be wonderful if you would sing with us./", "scr_text_slash_scr_text_gml_2162_0");
				global.msg[3] = stringsetloc("* Or even participated to any extent,/", "scr_text_slash_scr_text_gml_2163_0");
				global.msg[4] = stringsetloc("* Instead of just trying to drink the Fruit Juice./%", "scr_text_slash_scr_text_gml_2164_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* I understand^1.&* I hope in time you may find the words you seek./", "scr_text_slash_scr_text_gml_2168_0");
				global.msg[1] = stringsetloc("* Let the Angel's power light your way./%", "scr_text_slash_scr_text_gml_2169_0");
			}
			break;
		case 350:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_2174_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_2175_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2178_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2179_0_b");
			global.msg[0] = stringsetloc("* (Scented markers.)/", "scr_text_slash_scr_text_gml_2178_0");
			global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2179_0");
			break;
		case 351:
			if (global.choice == 0)
				global.msg[0] = stringsetloc("* (You dig out the marshmallow one and start huffing it.)/%", "scr_text_slash_scr_text_gml_2185_0");
			else
				global.msg[0] = stringsetloc("* (The chocolate one smells too fake anyway.)/%", "scr_text_slash_scr_text_gml_2189_0");
			break;
		case 355:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_2194_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_2195_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2198_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2199_0_b");
			global.msg[0] = stringsetloc("* (It's a toilet.^1)&* (Flush it?)/", "scr_text_slash_scr_text_gml_2198_0");
			global.msg[1] = stringsetloc("& &         Yes         No\\C1", "scr_text_slash_scr_text_gml_2199_0");
			global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2202_0");
			if (global.plot >= 0)
				global.msg[1] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_2205_0");
			break;
		case 356:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_2216_0");
				with (obj_town_event)
					con = 60;
			}
			else
			{
				global.msg[0] = stringsetloc("* (It's good to conserve water.)/%", "scr_text_slash_scr_text_gml_2219_0");
			}
			break;
		case 360:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_2226_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_2227_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2228_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2229_0_b");
			global.msg[0] = stringsetloc("* (It's an obligatory hospital piano^1, shrunk to fit in the corner.)/", "scr_text_slash_scr_text_gml_2228_0");
			global.msg[1] = stringsetloc("* (As a result, it's missing most of the good keys.)/", "scr_text_slash_scr_text_gml_2229_0");
			global.msg[2] = stringsetloc("* (Play it?)/", "scr_text_slash_scr_text_gml_2230_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2231_0");
			break;
		case 361:
			if (global.choice == 0)
			{
				with (obj_npc_room)
					tempvar = 1;
				snd_play(snd_pianonoise);
				global.msg[0] = stringsetloc("* (Plink...)/%", "scr_text_slash_scr_text_gml_2239_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* (Your hands linger over the keys doing nothing.)/%", "scr_text_slash_scr_text_gml_2243_0");
			}
			break;
		case 365:
			global.msg[0] = stringsetloc("* (Ring^1, ring...)/", "scr_text_slash_scr_text_gml_2248_0");
			scr_torface(1, 8);
			global.msg[2] = stringsetloc("* K..^1. Kris!?/", "scr_text_slash_scr_text_gml_2250_0");
			global.msg[3] = stringsetloc("\\E1* Whatever have you been doing!?/", "scr_text_slash_scr_text_gml_2251_0");
			global.msg[4] = stringsetloc("\\E3* I sat in the car waiting for you after school for half an hour...!/", "scr_text_slash_scr_text_gml_2252_0");
			global.msg[5] = stringsetloc("\\E7* I called and called^1, but you never picked up.../", "scr_text_slash_scr_text_gml_2253_0");
			global.msg[6] = stringsetloc("\\E8* You had your poor mother worried sick!/", "scr_text_slash_scr_text_gml_2254_0");
			global.msg[7] = stringsetloc("\\E7* Kris^1, I am afraid I am going to have to punish you.../", "scr_text_slash_scr_text_gml_2255_0");
			global.msg[8] = stringsetloc("\\E8* ... huh?/", "scr_text_slash_scr_text_gml_2256_0");
			global.msg[9] = stringsetloc("\\E1* ... A friend?/", "scr_text_slash_scr_text_gml_2257_0");
			global.msg[10] = stringsetloc("\\E0* You were spending time with..^1. a friend?/", "scr_text_slash_scr_text_gml_2258_0");
			global.msg[11] = stringsetloc("\\E0* .../", "scr_text_slash_scr_text_gml_2259_0");
			global.msg[12] = stringsetloc("\\E9* Kris.../", "scr_text_slash_scr_text_gml_2260_0");
			global.msg[13] = stringsetloc("\\E0* I will make an exception this time./", "scr_text_slash_scr_text_gml_2261_0");
			global.msg[14] = stringsetloc("* You can continue your adventures a little longer./", "scr_text_slash_scr_text_gml_2262_0");
			global.msg[15] = stringsetloc("\\E1* But when you return home.../", "scr_text_slash_scr_text_gml_2263_0");
			global.msg[16] = stringsetloc("\\E5* You are going to have to go to bed early./", "scr_text_slash_scr_text_gml_2264_0");
			global.msg[17] = stringsetloc("\\E0* See you soon^1, honey./", "scr_text_slash_scr_text_gml_2265_0");
			scr_noface(18);
			global.msg[19] = stringsetloc("* (Click...)/%", "scr_text_slash_scr_text_gml_2267_0");
			break;
		case 370:
			global.choicemsg[0] = stringsetloc("Great to#see you#again", "scr_text_slash_scr_text_gml_2271_0");
			global.choicemsg[1] = stringsetloc("Who the#hell are#you?", "scr_text_slash_scr_text_gml_2272_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2275_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2276_0_b");
			global.msg[0] = stringsetloc("\\E0* hey, look who's walkin' around./", "scr_text_slash_scr_text_gml_2275_0");
			global.msg[1] = stringsetloc("\\E2* how are ya^1, kid?/", "scr_text_slash_scr_text_gml_2276_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2277_0");
			break;
		case 371:
			global.choicemsg[0] = stringsetloc("#Store", "scr_text_slash_scr_text_gml_2281_0");
			global.choicemsg[1] = stringsetloc("#Friends", "scr_text_slash_scr_text_gml_2282_0");
			global.choicemsg[2] = stringsetloc("Leave", "scr_text_slash_scr_text_gml_2283_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2286_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E2* yeah^1, it's real nice^1, isn't it?/", "scr_text_slash_scr_text_gml_2287_0");
				global.msg[1] = stringsetloc("\\E5* especially considering i've never met you before./", "scr_text_slash_scr_text_gml_2288_0");
				global.msg[2] = stringsetloc("\\E0* the name's sans^1.&* sans the skeleton^1.&* i'm new in town./", "scr_text_slash_scr_text_gml_2289_0");
				global.msg[3] = stringsetloc("\\E2* what's up?/", "scr_text_slash_scr_text_gml_2290_0");
				global.msg[4] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_2291_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E3* hmm..^1. y'know^1, good question./", "scr_text_slash_scr_text_gml_2295_0");
				global.msg[1] = stringsetloc("\\E5* i'm sans^1.&* your friendly neighborhood skeleton./", "scr_text_slash_scr_text_gml_2296_0");
				global.msg[2] = stringsetloc("\\E2* what's up?/", "scr_text_slash_scr_text_gml_2297_0");
				global.msg[3] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_2298_0");
			}
			if (global.flag[273] >= 1)
			{
				global.fe = 5;
				global.msg[0] = stringsetloc("\\E5* what's up?/", "scr_text_slash_scr_text_gml_2304_0");
				global.msg[1] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_2305_0");
			}
			if (global.flag[273] < 1)
				global.flag[273] = 1;
			break;
		case 372:
			global.choicemsg[0] = stringsetloc("#Me", "scr_text_slash_scr_text_gml_2311_0");
			global.choicemsg[1] = stringsetloc("#My Mom", "scr_text_slash_scr_text_gml_2312_0");
			global.choicemsg[2] = stringsetloc("My Teacher", "scr_text_slash_scr_text_gml_2313_0");
			global.choicemsg[3] = stringsetloc("Nobody", "scr_text_slash_scr_text_gml_2314_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E2* behind me^1?&* yeah^1, that's the grocery store./", "scr_text_slash_scr_text_gml_2318_0");
				global.msg[1] = stringsetloc("\\E1* unfortunately^1, it's closed./", "scr_text_slash_scr_text_gml_2319_0");
				global.msg[2] = stringsetloc("\\E2* what a pain^1.&* i really wanted to buy some milk./", "scr_text_slash_scr_text_gml_2320_0");
				global.msg[3] = stringsetloc("\\E5* someone oughta complain to the guy who runs it./%", "scr_text_slash_scr_text_gml_2321_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E0* we just moved here^1, so i hardly know anyone./", "scr_text_slash_scr_text_gml_2325_0");
				global.msg[1] = stringsetloc("\\E2* why^1, got anyone i should know better?/", "scr_text_slash_scr_text_gml_2326_0");
				global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2327_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E2* oh^1, you've got something better to do?/", "scr_text_slash_scr_text_gml_2333_0");
				global.msg[1] = stringsetloc("\\E0* me too./", "scr_text_slash_scr_text_gml_2334_0");
				global.msg[2] = stringsetloc("\\E2* anyway^1, i'll be standing here doing nothing./%", "scr_text_slash_scr_text_gml_2335_0");
			}
			break;
		case 373:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* huh?/%", "scr_text_slash_scr_text_gml_2342_0");
				if (global.flag[274] == 2)
				{
					global.msg[0] = stringsetloc("\\E2* ah^1, sorry^1. i don't hang out with idiot babies./", "scr_text_slash_scr_text_gml_2345_0");
					global.msg[1] = stringsetloc("\\E5* they compete with my sociological niche./%", "scr_text_slash_scr_text_gml_2346_0");
				}
				if (global.flag[274] == 1)
					global.msg[0] = stringsetloc("\\E5* hey^1, i gave you a number^1, what more do you want?/%", "scr_text_slash_scr_text_gml_2351_0");
				if (global.flag[274] == 0)
				{
					global.msg[0] = stringsetloc("\\E2* woah there^1, tiger./", "scr_text_slash_scr_text_gml_2356_0");
					global.msg[1] = stringsetloc("\\E0* you can't just jump straight into friendship./", "scr_text_slash_scr_text_gml_2357_0");
					global.msg[2] = stringsetloc("\\E2* it takes time./", "scr_text_slash_scr_text_gml_2358_0");
					global.msg[3] = stringsetloc("\\E3* .../", "scr_text_slash_scr_text_gml_2359_0");
					global.msg[4] = stringsetloc("\\E2* alright^1, that's enough time./", "scr_text_slash_scr_text_gml_2360_0");
					global.msg[5] = stringsetloc("\\E0* take this./", "scr_text_slash_scr_text_gml_2361_0");
					global.msg[6] = stringsetloc("\\E5* call it whenever you feel like./", "scr_text_slash_scr_text_gml_2362_0");
					scr_noface(7);
					global.msg[8] = stringsetloc("* (You got Sans's Number.)/%", "scr_text_slash_scr_text_gml_2364_0");
					global.flag[274] = 1;
					scr_phoneadd(202);
				}
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E1* your mother^1, huh...?/", "scr_text_slash_scr_text_gml_2372_0");
				global.msg[1] = stringsetloc("\\E0* too late./", "scr_text_slash_scr_text_gml_2373_0");
				global.msg[2] = stringsetloc("\\E5* i already \"befriended\" your mom last night./", "scr_text_slash_scr_text_gml_2374_0");
				global.msg[3] = stringsetloc("\\E2* she's great. came to the store to buy chocolate kisses./", "scr_text_slash_scr_text_gml_2375_0");
				global.msg[4] = stringsetloc("\\E3* said she's gotta lock her door to stop you from eating 'em./", "scr_text_slash_scr_text_gml_2376_0");
				global.msg[5] = stringsetloc("\\E5* heheheh... you sound like a fun kid^1, huh?/%", "scr_text_slash_scr_text_gml_2377_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E0* alphys^1. yeah^1. i know about her./", "scr_text_slash_scr_text_gml_2381_0");
				global.msg[1] = stringsetloc("\\E2* came into the store with a suitcase and sunglasses./", "scr_text_slash_scr_text_gml_2382_0");
				global.msg[2] = stringsetloc("\\E0* thought she was part of the mob./", "scr_text_slash_scr_text_gml_2383_0");
				global.msg[3] = stringsetloc("\\E2* she opened the case and stuffed it full of instant noodles./", "scr_text_slash_scr_text_gml_2384_0");
				global.msg[4] = stringsetloc("\\E0* paid in small bills,/", "scr_text_slash_scr_text_gml_2385_0");
				global.msg[5] = stringsetloc("\\E0* then slunk out of the place,/", "scr_text_slash_scr_text_gml_2386_0");
				global.msg[6] = stringsetloc("\\E2* pajamas trailing on the floor./", "scr_text_slash_scr_text_gml_2387_0");
				global.msg[7] = stringsetloc("\\E0* anyway^1, our relationship is^1, uh^1, purely business./", "scr_text_slash_scr_text_gml_2388_0");
				global.msg[8] = stringsetloc("\\E2* so^1, uh^1, i guess i'll just let her do her thing./%", "scr_text_slash_scr_text_gml_2389_0");
			}
			if (global.choice == 3)
				global.msg[0] = stringsetloc("\\E1* harsh^1, but fair./%", "scr_text_slash_scr_text_gml_2393_0");
			break;
		case 375:
			global.choicemsg[0] = stringsetloc("#1", "scr_text_slash_scr_text_gml_2398_0");
			global.choicemsg[1] = stringsetloc("#2", "scr_text_slash_scr_text_gml_2399_0");
			global.choicemsg[2] = stringsetloc("3", "scr_text_slash_scr_text_gml_2402_0");
			global.choicemsg[3] = stringsetloc("4", "scr_text_slash_scr_text_gml_2403_0_b");
			snd_play_x(snd_phone, 0.7, 1);
			global.msg[0] = stringsetloc("* (Ring^1, ring...)/", "scr_text_slash_scr_text_gml_2403_0");
			global.msg[1] = stringsetloc("* Hello./", "scr_text_slash_scr_text_gml_2404_0");
			global.msg[2] = stringsetloc("* You have reached the Hotline for Idiot Babies./", "scr_text_slash_scr_text_gml_2405_0");
			global.msg[3] = stringsetloc("* Please press 1 for Idiots^1, 2 for Babies^1, 3 for Idiot Babies^1, and 4 for None./", "scr_text_slash_scr_text_gml_2406_0");
			global.msg[4] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2407_0");
			if (global.flag[274] == 2)
			{
				global.msg[0] = stringsetloc("* (Ring^1, ring...^1)&* (Ring^1, ring...^1)&* (Ring^1, ring...)/", "scr_text_slash_scr_text_gml_2410_0");
				global.msg[1] = stringsetloc("* (The phone kept ringing infinitely.)/%", "scr_text_slash_scr_text_gml_2411_0");
			}
			break;
		case 376:
			if (global.flag[274] == 1)
				global.flag[274] = 2;
			scr_phonename();
			global.msg[0] = stringsetloc("* Huh!?/", "scr_text_slash_scr_text_gml_2418_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* Ah^1, you're an Idiot?/", "scr_text_slash_scr_text_gml_2419_0");
				global.flag[275] = 1;
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* Ah^1, you're an Baby?/", "scr_text_slash_scr_text_gml_2420_0");
				global.flag[275] = 2;
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("* Ah^1, you're an Idiot Baby?/", "scr_text_slash_scr_text_gml_2421_0");
				global.flag[275] = 3;
			}
			global.msg[1] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_2422_0");
			global.msg[2] = stringsetloc("* To tell you the truth^1, I'm one too./", "scr_text_slash_scr_text_gml_2423_0");
			global.msg[3] = stringsetloc("* Let's try our best^1, OK?/", "scr_text_slash_scr_text_gml_2424_0");
			global.msg[4] = stringsetloc("* (Click...)/%", "scr_text_slash_scr_text_gml_2425_0");
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("* Why'd you call the Hotline for Idiot Babies if you aren't an Idiot Baby?/", "scr_text_slash_scr_text_gml_2428_0");
				global.msg[1] = stringsetloc("* (Click...)/%", "scr_text_slash_scr_text_gml_2429_0");
			}
			break;
		case 380:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_2435_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_2436_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2439_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2440_0_b");
			global.msg[0] = stringsetloc("\\E1* ... hey bud./", "scr_text_slash_scr_text_gml_2439_0");
			global.msg[1] = stringsetloc("\\E2* ... are you busy tomorrow...?/", "scr_text_slash_scr_text_gml_2440_0");
			global.msg[2] = stringsetloc("\\E1* i need some help with something./", "scr_text_slash_scr_text_gml_2441_0");
			global.msg[3] = stringsetloc("\\E2* it'd be great if you could come over./", "scr_text_slash_scr_text_gml_2442_0");
			global.msg[4] = stringsetloc("\\E5* i live just next door^1, ya know./", "scr_text_slash_scr_text_gml_2443_0");
			global.msg[5] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2444_0");
			break;
		case 381:
			if (global.choice == 0)
			{
				if (global.flag[33] < 40)
				{
					global.msg[0] = stringsetloc("\\E2* wow..^1. you answered quickly^1, huh./", "scr_text_slash_scr_text_gml_2452_0");
					global.msg[1] = stringsetloc("\\E0* that's not good^1.&* i'm a total stranger./", "scr_text_slash_scr_text_gml_2453_0");
					global.msg[2] = stringsetloc("\\E5* you should probably hesitate more./", "scr_text_slash_scr_text_gml_2454_0");
				}
				if (global.flag[33] >= 40)
				{
					global.msg[0] = stringsetloc("\\E2* wow^1, you were deliberating for a while./", "scr_text_slash_scr_text_gml_2459_0");
					global.msg[1] = stringsetloc("\\E0* gee^1, what's wrong?/", "scr_text_slash_scr_text_gml_2460_0");
					global.msg[2] = stringsetloc("\\E5* don't want to hang out with a stranger?/", "scr_text_slash_scr_text_gml_2461_0");
				}
				global.msg[3] = stringsetloc("\\E2* well, guess i shouldn't complain.../", "scr_text_slash_scr_text_gml_2464_0");
				global.msg[4] = stringsetloc("\\E0* huh...^1?&* what are we going to be doing?/", "scr_text_slash_scr_text_gml_2465_0");
				global.msg[5] = stringsetloc("\\E2* oh^1, i'm not going to be there./", "scr_text_slash_scr_text_gml_2466_0");
				global.msg[6] = stringsetloc("\\E5* that'd be weird./", "scr_text_slash_scr_text_gml_2467_0");
				global.msg[7] = stringsetloc("\\E2* it's just gonna be you and my little brother./", "scr_text_slash_scr_text_gml_2468_0");
				global.msg[8] = stringsetloc("\\E0* he needs friends./", "scr_text_slash_scr_text_gml_2469_0");
				global.msg[9] = stringsetloc("\\E2* thanks for hanging out with him./", "scr_text_slash_scr_text_gml_2470_0");
				global.msg[10] = stringsetloc("\\E5* see ya./%", "scr_text_slash_scr_text_gml_2471_0");
			}
			if (global.choice == 1)
			{
				if (global.flag[33] < 40)
					global.msg[0] = stringsetloc("\\E2* ... well, that was quick./", "scr_text_slash_scr_text_gml_2479_0");
				if (global.flag[33] >= 40)
					global.msg[0] = stringsetloc("\\E2* ... hmm, well, that's disappointing./", "scr_text_slash_scr_text_gml_2484_0");
				global.msg[1] = stringsetloc("\\E1* alright^1, alright^1, lemme sweeten the deal for ya./", "scr_text_slash_scr_text_gml_2486_0");
				global.msg[2] = stringsetloc("\\E1* if you come over..^1. i^1, will personally,/", "scr_text_slash_scr_text_gml_2487_0");
				global.msg[3] = stringsetloc("\\E5* not even be there./", "scr_text_slash_scr_text_gml_2488_0");
				global.msg[4] = stringsetloc("\\E2* it'll just be you and my little brother./", "scr_text_slash_scr_text_gml_2489_0");
				global.msg[5] = stringsetloc("\\E0* since he's new here^1, he needs friends./", "scr_text_slash_scr_text_gml_2490_0");
				global.msg[6] = stringsetloc("\\E2* anyway^1, thanks for agreeing to hang out with him./", "scr_text_slash_scr_text_gml_2491_0");
				global.msg[7] = stringsetloc("\\E5* see ya./%", "scr_text_slash_scr_text_gml_2492_0");
			}
			break;
		case 385:
			global.choicemsg[0] = stringsetloc(" #Susie", "scr_text_slash_scr_text_gml_2499_0");
			global.choicemsg[1] = stringsetloc(" #Key", "scr_text_slash_scr_text_gml_2500_0");
			global.choicemsg[2] = stringsetloc("Anything", "scr_text_slash_scr_text_gml_2501_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_2502_0");
			global.msg[0] = stringsetloc("\\E0* Oh^1, hi^1, Kris!/", "scr_text_slash_scr_text_gml_2503_0");
			global.msg[1] = stringsetloc("* Did you need help with your homework again?/", "scr_text_slash_scr_text_gml_2504_0");
			global.msg[2] = stringsetloc("\\E4* I know you were having trouble last time^1, so^1, um,/", "scr_text_slash_scr_text_gml_2505_0");
			global.msg[3] = stringsetloc("\\E0* I actually got a few things ready for you^1, in case --/", "scr_text_slash_scr_text_gml_2506_0");
			global.msg[4] = stringsetloc("\\E2* Ah^1, wait^1, sorry^1! I can't right now.../", "scr_text_slash_scr_text_gml_2507_0");
			global.msg[5] = stringsetloc("\\E3* I forgot my house key again^1, and.../", "scr_text_slash_scr_text_gml_2508_0");
			global.msg[6] = stringsetloc("\\E4* Sorry^1, Kris^1, I'll help you later^1, if that's ok./", "scr_text_slash_scr_text_gml_2509_0");
			global.msg[7] = stringsetloc("\\E0* See you at school^1, Kris!/", "scr_text_slash_scr_text_gml_2510_0");
			global.msg[8] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_2511_0");
			global.msg[9] = stringsetloc("\\E5* .../", "scr_text_slash_scr_text_gml_2512_0");
			global.msg[10] = stringsetloc("\\E4* Umm^1, Kris?/", "scr_text_slash_scr_text_gml_2513_0");
			global.msg[11] = stringsetloc("\\E0* Did you..^1. want to talk about something?/", "scr_text_slash_scr_text_gml_2514_0");
			global.msg[12] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2515_0");
			if (global.flag[276] >= 1)
			{
				global.msg[0] = stringsetloc("\\E0* Hi Kris^1!&* Is something up?/", "scr_text_slash_scr_text_gml_2518_0");
				global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2519_0");
			}
			if (global.flag[276] == 0)
				global.flag[276] = 1;
			break;
		case 386:
			global.choicemsg[0] = stringsetloc(" #She's nice", "scr_text_slash_scr_text_gml_2525_0");
			global.choicemsg[1] = stringsetloc(" #Terrible", "scr_text_slash_scr_text_gml_2526_0");
			global.choicemsg[2] = stringsetloc("Eats Chalk", "scr_text_slash_scr_text_gml_2527_0");
			global.choicemsg[3] = stringsetloc("...", "scr_text_slash_scr_text_gml_2528_0");
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E4* Susie^1! That's right^1, you were with Susie!/", "scr_text_slash_scr_text_gml_2531_0");
				global.msg[1] = stringsetloc("\\E3* When you didn't come back to class^1, I was worried^1, but.../", "scr_text_slash_scr_text_gml_2532_0");
				global.msg[2] = stringsetloc("\\E4* Everything turned out OK^1! I think?/", "scr_text_slash_scr_text_gml_2533_0");
				global.msg[3] = stringsetloc("\\E5* .../", "scr_text_slash_scr_text_gml_2534_0");
				global.msg[4] = stringsetloc("\\E3* ... Umm^1, Kris^1? Can I ask something^1, if that's OK?/", "scr_text_slash_scr_text_gml_2535_0");
				global.msg[5] = stringsetloc("\\E4* Susie..^1. I'm kind of..^1. curious what she's like^1, you know?/", "scr_text_slash_scr_text_gml_2536_0");
				global.msg[6] = stringsetloc("\\E8* I mean^1, who DOESN'T wonder about her^1? She never talks to anyone./", "scr_text_slash_scr_text_gml_2537_0");
				global.msg[7] = stringsetloc("\\E4* So^1, Kris^1, could you tell me about her^1? If that's ok.../", "scr_text_slash_scr_text_gml_2538_0");
				global.msg[8] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2539_0");
				if (global.flag[276] >= 2)
				{
					global.msg[0] = stringsetloc("\\E2* Oh^1, can I ask something else about her!?/", "scr_text_slash_scr_text_gml_2543_0");
					global.msg[1] = stringsetloc("\\E3* Well^1, did it seem like^1, she^1, um.../", "scr_text_slash_scr_text_gml_2544_0");
					global.msg[2] = stringsetloc("\\E8* (W-wait^1, you definitely wouldn't know THAT...)/%", "scr_text_slash_scr_text_gml_2545_0");
				}
				if (global.flag[276] < 2)
					global.flag[276] = 2;
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E2* ... huh^1? Why don't I ask my mom for the key?/", "scr_text_slash_scr_text_gml_2553_0");
				global.msg[1] = stringsetloc("\\E3* I..^1. I mean^1, um..^1. I..^1. you know,/", "scr_text_slash_scr_text_gml_2554_0");
				global.msg[2] = stringsetloc("\\E4* She doesn't like it when I bother her when she's working./", "scr_text_slash_scr_text_gml_2555_0");
				global.msg[3] = stringsetloc("\\E0* Don't worry^1, OK^1? I'll just go over to Catti's./%", "scr_text_slash_scr_text_gml_2556_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E1* Umm..^1. Kris...^1? Are you feeling alright?/", "scr_text_slash_scr_text_gml_2560_0");
				global.msg[1] = stringsetloc("\\E5* Normally you're not so... talkative./", "scr_text_slash_scr_text_gml_2561_0");
				global.msg[2] = stringsetloc("\\E4* Oh! I don't mean to sound like something's wrong with you./", "scr_text_slash_scr_text_gml_2562_0");
				global.msg[3] = stringsetloc("\\E4* .../", "scr_text_slash_scr_text_gml_2563_0");
				global.msg[4] = stringsetloc("\\E2* Umm^1, Kris^1, is something wrong?/", "scr_text_slash_scr_text_gml_2564_0");
				global.msg[5] = stringsetloc("\\E3* Why did you go to the hospital to see my dad...?/", "scr_text_slash_scr_text_gml_2565_0");
				global.msg[6] = stringsetloc("\\E2* I mean^1, I'm sure he appreciated it^1, but... um.../", "scr_text_slash_scr_text_gml_2566_0");
				global.msg[7] = stringsetloc("\\E4* Gosh^1, I'm sorry^1, Kris^1. Forget I said anything!/%", "scr_text_slash_scr_text_gml_2567_0");
			}
			if (global.choice == 3)
				global.msg[0] = stringsetloc("\\E0* Tell Azzy I said hi^1, Kris!/%", "scr_text_slash_scr_text_gml_2571_0");
			break;
		case 387:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E2* What...^1?&* She's..^1. a nice person?/", "scr_text_slash_scr_text_gml_2584_0");
				global.msg[1] = stringsetloc("* Really!^1? L-like, really!^1? Honestly!^1? Truly!?/", "scr_text_slash_scr_text_gml_2585_0");
				global.msg[2] = stringsetloc("\\E4* I mean^1, that's just what I was hoping^1, but.../", "scr_text_slash_scr_text_gml_2586_0");
				global.msg[3] = stringsetloc("\\E2* W-wait^1, this isn't another trick^1, is it^1, Kris?/", "scr_text_slash_scr_text_gml_2587_0");
				global.msg[4] = stringsetloc("\\E8* Like when you put ketchup on your arms and told me it was blood?/", "scr_text_slash_scr_text_gml_2588_0");
				global.msg[5] = stringsetloc("\\E2* ... R-really^1? You're serious^1? You're totally serious?/", "scr_text_slash_scr_text_gml_2589_0");
				global.msg[6] = stringsetloc("\\E6* ... gosh^1, then maybe I should try talking to her.../", "scr_text_slash_scr_text_gml_2590_0");
				global.msg[7] = stringsetloc("\\E8* B-but if I die^1, you're paying for my funeral^1, Kris!/", "scr_text_slash_scr_text_gml_2591_0");
				global.msg[8] = stringsetloc("\\E6* (Though^1, honestly^1, if she's nice^1 I might die^1, too...)/%", "scr_text_slash_scr_text_gml_2592_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E2* She WHAT^1? She smashed you against the LOCKERS?/", "scr_text_slash_scr_text_gml_2596_0");
				global.msg[1] = stringsetloc("\\E7* Gosh^1, Kris^1, I'm really sorry^1. That's just awful./", "scr_text_slash_scr_text_gml_2597_0");
				global.msg[2] = stringsetloc("\\E3* I..^1. I'd THOUGHT Susie was good^1, just.../", "scr_text_slash_scr_text_gml_2598_0");
				global.msg[3] = stringsetloc("\\E6* Maybe it would take someone special to find her good side./", "scr_text_slash_scr_text_gml_2599_0");
				global.msg[4] = stringsetloc("\\E7* ... but she really IS terrible^1, isn't she...?/", "scr_text_slash_scr_text_gml_2600_0");
				global.msg[5] = stringsetloc("\\E7* Kris..^1. I'm SO sorry you have to go through this./", "scr_text_slash_scr_text_gml_2601_0");
				global.msg[6] = stringsetloc("\\E4* In fact^1, I wonder if..^1. d-do you think...?/", "scr_text_slash_scr_text_gml_2602_0");
				global.msg[7] = stringsetloc("\\E3* I wonder if Alphys would let us switch partners^1, I mean?/", "scr_text_slash_scr_text_gml_2603_0");
				global.msg[8] = stringsetloc("\\E2* You know^1, so you wouldn't have to be the one^1, who^1, um,/", "scr_text_slash_scr_text_gml_2604_0");
				global.msg[9] = stringsetloc("\\E3* Gets to be^1, slammed into lockers^1, and stuff^1, anymore./", "scr_text_slash_scr_text_gml_2605_0");
				global.msg[10] = stringsetloc("\\E8* (Wait^1, I don't think I phrased that correctly...)/%", "scr_text_slash_scr_text_gml_2606_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E2* What^1?&* She was EATING the chalk???/", "scr_text_slash_scr_text_gml_2610_0");
				global.msg[1] = stringsetloc("* R..^1. really...?/", "scr_text_slash_scr_text_gml_2611_0");
				global.msg[2] = stringsetloc("\\E8* Wait^1! You're teasing me^1, aren't you^1, Kris?/", "scr_text_slash_scr_text_gml_2612_0");
				global.msg[3] = stringsetloc("\\E3* L-like when you told me ICE-E was real and eats kids.../", "scr_text_slash_scr_text_gml_2613_0");
				global.msg[4] = stringsetloc("\\E8* So Dess smacked you with a wiffle bat 'til you stopped lying./", "scr_text_slash_scr_text_gml_2614_0");
				global.msg[5] = stringsetloc("\\E2* ... Huh^1? You're telling the truth^1? Seriously^1?/", "scr_text_slash_scr_text_gml_2615_0");
				global.msg[6] = stringsetloc("\\E5* .../", "scr_text_slash_scr_text_gml_2616_0");
				global.msg[7] = stringsetloc("\\E0* Umm^1, then..^1. what color chalk does she like?/", "scr_text_slash_scr_text_gml_2617_0");
				global.msg[8] = stringsetloc("\\E4* And^1, do you think she likes the thin or the thick kind...?/", "scr_text_slash_scr_text_gml_2618_0");
				global.msg[9] = stringsetloc("\\E8* (Wait, maybe making her a lunchbox full of chalk is stupid...)/%", "scr_text_slash_scr_text_gml_2619_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E2* Seriously^1, Kris^1? But I help you ALL the time!/", "scr_text_slash_scr_text_gml_2623_0");
				global.msg[1] = stringsetloc("\\E8* The LEAST you can do is give me a LITTLE information!/", "scr_text_slash_scr_text_gml_2624_0");
				global.msg[2] = stringsetloc("\\E2* Like^1, d-does she like metal music!?/", "scr_text_slash_scr_text_gml_2625_0");
				global.msg[3] = stringsetloc("\\E2* Is she really an obligate carnivore!?/", "scr_text_slash_scr_text_gml_2626_0");
				global.msg[4] = stringsetloc("\\E2* D..^1. Does she really have a tail underneath her jacket!?/", "scr_text_slash_scr_text_gml_2627_0");
				global.msg[5] = stringsetloc("\\E3* Or^1, or... or..^1./", "scr_text_slash_scr_text_gml_2628_0");
				global.msg[6] = stringsetloc("\\E4* Sorry Kris^1, it's not any of my business^1, is it...?/", "scr_text_slash_scr_text_gml_2629_0");
				global.msg[7] = stringsetloc("\\E8* (I blew it, didn't I...)/%", "scr_text_slash_scr_text_gml_2630_0");
			}
			break;
		case 400:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_2636_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_2637_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2640_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2641_0_b");
			global.msg[0] = stringsetloc("* (If you go to bed^1, this chapter of your adventures will end.)/", "scr_text_slash_scr_text_gml_2640_0");
			global.msg[1] = stringsetloc("* (Will you go to bed?)/", "scr_text_slash_scr_text_gml_2641_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2642_0");
			break;
		case 401:
			if (global.choice == 0)
			{
				with (obj_krisroom)
					con = 50;
				global.msg[0] = stringsetloc("* (You decided to go to bed.)/%", "scr_text_slash_scr_text_gml_2649_0");
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (You will sleep later.)/%", "scr_text_slash_scr_text_gml_2653_0");
			break;
		case 402:
			global.choicemsg[0] = stringsetloc(" #Sleep", "scr_text_slash_scr_text_gml_2658_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_2659_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2662_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2663_0");
			global.msg[0] = stringsetloc("* (It's your bed.)/", "scr_text_slash_scr_text_gml_2662_0");
			global.msg[1] = stringsetloc("* (If you go back to sleep^1, \\cYyou may miss a lot of important things\\cW.)/", "scr_text_slash_scr_text_gml_2665_0_b");
			global.msg[2] = stringsetloc("* (Will you go to bed?)/", "scr_text_slash_scr_text_gml_2664_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2665_0");
			break;
		case 403:
			if (global.choice == 0)
			{
				global.choicemsg[0] = stringsetloc(" #Sleep!!!", "scr_text_slash_scr_text_gml_2671_0");
				global.choicemsg[1] = stringsetloc(" #Do not!!!", "scr_text_slash_scr_text_gml_2672_0");
				global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2675_0");
				global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2676_0");
				with (obj_krisroom)
					con = 100;
				global.msg[0] = stringsetloc("* (For some reason^1, you decided to go back to sleep...)/%", "scr_text_slash_scr_text_gml_2677_0");
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* (You can sleep in class.)/%", "scr_text_slash_scr_text_gml_2681_0");
			break;
		case 405:
			global.choicemsg[0] = stringsetloc("Play#a game", "scr_text_slash_scr_text_gml_2686_0");
			global.choicemsg[1] = stringsetloc("Do not#play a#game", "scr_text_slash_scr_text_gml_2687_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2690_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2691_0_b");
			global.msg[0] = stringsetloc("* BOO HOO^1, BOO HOO^1, UEE HEE HEE./", "scr_text_slash_scr_text_gml_2690_0");
			global.msg[1] = stringsetloc("* SO LONELY^1, LONELY^1, I BE.../", "scr_text_slash_scr_text_gml_2691_0");
			global.msg[2] = stringsetloc("* BUT LO^1, THREE VISITORS STANDING INSIDE?/", "scr_text_slash_scr_text_gml_2692_0");
			global.msg[3] = stringsetloc("* WHO ARE YOU FEW?/", "scr_text_slash_scr_text_gml_2693_0");
			scr_ralface(4, 0);
			global.msg[5] = stringsetloc("* Nice to meet you^1! I'm Ralsei^1, this is Kris^1, and.../", "scr_text_slash_scr_text_gml_2695_0");
			scr_susface(6, 2);
			global.msg[7] = stringsetloc("* So^1, what the hell are you doing in there?/", "scr_text_slash_scr_text_gml_2697_0");
			scr_noface(8);
			global.msg[9] = stringsetloc("\\TJ* I AM INNOCENT^1, INNOCENT^1.&* I JUST WANTED TO PLAY A GAME^1, GAME./", "scr_text_slash_scr_text_gml_2699_0");
			global.msg[10] = stringsetloc("* BUT THE BORING KINGS FOUND SUCH FUN TO BE A TROUBLE./", "scr_text_slash_scr_text_gml_2700_0");
			global.msg[11] = stringsetloc("* AS PUNISHMENT^1, THEY CRAVED TO IMPRISON MY BODY./", "scr_text_slash_scr_text_gml_2701_0");
			global.msg[12] = stringsetloc("* BUT I'M FAST^1, FAST^1, CLEVER^1, CLEVER./", "scr_text_slash_scr_text_gml_2702_0");
			global.msg[13] = stringsetloc("* THEY LOST THE CHASE^1, AND LOCKED UP THEIR ENTIRE RACE,/", "scr_text_slash_scr_text_gml_2703_0");
			global.msg[14] = stringsetloc("* BUILDING A PRISON AROUND THE WHOLE WORLD^1. NOW I'M THE ONLY FREE ONE./", "scr_text_slash_scr_text_gml_2704_0");
			scr_ralface(15, 8);
			global.msg[16] = stringsetloc("* Huh^1? Free^1? But you're clearly the one behind bars.../", "scr_text_slash_scr_text_gml_2706_0");
			scr_noface(17);
			global.msg[18] = stringsetloc("\\TJ* THINGS DON'T SEEM SUCH FROM HERE^1, LIGHTNERS!/", "scr_text_slash_scr_text_gml_2708_0");
			scr_susface(19, 2);
			global.msg[20] = stringsetloc("* Well^1, sounds like you don't need any help^1, then./", "scr_text_slash_scr_text_gml_2710_0");
			scr_noface(21);
			global.msg[22] = stringsetloc("\\TJ* THAT IS UN-SO^1.&* I GROW LONELY IN MY LITTLE FREEDOM./", "scr_text_slash_scr_text_gml_2712_0");
			global.msg[23] = stringsetloc("* SO^1, SHALL YOU PLAY A GAME WITH ME^1, ME...?/", "scr_text_slash_scr_text_gml_2713_0");
			global.msg[24] = stringsetloc("* I'LL SHOW YOU WHAT IT MEANS TO BE FREE!/", "scr_text_slash_scr_text_gml_2714_0");
			global.msg[25] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2715_0");
			if (global.flag[241] == 1)
			{
				global.msg[0] = stringsetloc("* FIND THE KEY^1, AND I'LL LET YOU BE FREE^1, FREE./", "scr_text_slash_scr_text_gml_2719_0");
				global.msg[1] = stringsetloc("* THE KEY IS HIDDEN FROM THE EYES^1. THE OLD SHOPKEEPER KNOWS A SECRET./%", "scr_text_slash_scr_text_gml_2720_0");
			}
			break;
		case 406:
			global.choicemsg[0] = stringsetloc("Play#a game", "scr_text_slash_scr_text_gml_2725_0");
			global.choicemsg[1] = stringsetloc("Do not#play a#game", "scr_text_slash_scr_text_gml_2726_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2729_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2730_0");
			if (global.flag[241] == 0)
				global.flag[241] = 1;
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* FIND THE KEY^1, AND I'LL LET YOU BE FREE^1, FREE./", "scr_text_slash_scr_text_gml_2732_0");
				global.msg[1] = stringsetloc("* THE KEY IS HIDDEN FROM THE EYES^1. THE OLD SHOPKEEPER KNOWS A SECRET./%", "scr_text_slash_scr_text_gml_2733_0");
				with (obj_event_room)
					con = 20;
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* BOO HOO^1, BOO HOO^1, UEE HEE HEE!!/", "scr_text_slash_scr_text_gml_2738_0");
				global.msg[1] = stringsetloc("* HOW CAN YOU REFUSE^1, WHEN YOU ARE ALREADY PLAYING...?/%", "scr_text_slash_scr_text_gml_2739_0");
				with (obj_event_room)
					con = 20;
			}
			break;
		case 410:
			global.choicemsg[0] = stringsetloc("#Use Key", "scr_text_slash_scr_text_gml_2745_0");
			global.choicemsg[1] = stringsetloc("#Do not", "scr_text_slash_scr_text_gml_2746_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2749_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2750_0_b");
			global.msg[0] = stringsetloc("* UEE HEE HEE^1, THE KEY^1, THE KEY./", "scr_text_slash_scr_text_gml_2749_0");
			global.msg[1] = stringsetloc("* A MARVELLOUS FUN IS ABOUT TO BREAK FREE./", "scr_text_slash_scr_text_gml_2750_0");
			global.msg[2] = stringsetloc("* WON'T YOU LET YOURSELF OUTSIDE?/", "scr_text_slash_scr_text_gml_2751_0");
			global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2752_0");
			global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2755_0");
			break;
		case 411:
			if (global.flag[241] < 5)
				global.flag[241] = 5;
			scr_keyitemremove(4);
			scr_keyitemremove(5);
			scr_keyitemremove(6);
			scr_keyitemremove(7);
			if (global.choice == 0)
			{
				scr_noface(0);
				global.msg[1] = stringsetloc("* (You put the Door Key in front of the Door.)/%", "scr_text_slash_scr_text_gml_2766_0");
				with (obj_event_room)
					con = 5;
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("* YOU CAME TOO FAR^1! YOUR CHOICE HAS RUN OUT!/%", "scr_text_slash_scr_text_gml_2771_0");
				with (obj_event_room)
					con = 5;
			}
			break;
		case 415:
			global.msg[0] = stringsetloc("* DO NOT TARRY!/%", "scr_text_slash_scr_text_gml_2777_0");
			break;
		case 420:
			global.choicemsg[0] = stringsetloc(" #Blaze", "scr_text_slash_scr_text_gml_2783_0");
			global.choicemsg[1] = stringsetloc(" #Do Not Blaze", "scr_text_slash_scr_text_gml_2784_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2785_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2786_0_b");
			global.msg[0] = stringsetloc("* Blaze it./", "scr_text_slash_scr_text_gml_2787_0");
			global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2786_0");
			break;
		case 425:
			global.choicemsg[0] = stringsetloc(" #Apologize#Profusely", "scr_text_slash_scr_text_gml_2790_0");
			global.choicemsg[1] = stringsetloc(" #Intimidate", "scr_text_slash_scr_text_gml_2791_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2794_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2795_0_b");
			global.msg[0] = stringsetloc("* Hey^1! You're the chumps that beat me up earlier!/", "scr_text_slash_scr_text_gml_2794_0");
			global.msg[1] = stringsetloc("* There's no way I'll forgive you^1, so scram!/", "scr_text_slash_scr_text_gml_2795_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2796_0");
			break;
		case 426:
			if (global.choice == 0)
			{
				scr_ralface(0, 6);
				global.msg[1] = stringsetloc("* We're sorry^1, we made a mistake earlier./", "scr_text_slash_scr_text_gml_2807_0");
				global.msg[2] = stringsetloc("\\E8* We promise we won't do it again!/", "scr_text_slash_scr_text_gml_2808_0");
				scr_noface(3);
				global.msg[4] = stringsetloc("* Huh...^1? You're apologizing^1? I guess I'll forgive you then.../", "scr_text_slash_scr_text_gml_2810_0");
				global.msg[5] = stringsetloc("* (Your violence against a single Rudinn was forgiven!)/%", "scr_text_slash_scr_text_gml_2811_0");
				global.flag[43] = global.flag[43] - global.flag[523];
				if (global.flag[43] < 0)
					global.flag[43] = 0;
				normal_kills = global.flag[520] - global.flag[523];
				global.flag[40] = global.flag[40] - normal_kills;
				if (global.flag[40] < 0)
					global.flag[40] = 0;
				global.flag[243] = 1;
			}
			else
			{
				scr_susface(0, 1);
				global.msg[1] = stringsetloc("* Heh^1, you wanna act that way^1, huh...?/", "scr_text_slash_scr_text_gml_2823_0");
				global.msg[2] = stringsetloc("\\E3* Forgive me or I'll crush you^1, dweeb!!/", "scr_text_slash_scr_text_gml_2824_0");
				scr_noface(3);
				global.msg[4] = stringsetloc("* I..^1. I'm sorry!!^1! I forgive you!!^1! Here^1, take this Choco Diamond!/", "scr_text_slash_scr_text_gml_2826_0");
				global.msg[5] = stringsetloc("* (You got the Choco Diamond.)/%", "scr_text_slash_scr_text_gml_2827_0");
				scr_itemget(13);
				if (noroom == 1)
				{
					scr_ralface(5, 6);
					global.msg[6] = stringsetloc("* I'm sorry^1, but we don't have any room.../", "scr_text_slash_scr_text_gml_2832_0");
					scr_susface(7, 2);
					global.msg[8] = stringsetloc("* Too late^1, I already ate it./%", "scr_text_slash_scr_text_gml_2834_0");
				}
				global.flag[243] = 2;
			}
			break;
		case 430:
			global.choicemsg[0] = stringsetloc(" #Listen", "scr_text_slash_scr_text_gml_2841_0");
			global.choicemsg[1] = stringsetloc(" #Do Not", "scr_text_slash_scr_text_gml_2842_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2845_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2846_0");
			global.msg[0] = stringsetloc("* (It's a music player.^1)&* (Listen to the contents?)/", "scr_text_slash_scr_text_gml_2845_0");
			global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2848_0");
			break;
		case 431:
			if (global.choice == 0)
			{
				snd_play(snd_splat);
				global.msg[0] = stringsetloc("* (...)/", "scr_text_slash_scr_text_gml_2853_0");
				global.msg[1] = stringsetloc("* (It's full of cartoon splat noises.)/%", "scr_text_slash_scr_text_gml_2854_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* (You did not listen.)/%", "scr_text_slash_scr_text_gml_2858_0");
			}
			break;
		case 435:
			global.choicemsg[0] = stringsetloc(" #Prison B1", "scr_text_slash_scr_text_gml_2863_0");
			global.choicemsg[1] = stringsetloc(" #Floor 1F", "scr_text_slash_scr_text_gml_2864_0");
			global.choicemsg[2] = stringsetloc("??????", "scr_text_slash_scr_text_gml_2865_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2868_0_b");
			global.msg[0] = stringsetloc("* (Where will you ride the elevator to?)/", "scr_text_slash_scr_text_gml_2867_0");
			global.msg[1] = stringsetloc("\\C3", "scr_text_slash_scr_text_gml_2868_0");
			break;
		case 436:
			global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_2874_0");
			if (global.choice == 0)
			{
				if (global.flag[239] != 0)
				{
					with (obj_elevatorcontroller)
					{
						if (global.flag[239] == 1)
						{
							dir = -1;
							newcno = 0;
							con = 100;
						}
						else
						{
							dir = 1;
							newcno = 0;
							con = 100;
						}
					}
				}
				else
				{
					global.msg[0] = stringsetloc("* (You're there.)/%", "scr_text_slash_scr_text_gml_2893_0");
				}
			}
			if (global.choice == 1)
			{
				if (global.flag[239] != 1)
				{
					with (obj_elevatorcontroller)
					{
						dir = 1;
						newcno = 1;
						con = 100;
					}
				}
				else
				{
					global.msg[0] = stringsetloc("* (You're there.)/%", "scr_text_slash_scr_text_gml_2909_0");
				}
			}
			if (global.choice == 2)
			{
				if (global.flag[239] != 3)
				{
					with (obj_elevatorcontroller)
					{
						dir = -1;
						newcno = 3;
						con = 100;
					}
				}
				else
				{
					global.msg[0] = stringsetloc("* (You're there.)/%", "scr_text_slash_scr_text_gml_2925_0");
				}
			}
			break;
		case 440:
			global.choicemsg[0] = stringsetloc(" #Ride", "scr_text_slash_scr_text_gml_2934_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_2935_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2938_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2939_0_b");
			global.msg[0] = stringsetloc("* (Ride the elevator?)/", "scr_text_slash_scr_text_gml_2938_0");
			global.msg[1] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_2939_0");
			break;
		case 441:
			global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_2945_0");
			if (global.choice == 0)
			{
				with (obj_elevatorcontroller)
				{
					if (global.flag[239] == 1)
					{
						dir = 1;
						newcno = 2;
						con = 100;
					}
					else
					{
						dir = -1;
						newcno = 1;
						con = 100;
					}
				}
			}
			break;
		case 445:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_2966_0");
			global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_2967_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2970_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2971_0");
			global.typer = 30;
			global.fc = 1;
			global.fe = 0;
			global.msg[0] = stringsetloc("\\E0* Hey Kris./", "scr_text_slash_scr_text_gml_2973_0");
			global.msg[1] = stringsetloc("\\E0* W..^1. wait a second./", "scr_text_slash_scr_text_gml_2974_0");
			global.msg[2] = stringsetloc("\\E3* Ummm^1, I.../", "scr_text_slash_scr_text_gml_2975_0");
			global.msg[3] = stringsetloc("\\E1* Look./", "scr_text_slash_scr_text_gml_2976_0");
			global.msg[4] = stringsetloc("\\E2* I know you wanna give a REAL goodbye to everyone^1, right?/", "scr_text_slash_scr_text_gml_2977_0");
			global.msg[5] = stringsetloc("\\E3* I mean, I'm ALL for leaving right away^1, but.../", "scr_text_slash_scr_text_gml_2978_0");
			global.msg[6] = stringsetloc("\\E2* Y'know, we could go back a sec^1. If you wanted./", "scr_text_slash_scr_text_gml_2979_0");
			global.msg[7] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_2980_0");
			break;
		case 446:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E2* Well^1, then what are we waiting for?/", "scr_text_slash_scr_text_gml_2986_0");
				global.msg[1] = stringsetloc("\\E9* Let's head back!/%", "scr_text_slash_scr_text_gml_2987_0");
			}
			else
			{
				global.msg[0] = stringsetloc("\\E4* C'mon^1, don't lie!/", "scr_text_slash_scr_text_gml_2991_0");
				global.msg[1] = stringsetloc("\\E9* Let's at least say goodbye to Lancer!/%", "scr_text_slash_scr_text_gml_2992_0");
			}
			break;
		case 450:
			global.choicemsg[0] = stringsetloc(" #Let's Fight", "scr_text_slash_scr_text_gml_2998_0");
			global.choicemsg[1] = stringsetloc(" #Let's Not", "scr_text_slash_scr_text_gml_2999_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3002_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3003_0_b");
			global.msg[0] = stringsetloc("* If you can beat me^1, I'll go back to being a good guy./", "scr_text_slash_scr_text_gml_3002_0");
			global.msg[1] = stringsetloc("\\E0* But if you LOSE.../", "scr_text_slash_scr_text_gml_3003_0");
			global.msg[2] = stringsetloc("\\E2* YOU guys will have to become bad guys with US.../", "scr_text_slash_scr_text_gml_3004_0");
			global.msg[3] = stringsetloc("\\E4* ... and do WHATEVER we say./", "scr_text_slash_scr_text_gml_3005_0");
			scr_lanface(4, 1);
			global.msg[5] = stringsetloc("* Ho ho ho!!^1! Our wish is your command!!!/", "scr_text_slash_scr_text_gml_3007_0");
			scr_susface(6, 1);
			global.msg[7] = stringsetloc("\\E1* So^1, whaddya say...?/", "scr_text_slash_scr_text_gml_3010_0");
			global.msg[8] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_3011_0");
			break;
		case 451:
			global.msg[0] = stringsetloc("* Eh^1, don't bother answering./", "scr_text_slash_scr_text_gml_3015_0");
			global.msg[1] = stringsetloc("\\E2* We were just gonna thrash you anyway^1, so.../", "scr_text_slash_scr_text_gml_3016_0");
			global.msg[2] = stringsetloc("\\E3* See ya!/%", "scr_text_slash_scr_text_gml_3017_0");
			break;
		case 455:
			global.choicemsg[0] = stringsetloc(" #Me", "scr_text_slash_scr_text_gml_3022_0");
			global.choicemsg[1] = stringsetloc(" #Asriel", "scr_text_slash_scr_text_gml_3023_0");
			global.choicemsg[2] = stringsetloc("Pie", "scr_text_slash_scr_text_gml_3024_0");
			if (scr_litemcheck(4))
				global.choicemsg[2] = stringsetloc("Flowers", "scr_text_slash_scr_text_gml_3025_0");
			global.choicemsg[3] = stringsetloc("Nevermind", "scr_text_slash_scr_text_gml_3026_0");
			global.msg[0] = stringsetloc("* Kris^1? What is it^1, honey?/", "scr_text_slash_scr_text_gml_3027_0");
			global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_3028_0");
			break;
		case 456:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("\\E0* Kris^1, honey^1, you have grown up so much.../", "scr_text_slash_scr_text_gml_3036_0_b");
				global.msg[1] = stringsetloc("\\E9* Someday soon you will be going off to university as well.../", "scr_text_slash_scr_text_gml_3037_0");
				global.msg[2] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_3036_0");
				global.msg[3] = stringsetloc("\\E9* Remember when you were little.../", "scr_text_slash_scr_text_gml_3039_0");
				global.msg[4] = stringsetloc("\\E8* You asked when your horns were going to grow in?/", "scr_text_slash_scr_text_gml_3040_0");
				global.msg[5] = stringsetloc("\\E0* So we bought that headband with the little red horns on it./", "scr_text_slash_scr_text_gml_3041_0");
				global.msg[6] = stringsetloc("\\E4* Oh^1, you wore it for months! Whatever happened to it?/%", "scr_text_slash_scr_text_gml_3042_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc("\\E9* Remember that video-game you and Asriel used to play?/", "scr_text_slash_scr_text_gml_3044_0");
				global.msg[1] = stringsetloc("\\E1* What was it called...^1? Super Smashing Fighters?/", "scr_text_slash_scr_text_gml_3045_0");
				global.msg[2] = stringsetloc("\\E0* When he was very little^1, he LOVED the green lizard from that./", "scr_text_slash_scr_text_gml_3046_0");
				global.msg[3] = stringsetloc("\\E9* We even had a birthday party for him themed around it./", "scr_text_slash_scr_text_gml_3047_0");
				global.msg[4] = stringsetloc("\\E0* Your father painted all these eggs with spots as decoration.../", "scr_text_slash_scr_text_gml_3048_0");
				global.msg[5] = stringsetloc("\\E9* Oh^1, your brother LOVED it...!/", "scr_text_slash_scr_text_gml_3049_0");
				global.msg[6] = stringsetloc("\\E5* Until the next day^1, your father cooked them all for breakfast./", "scr_text_slash_scr_text_gml_3050_0");
				global.msg[7] = stringsetloc("\\E8* Your brother just kept crying.../", "scr_text_slash_scr_text_gml_3051_0");
				global.msg[8] = stringsetloc("\\E4* Ever since^1, he's hated that book about eating green eggs!/%", "scr_text_slash_scr_text_gml_3052_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = stringsetloc("\\E1* Kris^1, since only you and I are living here right now.../", "scr_text_slash_scr_text_gml_3056_0");
				global.msg[1] = stringsetloc("\\E9* It feels..^1. just a bit lonely^1, does it not...?/", "scr_text_slash_scr_text_gml_3057_0");
				global.msg[2] = stringsetloc("\\E0* But^1, fortunately^1, sharing a warm^1, freshly-made pie,/", "scr_text_slash_scr_text_gml_3058_0");
				global.msg[3] = stringsetloc("\\E9* Is the perfect cure for such a condition./", "scr_text_slash_scr_text_gml_3059_0");
				global.msg[4] = stringsetloc("\\E5* ... as long as I get to eat some^1, of course./%", "scr_text_slash_scr_text_gml_3060_0");
				if (scr_litemcheck(4))
				{
					global.msg[0] = stringsetloc("\\E8* Oh^1, Kris...^1? Flowers^1? For your mother...?/", "scr_text_slash_scr_text_gml_3064_0");
					global.msg[1] = stringsetloc("\\E9* How sweet.../", "scr_text_slash_scr_text_gml_3065_0");
					global.msg[2] = stringsetloc("\\E9* .../", "scr_text_slash_scr_text_gml_3066_0");
					global.msg[3] = stringsetloc("\\E5* These are from HIM^1, are they not./", "scr_text_slash_scr_text_gml_3067_0");
					global.msg[4] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_3070_0_b");
					global.msg[5] = stringsetloc("\\E0* Err^1, well^1, worry not^1, Kris^1, I will.../", "scr_text_slash_scr_text_gml_3069_0");
					global.msg[6] = stringsetloc("\\E5* ... find some place for them./%", "scr_text_slash_scr_text_gml_3070_0");
					scr_litemremove(4);
					global.flag[262] = 3;
				}
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("\\E1* Kris^1, perhaps you should go to bed early tonight.../", "scr_text_slash_scr_text_gml_3078_0");
				global.msg[1] = stringsetloc("* You do not look quite yourself./%", "scr_text_slash_scr_text_gml_3079_0");
			}
			break;
		case 460:
			global.choicemsg[0] = stringsetloc(" #Field", "scr_text_slash_scr_text_gml_3084_0");
			global.choicemsg[1] = stringsetloc(" #Forest", "scr_text_slash_scr_text_gml_3085_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3088_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3089_0");
			global.msg[0] = stringsetloc("* (It's a door.^1)&* (Where will you go?)/", "scr_text_slash_scr_text_gml_3088_0");
			global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_3091_0");
			if (global.plot >= 75)
			{
				global.choicemsg[1] = stringsetloc(" #Forest", "scr_text_slash_scr_text_gml_3092_0");
				global.choicemsg[2] = stringsetloc("Bake Sale", "scr_text_slash_scr_text_gml_3093_0");
				global.msg[1] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_3094_0");
			}
			if (global.plot >= 154)
			{
				global.choicemsg[3] = stringsetloc("Castle", "scr_text_slash_scr_text_gml_3098_0");
				global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_3101_0");
			}
			break;
		case 461:
			global.msg[0] = stringsetloc("* (But nothing happened.)/%", "scr_text_slash_scr_text_gml_3104_0");
			if (global.choice == 0)
			{
				with (obj_shortcut_door)
					door_destination = room_field3;
			}
			if (global.choice == 1)
			{
				with (obj_shortcut_door)
					door_destination = room_forest_savepoint1;
			}
			if (global.choice == 2)
			{
				with (obj_shortcut_door)
					door_destination = room_forest_savepoint2;
			}
			if (global.choice == 3)
			{
				with (obj_shortcut_door)
					door_destination = room_forest_fightsusie;
			}
			with (obj_shortcut_door)
			{
				if (door_destination == door_location)
				{
					global.msg[0] = stringsetloc("* (Amazingly^1, you are already there.)/%", "scr_text_slash_scr_text_gml_3125_0");
				}
				else
				{
					global.msg[0] = stringsetloc("* (The door opened...)/%", "scr_text_slash_scr_text_gml_3129_0");
					con = 50;
				}
			}
			break;
		case 465:
			global.choicemsg[0] = stringsetloc(" #Give Cake", "scr_text_slash_scr_text_gml_3138_0");
			global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_3139_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3142_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3143_0_b");
			global.msg[0] = stringsetloc("* Marga riba^1!&* That cake^1!&* It's seething with power!/", "scr_text_slash_scr_text_gml_3142_0");
			global.msg[1] = stringsetloc("* It's my cake^1, isn't it!^1?&* Did you repair it!^1?&* Will you return it!?/", "scr_text_slash_scr_text_gml_3143_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_3146_0");
			break;
		case 466:
			if (global.choice == 0)
			{
				scr_itemremove(6);
				scr_itemget(7);
				global.msg[0] = stringsetloc("* Edamame^1! My old cake^1! I'm so happy I could spin!/", "scr_text_slash_scr_text_gml_3152_0");
				global.msg[1] = stringsetloc("* My friend^1, share in my riches^1! I have many worse cakes I do not want!/", "scr_text_slash_scr_text_gml_3153_0");
				global.msg[2] = stringsetloc("* If you're not carrying a Cake^1, come here and I'll give you one^1! Forever!/", "scr_text_slash_scr_text_gml_3154_0");
				global.writersnd[0] = snd_item;
				global.msg[3] = stringsetloc("\\S0* (You traded the TopCake for the SpinCake.)/", "scr_text_slash_scr_text_gml_3156_0");
				global.msg[4] = stringsetloc("* Now^1, I'm going to continue to spin and cry^1! Spin and cry!/%", "scr_text_slash_scr_text_gml_3157_0");
				global.flag[253] = 1;
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* Sweet in cake^1, but not in character^1! A tragedy!!/%", "scr_text_slash_scr_text_gml_3162_0");
			break;
		case 470:
			global.choicemsg[0] = stringsetloc(" #Take Cake", "scr_text_slash_scr_text_gml_3167_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_3168_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3171_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3172_0");
			if (scr_itemcheck(7))
			{
				global.msg[0] = stringsetloc("* Mama miba^1! How are you enjoying my rejected pastries?/%", "scr_text_slash_scr_text_gml_3174_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* Mom amiga^1! You want an inferior cake^1, my friend?/", "scr_text_slash_scr_text_gml_3178_0");
				global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_3181_0");
			}
			break;
		case 471:
			if (global.choice == 0)
			{
				scr_itemget(7);
				global.msg[0] = stringsetloc("* Please take this cake^1! It's worthless^1, my dear friend!/", "scr_text_slash_scr_text_gml_3187_0");
				global.writersnd[0] = snd_item;
				global.msg[1] = stringsetloc("\\S0* (You got the SpinCake.)/%", "scr_text_slash_scr_text_gml_3189_0");
				if (noroom == 1)
					global.msg[0] = stringsetloc("* Mama shiba^1! You're carrying too many things that aren't cakes!/%", "scr_text_slash_scr_text_gml_3192_0");
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc("* I understand!^1! Too much cake will make you spin and cry!!/%", "scr_text_slash_scr_text_gml_3197_0");
			break;
		case 600:
			global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_3202_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_3205_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3206_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3207_0_b");
			global.msg[0] = stringsetloc("* (Well^1, there is a man here.)/", "scr_text_slash_scr_text_gml_3206_0");
			global.msg[1] = stringsetloc("* (He offered you something.)/", "scr_text_slash_scr_text_gml_3207_0");
			global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_3210_0");
			break;
		case 601:
			global.flag[910] = 2;
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("* (You received an Egg.)/%", "scr_text_slash_scr_text_gml_3215_0");
				snd_play(snd_egg);
				scr_keyitemget(2);
			}
			else
			{
				global.msg[0] = stringsetloc("* (Then he needn't be here.)/%", "scr_text_slash_scr_text_gml_3221_0");
			}
			break;
		case 1000:
			global.choicemsg[0] = stringsetloc("Lost sleep#from being#Susie's partner", "scr_text_slash_scr_text_gml_3233_0");
			global.choicemsg[1] = stringsetloc("Actually my#sleep#quality#increased", "scr_text_slash_scr_text_gml_3234_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3235_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3236_0");
			scr_speaker("alphys");
			msgsetloc(0, "\\E3* Kris.../", "scr_text_slash_scr_text_gml_3239_0");
			msgnextloc("\\E5* This whole partner thing.../", "scr_text_slash_scr_text_gml_3240_0");
			msgnextloc("\\E9* You didn't lose sleep over it^1, did you?/", "scr_text_slash_scr_text_gml_3241_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3242_0");
			break;
		case 1001:
			if (global.choice == 0)
			{
				scr_speaker("alphys");
				msgsetloc(0, "\\E1* You say^1, with no negative intonation at all./", "scr_text_slash_scr_text_gml_3250_0");
				msgnextloc("\\EC* .../", "scr_text_slash_scr_text_gml_3251_0");
				msgnextloc("\\E1* Kris^1, as your teacher^1, there's^1, um^1, a.../", "scr_text_slash_scr_text_gml_3252_0");
				msgnextloc("\\E5* A limit^1. To the advice I'm qualified for./", "scr_text_slash_scr_text_gml_3253_0");
				msgnextloc("\\E7* But if you're interested^1, I do have a recommendation./", "scr_text_slash_scr_text_gml_3254_0");
				msgnextloc("\\EA* There's^1, an^1, FPS game podcast that helps me sleep.../", "scr_text_slash_scr_text_gml_3255_0");
				msgnextloc("\\EB* No^1? Okay./%", "scr_text_slash_scr_text_gml_3256_0");
			}
			else
			{
				scr_speaker("alphys");
				msgsetloc(0, "\\E3* H..^1. huh? Kris^1, that's^1, um..^1. good? I think?/", "scr_text_slash_scr_text_gml_3261_0");
				msgnextloc("\\E6* So maybe you were just.../", "scr_text_slash_scr_text_gml_3262_0");
				msgnextloc("\\E7* Staying up late talking to Asriel online again?/", "scr_text_slash_scr_text_gml_3263_0");
				msgnextloc("\\E8* ..^1. ah^1, wait^1, you..^1. can't do that^1, right?/", "scr_text_slash_scr_text_gml_3264_0");
				msgnextloc("\\E9* I..^1. I hope the internet gets fixed soon./", "scr_text_slash_scr_text_gml_3265_0");
				msgnextloc("\\EA* I don't want to revert into my primal form./%", "scr_text_slash_scr_text_gml_3266_0");
			}
			break;
		case 1002:
			global.choicemsg[0] = stringsetloc("Hanging out#alone in#the closet", "scr_text_slash_scr_text_gml_3272_0");
			global.choicemsg[1] = stringsetloc("#Crime", "scr_text_slash_scr_text_gml_3273_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3274_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3275_0");
			scr_speaker("susie");
			msgsetloc(0, "\\EP* (Kris^1! Help me out here^1! What do we say!?)/", "scr_text_slash_scr_text_gml_3278_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3279_0");
			break;
		case 1003:
			with (obj_actor)
			{
				if (name != "noelle")
					sprite_index = dsprite;
			}
			if (global.choice == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E2* Y'know^1, just..^1. chillin' out alone in the closet./", "scr_text_slash_scr_text_gml_3291_0");
				msgnextloc("\\EA* Just two friends^1, chillin' out in the closet^1, like normal./", "scr_text_slash_scr_text_gml_3292_0");
				msgnextloc("\\EK* Touchin'..^1. brooms and stuff./%", "scr_text_slash_scr_text_gml_3293_0");
			}
			else
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E2* Y'know^1, just..^1. committin'..^1. crimes./", "scr_text_slash_scr_text_gml_3298_0");
				msgnextloc("\\EA* Just gonna do some crimes and go to..^1. jail./", "scr_text_slash_scr_text_gml_3299_0");
				msgnextloc("\\EH* Forever./", "scr_text_slash_scr_text_gml_3300_0");
				msgnextloc("\\E5* It sucks./%", "scr_text_slash_scr_text_gml_3301_0");
			}
			break;
		case 1010:
			global.choicemsg[0] = stringsetloc("#Hug", "scr_text_slash_scr_text_gml_3308_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_3309_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3310_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3311_0");
			msgsetloc(0, "\\E0* (... no one's looking.)/", "scr_text_slash_scr_text_gml_3313_0");
			msgnextloc("* (Hug the dummy?)/", "scr_text_slash_scr_text_gml_3314_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3315_0");
			break;
		case 1011:
			if (global.choice == 0)
			{
				msgsetloc(0, "* You hugged the dummy./", "scr_text_slash_scr_text_gml_3321_0");
				msgnextloc("* Nothing wrong with a little extra fluffiness in your life./%", "scr_text_slash_scr_text_gml_3322_0");
				global.flag[300] = 1;
			}
			else
			{
				msgsetloc(0, "* You did not hug the dummy./", "scr_text_slash_scr_text_gml_3327_0");
				msgnextloc("* You won't take the path of fluffiness any longer./%", "scr_text_slash_scr_text_gml_3328_0");
			}
			break;
		case 1012:
			global.choicemsg[0] = stringsetloc("#Hell yeah!", "scr_text_slash_scr_text_gml_3333_0");
			global.choicemsg[1] = stringsetloc("#No...", "scr_text_slash_scr_text_gml_3334_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3335_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3336_0");
			scr_speaker("king");
			global.fe = 5;
			msgsetloc(0, "\\E5* Ah..^1. the Lightners./", "scr_text_slash_scr_text_gml_3339_0");
			msgnextloc("\\E5\\M1* ..^1. have you come to humiliate me...?/", "scr_text_slash_scr_text_gml_3340_0");
			scr_anyface_next("no_name", 0);
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3341_0");
			break;
		case 1013:
			if (global.choice == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E2* Hell yeah!/", "scr_text_slash_scr_text_gml_3348_0");
				msgnextloc("\\E5* EAT IT^1, old man!/", "scr_text_slash_scr_text_gml_3349_0");
				msgnextloc("\\EK* ..^1. hey^1, why the hell does HE get a giant water thing?/", "scr_text_slash_scr_text_gml_3350_0");
				scr_anyface_next("king", "0");
				msgnextloc("\\E0* ..^1. jealous^1, are you?/", "scr_text_slash_scr_text_gml_3352_0");
				msgnextloc("\\M2\\E4* Then gaze in envy^1, whelps!!/", "scr_text_slash_scr_text_gml_3353_0");
				msgnextloc("\\E4\\M3* As I SUCKLE from this giant hamster bottle!/", "scr_text_slash_scr_text_gml_3354_0");
				msgnextloc("\\E4* Ha ha ha!^1!&* (Glub glub^1)&* Feel despair!!/", "scr_text_slash_scr_text_gml_3355_0");
				scr_anyface_next("susie", "B");
				msgnextloc("\\EB* Uhhh^1, nevermind./", "scr_text_slash_scr_text_gml_3357_0");
				msgnextloc("\\M0 %%", "scr_text_slash_scr_text_gml_3358_0");
			}
			else
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\EQ* Mr. King^1, the Lightners returned everyone here safely./", "scr_text_slash_scr_text_gml_3363_0");
				msgnextloc("\\EI* If you're willing to reconsider^1, then.../", "scr_text_slash_scr_text_gml_3364_0");
				scr_anyface_next("king", 5);
				msgnextloc("\\E5* What? Live in a kingdom ruled by YOU?/", "scr_text_slash_scr_text_gml_3366_0");
				msgnextloc("\\E0* The Lightners' little patsy...?/", "scr_text_slash_scr_text_gml_3367_0");
				msgnextloc("\\E4* Staying in this cell is far less humiliating./", "scr_text_slash_scr_text_gml_3368_0");
				msgnextloc("\\E5* Now^1, if you will excuse me^1./", "scr_text_slash_scr_text_gml_3369_0");
				msgnextloc("\\E0\\M0* My giant hamster wheel is getting cold./%", "scr_text_slash_scr_text_gml_3370_0");
			}
			break;
		case 1014:
			global.choicemsg[0] = stringsetloc("#Bosom", "scr_text_slash_scr_text_gml_3375_0");
			global.choicemsg[1] = stringsetloc("#Perish", "scr_text_slash_scr_text_gml_3376_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3377_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3378_0");
			scr_speaker("queen");
			msgsetloc(0, "\\EC* [Regal Laughter]/", "scr_text_slash_scr_text_gml_3380_0");
			msgnextloc("\\EP* Oh My That Was Actually Quite..^1. Amusing/", "scr_text_slash_scr_text_gml_3381_0");
			msgnextloc("\\EQ* You Lifeform(s) Have Exceeded My Expectations/", "scr_text_slash_scr_text_gml_3382_0");
			msgnextloc("\\E1* I Will Offer You A New^1, Exceedingly Benevolent Compromise/", "scr_text_slash_scr_text_gml_3383_0");
			msgnextloc("\\E6* Assimilate Into My Cyber-Army/", "scr_text_slash_scr_text_gml_3384_0");
			msgnextloc("\\E7* And There Is Only A Fifty Percent Chance I Will Reprogram Your Face/", "scr_text_slash_scr_text_gml_3385_0");
			msgnextloc("\\E1* Please Select Your Choice/", "scr_text_slash_scr_text_gml_3386_0");
			msgnextloc("\\E7* Perish In The Chill Of Absolute Destruction/", "scr_text_slash_scr_text_gml_3387_0");
			msgnextloc("\\ED* Or/", "scr_text_slash_scr_text_gml_3388_0");
			msgnextloc("\\EC* Flourish Under The Warm Bosom Of My Hellish Reign/", "scr_text_slash_scr_text_gml_3389_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3390_0");
			break;
		case 1015:
			msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_3394_0");
			break;
		case 1020:
			global.choicemsg[0] = stringsetloc("Lie and say#you want to#hear more", "scr_text_slash_scr_text_gml_3398_0");
			global.choicemsg[1] = stringsetloc("Stop#Conversation", "scr_text_slash_scr_text_gml_3399_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3400_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3401_0");
			var timestalked = 0;
			with (obj_npc_room)
			{
				if (sprite_index == spr_burgerpants_sit_phone)
					timestalked = talked;
			}
			if (timestalked == 0)
			{
				scr_speaker("burgerpants");
				msgsetloc(0, "\\E0* Little buddy^1! You aren't gonna BELIEVE this!!/", "scr_text_slash_scr_text_gml_3415_0");
				msgnextloc("\\E3* I'VE!!^1! Got a GIRLFRIEND!!!/", "scr_text_slash_scr_text_gml_3416_0");
				msgnextloc("\\E8* Asriel!^1! You've GOT to tell Asriel RIGHT NOW!!/", "scr_text_slash_scr_text_gml_3417_0");
				msgnextloc("\\E8* He's gonna be so proud of me!!!/", "scr_text_slash_scr_text_gml_3418_0");
				msgnextloc("\\E0* ..^1. Huh? What's she look like?/", "scr_text_slash_scr_text_gml_3419_0");
				msgnextloc("\\E3* Ah^1, Little BUDDY. How do I PUT it.../", "scr_text_slash_scr_text_gml_3420_0");
				msgnextloc("\\E6* I..^1. don't actually know!^1! I haven't met her in real life!!/", "scr_text_slash_scr_text_gml_3421_0");
				msgnextloc("\\E5* But from the way she TEXTS?/", "scr_text_slash_scr_text_gml_3422_0");
				msgnextloc("\\E1* God^1, Little Buddy. She must be STACKED./", "scr_text_slash_scr_text_gml_3423_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3424_0");
			}
			else
			{
				scr_speaker("burgerpants");
				msgsetloc(0, "\\E3* Little buddy!^1! Here to hear about my^1, heh^1, GIRLFRIEND!?/", "scr_text_slash_scr_text_gml_3428_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3429_0");
			}
			break;
		case 1021:
			if (global.choice == 0)
			{
				scr_speaker("burgerpants");
				msgsetloc(0, "\\E1* So far^1, she's the perfect girl^1, little buddy./", "scr_text_slash_scr_text_gml_3437_0");
				msgnextloc("\\E3* She loves pizza./", "scr_text_slash_scr_text_gml_3438_0");
				msgnextloc("\\E4* AND bikinis!/", "scr_text_slash_scr_text_gml_3439_0");
				msgnextloc("\\E5* And to top it off..^1. she sent me a picture./", "scr_text_slash_scr_text_gml_3440_0");
				msgnextloc("\\E1* Of herself. Wearing a pizza bikini./", "scr_text_slash_scr_text_gml_3441_0");
				msgnextloc("\\E6* Little buddy^1, perhaps it is uncouth^1, but.../", "scr_text_slash_scr_text_gml_3442_0");
				msgnextloc("\\E2* Look!!^1! LOOK AT THIS!!!^1! GOD DAMN!!!!/", "scr_text_slash_scr_text_gml_3443_0");
				scr_anyface_next("no_name", 0);
				msgnextloc("* (It's several pixels that vaguely resemble a zoomed-in JPEG of a pepperoni pizza.)/", "scr_text_slash_scr_text_gml_3445_0");
				scr_anyface_next("burgerpants", "6");
				msgnextloc("\\E6* Yes^1, I know what you're thinking^1, Little Buddy./", "scr_text_slash_scr_text_gml_3447_0");
				msgnextloc("\\E5* Her camera. Is not. Of the highest caliber./", "scr_text_slash_scr_text_gml_3448_0");
				msgnextloc("\\E3* But to a scholarly man of the world like myself^1,/", "scr_text_slash_scr_text_gml_3449_0");
				msgnextloc("\\E6* This is what love looks like^1, Little Buddy./%", "scr_text_slash_scr_text_gml_3450_0");
			}
			else
			{
				scr_speaker("burgerpants");
				msgsetloc(0, "\\E3* That's right!^1! We don't need to say any more!!/", "scr_text_slash_scr_text_gml_3455_0");
				msgnextloc("\\E8* Go ahead and tell Asriel right now!!!/%", "scr_text_slash_scr_text_gml_3456_0");
			}
			break;
		case 1022:
			global.choicemsg[0] = stringsetloc("#Inspect", "scr_text_slash_scr_text_gml_3461_0");
			global.choicemsg[1] = stringsetloc("#Do not", "scr_text_slash_scr_text_gml_3462_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3463_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3464_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a soda-dispensing machine.)/", "scr_text_slash_scr_text_gml_3466_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3467_0");
			break;
		case 1023:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You took a look at the flavors.)/", "scr_text_slash_scr_text_gml_3474_0");
				msgnextloc("* WATER/", "scr_text_slash_scr_text_gml_3475_0");
				msgnextloc("* ICE/", "scr_text_slash_scr_text_gml_3476_0");
				msgnextloc("* DOUBLE-ICE/", "scr_text_slash_scr_text_gml_3477_0");
				msgnextloc("* BREAD/", "scr_text_slash_scr_text_gml_3478_0");
				msgnextloc("* FLAMIN HOT CHEESE SODA/", "scr_text_slash_scr_text_gml_3479_0");
				msgnextloc("* GAMER BLOOD ENERGY DRINK/", "scr_text_slash_scr_text_gml_3480_0");
				msgnextloc("* Juice (Red Flavor)/%", "scr_text_slash_scr_text_gml_3481_0");
			}
			else
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E2* Heh^1, good idea. People put their mouth on those y'know./", "scr_text_slash_scr_text_gml_3486_0");
				msgnextloc("\\EK* What? What!? They do^1, right!?/%", "scr_text_slash_scr_text_gml_3487_0");
			}
			break;
		case 1024:
			global.choicemsg[0] = stringsetloc("#Dark World", "scr_text_slash_scr_text_gml_3492_0");
			global.choicemsg[1] = stringsetloc("#...", "scr_text_slash_scr_text_gml_3493_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3494_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3495_0");
			scr_speaker("undyne");
			msgsetloc(0, "* HEY!^1! GET OUT OF THE ROAD!!/", "scr_text_slash_scr_text_gml_3497_0");
			msgnextloc("* Uhh^1, sorry. Bad habit./", "scr_text_slash_scr_text_gml_3498_0");
			msgnextloc("* Anything I can help you with^1, punk?/", "scr_text_slash_scr_text_gml_3499_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3500_0");
			break;
		case 1025:
			if (global.choice == 0)
			{
				scr_speaker("undyne");
				msgsetloc(0, "\\E1* Huh? A super-dangerous alternate world in the Library?/", "scr_text_slash_scr_text_gml_3507_0");
				msgnextloc("\\E1* More are appearing? People might fall inside...?/", "scr_text_slash_scr_text_gml_3508_0");
				msgnextloc("\\E5* Hahahaha..^1. listen^1, punk!/", "scr_text_slash_scr_text_gml_3509_0");
				msgnextloc("\\E2* Hahah..^1. You seriously think I'm gonna believe that?/%", "scr_text_slash_scr_text_gml_3510_0");
				with (obj_npc_police)
					con = 1;
			}
			else
			{
				scr_speaker("undyne");
				msgsetloc(0, "\\E0* Nothing to report^1, huh? At times like this.../", "scr_text_slash_scr_text_gml_3518_0");
				msgnextloc("\\E6* Punks like you should be home playing video games./%", "scr_text_slash_scr_text_gml_3519_0");
			}
			break;
		case 1028:
			global.choicemsg[0] = stringsetloc("#Complain#About#Police", "scr_text_slash_scr_text_gml_3547_0");
			global.choicemsg[1] = stringsetloc("#Talk#About#School", "scr_text_slash_scr_text_gml_3548_0");
			global.choicemsg[2] = stringsetloc("See ya", "scr_text_slash_scr_text_gml_3549_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3550_0");
			var timesread = 0;
			with (obj_npc_sign)
			{
				if (sprite_index == spr_alphysd)
					timesread = read;
			}
			if (timesread == 0)
			{
				scr_speaker("alphys");
				msgsetloc(0, "* Hi Kris!^1! Getting your project done? Eheheh.../", "scr_text_slash_scr_text_gml_3564_0");
				msgnextloc("\\E4* O..^1. oh^1, my bike...? It's eh..^1. eheh^1, totaled.../", "scr_text_slash_scr_text_gml_3565_0");
				msgnextloc("\\E5* I..^1. Um..^1. I had a little crash^1, err.../", "scr_text_slash_scr_text_gml_3566_0");
				msgnextloc("\\E6* You see^1, there was this p-police officer^1, and..^1. er.../", "scr_text_slash_scr_text_gml_3567_0");
				msgnextloc("\\EB* .../", "scr_text_slash_scr_text_gml_3568_0");
				msgnextloc("\\E4* It's complicated. How are you doing?/", "scr_text_slash_scr_text_gml_3569_0");
				msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_3570_0");
			}
			else
			{
				scr_speaker("alphys");
				msgsetloc(0, "* K..^1. Kris^1! D-did you need something...?/", "scr_text_slash_scr_text_gml_3574_0");
				msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_3575_0");
			}
			break;
		case 1029:
			if (global.choice == 0)
			{
				scr_speaker("alphys");
				msgsetloc(0, "\\E0* Kris^1, it's no secret the^1, er^1, police in this town are.../", "scr_text_slash_scr_text_gml_3583_0");
				msgnextloc("\\E2* Err..^1. how do I put this..^1. Just..^1. um.../", "scr_text_slash_scr_text_gml_3584_0");
				msgnextloc("\\E7* Eye candy^1, I guess?/", "scr_text_slash_scr_text_gml_3585_0");
				msgnextloc("\\E9* W-wait^1, th-that came out wrong!/", "scr_text_slash_scr_text_gml_3586_0");
				msgnextloc("\\E5* I mean they're s-symbolic^1! They barely do anything!/", "scr_text_slash_scr_text_gml_3587_0");
				msgnextloc("\\E3* It's because of the mayor^1, there..^1. there.../", "scr_text_slash_scr_text_gml_3588_0");
				msgnextloc("\\E1* There isn't any crime./", "scr_text_slash_scr_text_gml_3589_0");
				msgnextloc("\\E3* Makes me wonder if she even needs the police.../", "scr_text_slash_scr_text_gml_3590_0");
				msgnextloc("\\E4* Or if they're just..^1. g..^1. getting in her way?/", "scr_text_slash_scr_text_gml_3591_0");
				msgnextloc("\\E5* ..^1. eheh sorry. I'm just saying what you already know./", "scr_text_slash_scr_text_gml_3592_0");
				msgnextloc("\\E0* After all^1, she's.../", "scr_text_slash_scr_text_gml_3593_0");
				msgnextloc("\\E4* Your neighbor^1, right?/%", "scr_text_slash_scr_text_gml_3594_0");
			}
			else if (global.choice == 1)
			{
				scr_speaker("alphys");
				msgsetloc(0, "\\E0* Oh^1, how's your project going with^1, err..^1. Susie?/", "scr_text_slash_scr_text_gml_3598_0");
				msgnextloc("\\E3* What? Y-you went to the LIBRARY?^1! Together!?/", "scr_text_slash_scr_text_gml_3599_0");
				msgnextloc("\\E0* With Noelle and Berdly!? Th-that's amazing^1, Kris!!/", "scr_text_slash_scr_text_gml_3600_0");
				msgnextloc("\\E5* And^1, um..^1. while you were there.../", "scr_text_slash_scr_text_gml_3601_0");
				msgnextloc("\\E6* This has nothing to do with me^1, but the Teen Zone.../", "scr_text_slash_scr_text_gml_3602_0");
				msgnextloc("\\E5* Seems to have some..^1. g-good anime reviews^1, you know?/", "scr_text_slash_scr_text_gml_3603_0");
				msgnextloc("\\E4* Not sure if you and the gang^1, were^1,/", "scr_text_slash_scr_text_gml_3604_0");
				msgnextloc("\\E6* Ch-checking that out as you studied?/", "scr_text_slash_scr_text_gml_3605_0");
				msgnextloc("\\E5* Next time you go you might want to.../", "scr_text_slash_scr_text_gml_3606_0");
				msgnextloc("\\E6* Casually bring that up^1, among your fellow teens./", "scr_text_slash_scr_text_gml_3607_0");
				msgnextloc("\\EB* I..^1. I know your dad liked Mew Mew 2 at least!!/", "scr_text_slash_scr_text_gml_3608_0");
				msgnextloc("\\E5* A-again^1, nothing to do with me!^1! Eheheh!!/%", "scr_text_slash_scr_text_gml_3609_0");
			}
			else
			{
				scr_speaker("alphys");
				msgsetloc(0, "\\E0* S-see you tomorrow^1, Kris!/", "scr_text_slash_scr_text_gml_3614_0");
				msgnextloc("\\E3* U-umm^1, there's^1, no school tomorrow though!!/%", "scr_text_slash_scr_text_gml_3615_0");
			}
			break;
		case 1030:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_3620_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_3621_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3622_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3623_0");
			scr_speaker("no_name");
			msgsetloc(0, "\\M0* ..^1. hey!!/", "scr_text_slash_scr_text_gml_3625_0");
			var myname = (global.flag[259] == 2) ? stringsetloc("Hyper-Potato-Mouse!", "scr_text_slash_scr_text_gml_3626_0") : stringsetloc("Crisper!!", "scr_text_slash_scr_text_gml_3626_1");
			msgnextsubloc("\\M1* ~1^1!/", myname, "scr_text_slash_scr_text_gml_3627_0");
			msgnextloc("\\M2* I missed you^1, y'hear!? Hahaha!^1! Missed you all day!!/", "scr_text_slash_scr_text_gml_3628_0");
			msgnextloc("\\M0* Didja miss..^1. me?/", "scr_text_slash_scr_text_gml_3629_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3630_0");
			break;
		case 1031:
			if (global.choice == 0)
			{
				global.flag[425] = 1;
				scr_speaker("no_name");
				msgsetloc(0, "\\M4* Oh!!^1! I was missed!!!/", "scr_text_slash_scr_text_gml_3637_0");
				msgnextloc("* My existence!^1! Being acknowledged!!/", "scr_text_slash_scr_text_gml_3638_0");
				msgnextloc("* Feels good^1, y'hear!!/", "scr_text_slash_scr_text_gml_3639_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3640_0");
				msgnextloc("\\M1* Y'hear..^1. Y'hear closely for a second./", "scr_text_slash_scr_text_gml_3641_0");
				msgnextloc("\\M2* Y'hou're my friend. Right?/", "scr_text_slash_scr_text_gml_3642_0");
				msgnextloc("\\M0* As my friend..^1. Do you wanna..^1. y'hear a secret?/", "scr_text_slash_scr_text_gml_3643_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3644_0");
				msgnextloc("\\M5* Sometimes..^1. I hear a song at night./", "scr_text_slash_scr_text_gml_3645_0");
				msgnextloc("\\M0* Just a little piece of a song^1, y'hear./", "scr_text_slash_scr_text_gml_3646_0");
				msgnextloc("\\M2* It sounds like..^1. it's coming from under the water. Deep./", "scr_text_slash_scr_text_gml_3647_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3648_0");
				msgnextloc("* Do..^1. Do you think..../", "scr_text_slash_scr_text_gml_3649_0");
				msgnextloc("\\M0* Someone's auditioning for my band!?/", "scr_text_slash_scr_text_gml_3650_0");
				msgnextloc("\\M2* Oh^1, I'm about to make another friend^1! I can feel it^1, y'hear!!/", "scr_text_slash_scr_text_gml_3651_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3652_0");
				msgnextloc("\\M5* Do you wanna y'hear another secret...?/", "scr_text_slash_scr_text_gml_3653_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3654_0");
				msgnextloc("* ..^1. I think.../", "scr_text_slash_scr_text_gml_3655_0");
				msgnextloc("* Maybe.../", "scr_text_slash_scr_text_gml_3656_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3657_0");
				msgnextloc("\\M2* ..^1. I've heard that song before..^1. coming from the sea./", "scr_text_slash_scr_text_gml_3658_0");
				msgnextloc("* The whole thing./", "scr_text_slash_scr_text_gml_3659_0");
				msgnextloc("* It's not a \"new\" song./", "scr_text_slash_scr_text_gml_3660_0");
				msgnextloc("\\M1* But..^1. I can't remember..^1. I can't..^1. Can't remember^1, y'hear!/", "scr_text_slash_scr_text_gml_3661_0");
				msgnextloc("\\M0* I'm going to investigate^1, y'hear!/", "scr_text_slash_scr_text_gml_3662_0");
				msgnextloc("* Come back here tomorrow^1, y'hear!/", "scr_text_slash_scr_text_gml_3663_0");
				var onionname = stringsetloc("Onion", "scr_text_slash_scr_text_gml_3664_0");
				if (global.flag[260] == 2)
					onionname = stringsetloc("Beauty", "scr_text_slash_scr_text_gml_3667_0");
				else if (global.flag[260] == 3)
					onionname = stringsetloc("Asriel II", "scr_text_slash_scr_text_gml_3670_0");
				msgnextsubloc("* ~1 is on the case!/", onionname, "scr_text_slash_scr_text_gml_3672_0");
				msgnextloc("\\M3* (That's my name^1, right?)/", "scr_text_slash_scr_text_gml_3673_0");
				var myname = (global.flag[259] == 2) ? stringsetloc("Mouse!!", "scr_text_slash_scr_text_gml_3674_0") : stringsetloc("Kiss!", "scr_text_slash_scr_text_gml_3674_1");
				msgnextsubloc("\\M0* See you^1, ~1^1!/%", myname, "scr_text_slash_scr_text_gml_3675_0");
			}
			else
			{
				global.flag[425] = 2;
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_3678_0");
			}
			break;
		case 1035:
			global.choicemsg[0] = stringsetloc("#Let's go!#Let's go!", "scr_text_slash_scr_text_gml_3683_0");
			global.choicemsg[1] = stringsetloc("We can use#the computer#at my#house", "scr_text_slash_scr_text_gml_3684_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3685_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3686_0");
			scr_speaker("susie");
			global.fe = 2;
			msgsetloc(0, "* ... So what's it gonna be^1, Kris?/", "scr_text_slash_scr_text_gml_3689_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3690_0");
			break;
		case 1036:
			if (global.choice == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E2* Yeah^1, let's just drop the act!/", "scr_text_slash_scr_text_gml_3697_0");
				msgnextloc("\\E9* Our last adventure was great^1, right?!/", "scr_text_slash_scr_text_gml_3698_0");
				msgnextloc("\\EY* I couldn't stop thinking about having another!/", "scr_text_slash_scr_text_gml_3699_0");
				msgnextloc("\\EQ* I don't know what's in there^1, but.../", "scr_text_slash_scr_text_gml_3700_0");
				msgnextloc("\\EY* We can't live if we don't find out^1, right!?/%", "scr_text_slash_scr_text_gml_3701_0");
			}
			else
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EV* .../", "scr_text_slash_scr_text_gml_3706_0");
				msgnextloc("\\EV* Kris^1, you're right./", "scr_text_slash_scr_text_gml_3707_0");
				msgnextloc("\\EW* Like^1, you said a correct fact./", "scr_text_slash_scr_text_gml_3708_0");
				msgnextloc("\\EV* But you made a mistake./", "scr_text_slash_scr_text_gml_3709_0");
				msgnextloc("\\EX* The mistake of knowing me./", "scr_text_slash_scr_text_gml_3710_0");
				msgnextloc("\\EX* 'Cause when I see a big pit^1,/", "scr_text_slash_scr_text_gml_3711_0");
				msgnextloc("\\EX* All I wanna do is jump in./", "scr_text_slash_scr_text_gml_3712_0");
				msgnextloc("\\EV* And as long as you're with me.../", "scr_text_slash_scr_text_gml_3713_0");
				msgnextloc("\\EY* I'm dragging you in too!/%", "scr_text_slash_scr_text_gml_3714_0");
			}
			break;
		case 1037:
			global.choicemsg[0] = stringsetloc("#Talk", "scr_text_slash_scr_text_gml_3719_0");
			global.choicemsg[1] = stringsetloc("#Susie", "scr_text_slash_scr_text_gml_3720_0");
			global.choicemsg[2] = stringsetloc("Don't", "scr_text_slash_scr_text_gml_3721_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3722_0");
			var timestalked = 0;
			with (obj_npc_room)
				timestalked = talked;
			if (timestalked == 0)
			{
				scr_speaker("bratty");
				msgsetloc(0, "\\E5* (snicker^1, snicker)/", "scr_text_slash_scr_text_gml_3733_0");
				msgnextloc("\\E0* Like^1, Lil Krissy^1, you hear? That^1, uh^1, guy at the pizza place?/", "scr_text_slash_scr_text_gml_3734_0");
				msgnextloc("\\E6* God^1, what was his name? Pizzapants?/", "scr_text_slash_scr_text_gml_3735_0");
				msgnextloc("\\E3* Heard he got^1, like^1, a SUPER hot girlfriend./", "scr_text_slash_scr_text_gml_3736_0");
				msgnextloc("\\E5* What was her name? Like^1, uh..../", "scr_text_slash_scr_text_gml_3737_0");
				msgnextloc("\\E6* Hahahah..^1. haha..^1. Pizza...rina? Hahahah./", "scr_text_slash_scr_text_gml_3738_0");
				msgnextloc("\\E0* Anyway^1, what^1, did you like^1, wanna talk?/", "scr_text_slash_scr_text_gml_3739_0");
			}
			else
			{
				scr_speaker("bratty");
				msgsetloc(0, "\\E0* Lil Krissy. Come to visit me in my alley?/", "scr_text_slash_scr_text_gml_3743_0");
				msgnextloc("\\E5* Hahaha. I'm a real alley-gator^1, aren't I~?/", "scr_text_slash_scr_text_gml_3744_0");
			}
			msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_3747_0");
			break;
		case 1038:
			if (global.choice == 0)
			{
				scr_speaker("bratty");
				msgsetloc(0, "\\E3* Krissy^1, like^1, GUESS what?/", "scr_text_slash_scr_text_gml_3754_0");
				msgnextloc("\\E0* Today I like^1, went to the beach to play my uke^1, and.../", "scr_text_slash_scr_text_gml_3755_0");
				msgnextloc("\\E6* Like^1, guess who's ALREADY there?/", "scr_text_slash_scr_text_gml_3756_0");
				msgnextloc("\\E3* That COPYCAT^1, playing the same song I wanted to play./", "scr_text_slash_scr_text_gml_3757_0");
				msgnextloc("\\E6* Oh my god. Cat on the beach. Grody./", "scr_text_slash_scr_text_gml_3758_0");
				msgnextloc("\\E3* Did she^1, like^1, get lost looking for the litter box?/", "scr_text_slash_scr_text_gml_3759_0");
				msgnextloc("\\E0* So like^1, I try to like^1, play the same song^1, too.../", "scr_text_slash_scr_text_gml_3760_0");
				msgnextloc("\\E5* To^1, you know^1, assert my ukelele dominance./", "scr_text_slash_scr_text_gml_3761_0");
				msgnextloc("\\E3* And we end up^1, ugh - get this -/", "scr_text_slash_scr_text_gml_3762_0");
				msgnextloc("\\E6* Playing the whole song. TOGETHER./", "scr_text_slash_scr_text_gml_3763_0");
				msgnextloc("\\E3* Like^1, oh my god^1, who does this girl think she IS?/", "scr_text_slash_scr_text_gml_3764_0");
				msgnextloc("\\E3* She thinks she can just^1, like^1, HARMONIZE with me!?/", "scr_text_slash_scr_text_gml_3765_0");
				msgnextloc("\\E0* Ugh. I can't STAND her./%", "scr_text_slash_scr_text_gml_3766_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("bratty");
				msgsetloc(0, "\\E3* (OMG^1, it's^1, like^1, SO sweet you have a nasty dirty little friend.)/", "scr_text_slash_scr_text_gml_3771_0");
				msgnextloc("\\E6* (But like..^1. this is MY polluted alleyway? So like...)/", "scr_text_slash_scr_text_gml_3772_0");
				msgnextloc("\\E0* (I think I might have to go to the mayor and get a traffic sign?)/", "scr_text_slash_scr_text_gml_3773_0");
				msgnextloc("\\E5* (That says like^1, no plus-ones. Because^1, like..^1. okay?)/%", "scr_text_slash_scr_text_gml_3774_0");
			}
			if (global.choice == 2)
			{
				scr_speaker("bratty");
				msgsetloc(0, "\\E5* Oh^1, like^1, you^1, like^1, just like^1, like alleys?/", "scr_text_slash_scr_text_gml_3779_0");
				msgnextloc("\\E3* Oh my god. Like^1, me too. I LOVE alleys./", "scr_text_slash_scr_text_gml_3780_0");
				msgnextloc("\\E6* Like^1, don't even THINK you can like them as much as me./%", "scr_text_slash_scr_text_gml_3781_0");
			}
			break;
		case 1039:
			global.choicemsg[0] = stringsetloc("#Talk More", "scr_text_slash_scr_text_gml_3786_0");
			global.choicemsg[1] = stringsetloc("#Don't talk more", "scr_text_slash_scr_text_gml_3787_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3788_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3789_0");
			var timestalked = 0;
			with (obj_npc_room_animated)
			{
				if (sprite_index == spr_npc_catty_ukelele)
					timestalked = talked;
			}
			scr_speaker("catty");
			if (timestalked == 0)
			{
				msgsetloc(0, "\\E2* OMG my little sis is SOOOOO CUTE in her outfit!!!/", "scr_text_slash_scr_text_gml_3804_0");
				msgnextloc("\\E5* Krissy^1, like^1, listen to the song I made about her!!!/", "scr_text_slash_scr_text_gml_3805_0");
				msgnextloc("\\E2* \"Catti's the best! Catti's the best!/", "scr_text_slash_scr_text_gml_3806_0");
				msgnextloc("\\E2* She curses me^1, every day&* Glares 'cause I'm in her way /", "scr_text_slash_scr_text_gml_3807_0");
				msgnextloc("\\E2* Catti's the best sister ever!!\"/", "scr_text_slash_scr_text_gml_3808_0");
				msgnextloc("\\E6* Hahaha!!^1! Anyway^1, what's up^1, Krissy!?/", "scr_text_slash_scr_text_gml_3809_0");
			}
			else
			{
				msgsetloc(0, "\\E6* What's up^1, Kris?/", "scr_text_slash_scr_text_gml_3812_0");
			}
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3815_0");
			break;
		case 1040:
			if (global.choice == 0)
			{
				scr_speaker("catty");
				msgsetloc(0, "\\E5* OMG Krissy you're not going to believe this!!!/", "scr_text_slash_scr_text_gml_3823_0");
				msgnextloc("\\E1* I was at the beach playing ukelele^1, right? And.../", "scr_text_slash_scr_text_gml_3824_0");
				msgnextloc("\\E5* Like^1, that green alligator evil neighbor girl^1, like -/", "scr_text_slash_scr_text_gml_3825_0");
				msgnextloc("\\E5* INVADED and started^1, like^1, playing MY song!!/", "scr_text_slash_scr_text_gml_3826_0");
				msgnextloc("\\E3* With ME!!^1! OMG!!!/", "scr_text_slash_scr_text_gml_3827_0");
				msgnextloc("\\E2* Like^1, it was SOOOOOOO fun...!!/", "scr_text_slash_scr_text_gml_3828_0");
				msgnextloc("\\E1* Haha..^1. wait^1, isn't she like^1, my enemy?/%", "scr_text_slash_scr_text_gml_3829_0");
			}
			else
			{
				scr_speaker("catty");
				msgsetloc(0, "\\E6* Wow^1, Krissy^1! You're like^1, in a rush^1, huh??/", "scr_text_slash_scr_text_gml_3834_0");
				msgnextloc("\\E8* OK!^1! Don't get stuck in a tree!^1! Mwah!^1! Mwah!!/%", "scr_text_slash_scr_text_gml_3835_0");
			}
			break;
		case 1041:
			global.choicemsg[0] = stringsetloc("#Cause they#care", "scr_text_slash_scr_text_gml_3840_0");
			global.choicemsg[1] = stringsetloc("#Your family#is weird", "scr_text_slash_scr_text_gml_3841_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3842_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3843_0");
			scr_speaker("catti");
			msgsetloc(0, "\\E0* .../", "scr_text_slash_scr_text_gml_3845_0");
			msgnextloc("\\E1* Just..^1. ignore them./", "scr_text_slash_scr_text_gml_3846_0");
			msgnextloc("\\E0* ..^1. I know./", "scr_text_slash_scr_text_gml_3847_0");
			msgnextloc("\\E0* They're embarrassing./", "scr_text_slash_scr_text_gml_3848_0");
			msgnextloc("\\E0* .../", "scr_text_slash_scr_text_gml_3849_0");
			msgnextloc("\\E1* Why are they even here?/", "scr_text_slash_scr_text_gml_3850_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_3851_0");
			break;
		case 1042:
			if (global.choice == 0)
			{
				scr_speaker("catti");
				msgsetloc(0, "\\E0* .../", "scr_text_slash_scr_text_gml_3858_0");
				msgnextloc("* ..^1. then they can care./", "scr_text_slash_scr_text_gml_3859_0");
				msgnextloc("\\E1* Somewhere else./", "scr_text_slash_scr_text_gml_3860_0");
				msgnextloc("\\E0* .../%", "scr_text_slash_scr_text_gml_3861_0");
				with (obj_npc_catti)
					con = 0;
			}
			else
			{
				scr_speaker("catti");
				msgsetloc(0, "\\E0* I know./", "scr_text_slash_scr_text_gml_3867_0");
				msgnextloc("\\E0* .../", "scr_text_slash_scr_text_gml_3868_0");
				msgnextloc("\\E0* Wish they'd be..^1. normal./", "scr_text_slash_scr_text_gml_3869_0");
				msgnextloc("\\E1* ..^1. or at least./", "scr_text_slash_scr_text_gml_3870_0");
				msgnextloc("\\E2* More goth./%", "scr_text_slash_scr_text_gml_3871_0");
				with (obj_npc_catti)
					con = 0;
			}
			break;
		case 1043:
			global.choicemsg[0] = stringsetloc("#Noelle", "scr_text_slash_scr_text_gml_3877_0");
			global.choicemsg[1] = stringsetloc("#Family", "scr_text_slash_scr_text_gml_3878_0");
			global.choicemsg[2] = stringsetloc("Jockington", "scr_text_slash_scr_text_gml_3879_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_3880_0");
			scr_speaker("catti");
			msgsetloc(0, "\\E0* .../", "scr_text_slash_scr_text_gml_3882_0");
			msgnextloc("\\E1* What?/", "scr_text_slash_scr_text_gml_3883_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_3884_0");
			break;
		case 1044:
			if (global.choice == 0)
			{
				scr_speaker("catti");
				msgsetloc(0, "\\E0* Golden hair. Starry eyes./", "scr_text_slash_scr_text_gml_3891_0");
				msgnextloc("\\E1* She is the light./", "scr_text_slash_scr_text_gml_3892_0");
				msgnextloc("\\E2* Laughing in the night./", "scr_text_slash_scr_text_gml_3893_0");
				msgnextloc("\\E0* Taught her.../", "scr_text_slash_scr_text_gml_3894_0");
				msgnextloc("\\E1* Protection spells./", "scr_text_slash_scr_text_gml_3895_0");
				msgnextloc("\\E2* Showed her..^1. occult findings./", "scr_text_slash_scr_text_gml_3896_0");
				msgnextloc("\\E1* .../", "scr_text_slash_scr_text_gml_3897_0");
				msgnextloc("\\E0* But lately. She slips.../", "scr_text_slash_scr_text_gml_3898_0");
				msgnextloc("\\E0* ..^1. Into the darkness./", "scr_text_slash_scr_text_gml_3899_0");
				msgnextloc("\\E0* .../", "scr_text_slash_scr_text_gml_3900_0");
				msgnextloc("\\E1* Kris./", "scr_text_slash_scr_text_gml_3901_0");
				msgnextloc("\\E0* You walk among the dark./", "scr_text_slash_scr_text_gml_3902_0");
				msgnextloc("\\E0* Protect her./", "scr_text_slash_scr_text_gml_3903_0");
				msgnextloc("\\E1* ..^1. From Susie./", "scr_text_slash_scr_text_gml_3904_0");
				msgnextloc("\\E1* ..^1. I'm talking about Susie./%", "scr_text_slash_scr_text_gml_3905_0");
			}
			else if (global.choice == 1)
			{
				scr_speaker("catti");
				msgsetloc(0, "\\E0* .../", "scr_text_slash_scr_text_gml_3910_0");
				msgnextloc("\\E0* Dad. Mom. Sister./", "scr_text_slash_scr_text_gml_3911_0");
				msgnextloc("\\E0* Ukelele. Football games. Soap operas./", "scr_text_slash_scr_text_gml_3912_0");
				msgnextloc("\\E0* Yelling. Standing on tables. Afraid of vacuums./", "scr_text_slash_scr_text_gml_3913_0");
				msgnextloc("\\E0* Stupid. Loud. Very loud./", "scr_text_slash_scr_text_gml_3914_0");
				msgnextloc("\\E0* Kris. ..^1. you and I.../", "scr_text_slash_scr_text_gml_3915_0");
				msgnextloc("\\E1* Studied occult. Together./", "scr_text_slash_scr_text_gml_3916_0");
				msgnextloc("\\E0* ..^1. Incantation for silence./", "scr_text_slash_scr_text_gml_3917_0");
				msgnextloc("\\E1* ..^1. Find it. Tell me./%", "scr_text_slash_scr_text_gml_3918_0");
			}
			else if (global.choice == 2)
			{
				scr_speaker("catti");
				msgsetloc(0, "\\E1* Pure boy. Heart of gold./", "scr_text_slash_scr_text_gml_3922_0");
				msgnextloc("\\E1* Curiosity high./", "scr_text_slash_scr_text_gml_3923_0");
				msgnextloc("\\E1* Intelligence low./", "scr_text_slash_scr_text_gml_3924_0");
				msgnextloc("\\E1* ..^1. fetches frisbees./", "scr_text_slash_scr_text_gml_3925_0");
				msgnextloc("\\E1* Dress him up./", "scr_text_slash_scr_text_gml_3926_0");
				msgnextloc("\\E1* Carry in a bag./", "scr_text_slash_scr_text_gml_3927_0");
				msgnextloc("\\E1* Precious boy./", "scr_text_slash_scr_text_gml_3928_0");
				msgnextloc("\\E0* ..^1. don't know why./%", "scr_text_slash_scr_text_gml_3929_0");
			}
			else if (global.choice == 3)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_3932_0");
			}
			break;
		case 1045:
			global.choicemsg[0] = stringsetloc("#Gerson", "scr_text_slash_scr_text_gml_3937_0");
			global.choicemsg[1] = stringsetloc("#Hammer", "scr_text_slash_scr_text_gml_3938_0");
			global.choicemsg[2] = stringsetloc("Asriel", "scr_text_slash_scr_text_gml_3939_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_3940_0");
			scr_speaker("no_name");
			msgsetloc(0, "* Kris. Welcome./", "scr_text_slash_scr_text_gml_3942_0");
			msgnextloc("* Did you seek something from me?/", "scr_text_slash_scr_text_gml_3943_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_3944_0");
			break;
		case 1046:
			if (global.choice == 0)
			{
				if (global.flag[337] < 2)
					global.flag[337]++;
				scr_speaker("no_name");
				msgsetloc(0, "* It's been a few years since my father passed on.../", "scr_text_slash_scr_text_gml_3955_0");
				msgnextloc("* Fans of his famous book series^1, Lord of the Hammer.../", "scr_text_slash_scr_text_gml_3956_0");
				msgnextloc("* We still received condolences from them until just recently./", "scr_text_slash_scr_text_gml_3957_0");
				msgnextloc("* A brave man^1, brilliant^1, and sharp./", "scr_text_slash_scr_text_gml_3958_0");
				msgnextloc("* Kris^1, it is a shame you were not able to have him as a teacher./", "scr_text_slash_scr_text_gml_3959_0");
				msgnextloc("* And^1, difficult for Ms. Alphys^1, as his replacement./", "scr_text_slash_scr_text_gml_3960_0");
				msgnextloc("* Let us pray that the Angel will smile upon her./%", "scr_text_slash_scr_text_gml_3961_0");
			}
			else if (global.choice == 1)
			{
				if (global.flag[337] < 2)
					global.flag[337]++;
				scr_speaker("no_name");
				msgsetloc(0, "* As per the ritual^1, a hammer is buried in the earth here./", "scr_text_slash_scr_text_gml_3970_0");
				msgnextloc("* To symbolize his existence./", "scr_text_slash_scr_text_gml_3971_0");
				msgnextloc("* To connect his spirit to the divine./", "scr_text_slash_scr_text_gml_3972_0");
				msgnextloc("* Originally a smith by trade^1, he began writing history.../", "scr_text_slash_scr_text_gml_3973_0");
				msgnextloc("* And made a turn into telling stories^1,/", "scr_text_slash_scr_text_gml_3974_0");
				msgnextloc("* As a means to entertain his children./", "scr_text_slash_scr_text_gml_3975_0");
				msgnextloc("* That such a story^1, created for such a simple purpose^1,/", "scr_text_slash_scr_text_gml_3976_0");
				msgnextloc("* Could blossom into such a large^1, wonderful^1, world-changing thing.../", "scr_text_slash_scr_text_gml_3977_0");
				msgnextloc("* That is the majesty of words^1, Kris./", "scr_text_slash_scr_text_gml_3978_0");
				msgnextloc("* .../", "scr_text_slash_scr_text_gml_3979_0");
				msgnextloc("* My father was blessed to have such a talent for writing./%", "scr_text_slash_scr_text_gml_3980_0");
			}
			else if (global.choice == 2)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Ah^1, Kris. Your brother. He is a very kind young man./", "scr_text_slash_scr_text_gml_3984_0");
				msgnextloc("* Perhaps even a little..^1. overzealous^1, in his younger days./", "scr_text_slash_scr_text_gml_3985_0");
				msgnextloc("* He would visit me often to confess..^1. to various^1, \"sins\"./", "scr_text_slash_scr_text_gml_3986_0");
				msgnextloc("* Despite the absence of sin^1, or confession^1, in our religion./", "scr_text_slash_scr_text_gml_3987_0");
				msgnextloc("* I remember his small face^1, sobbing^1, as he admitted he had^1,/", "scr_text_slash_scr_text_gml_3988_0");
				msgnextloc("* \"Dropped the lizard in the pit to jump high.\"/", "scr_text_slash_scr_text_gml_3989_0");
				msgnextloc("* Nearly omitting the fact that he had done so in a \"videos game.\"/", "scr_text_slash_scr_text_gml_3990_0");
				msgnextloc("* He also confessed to various \"sins\" on your behalf^1,/", "scr_text_slash_scr_text_gml_3991_0");
				msgnextloc("* Begging for your forgiveness for \"dropping the lizard on purpose.\"/", "scr_text_slash_scr_text_gml_3992_0");
				msgnextloc("* I would always \"forgive\" him and send him home./%", "scr_text_slash_scr_text_gml_3993_0");
			}
			else if (global.choice == 3)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Good day^1, Kris. May the Angel watch over you.../%", "scr_text_slash_scr_text_gml_3997_0");
			}
			break;
		case 1047:
			global.choicemsg[0] = stringsetloc("#Current#situation", "scr_text_slash_scr_text_gml_4002_0");
			global.choicemsg[1] = stringsetloc("#Susie", "scr_text_slash_scr_text_gml_4003_0");
			global.choicemsg[2] = stringsetloc("Noelle", "scr_text_slash_scr_text_gml_4004_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_4005_0");
			var timestalked = 0;
			with (obj_npc_rudy)
				timestalked = talked;
			scr_speaker("rudy");
			if (timestalked == 1)
			{
				msgsetloc(0, "\\E4* Sorry^1, I..^1. heheh./", "scr_text_slash_scr_text_gml_4014_0");
				msgnextloc("\\E5* Used up..^1. a lot of my energy just now./", "scr_text_slash_scr_text_gml_4015_0");
				msgnextloc("\\E4* Probably..^1. not gonna be very fun to talk to./", "scr_text_slash_scr_text_gml_4016_0");
				msgnextloc("\\E0* Thanks for visiting though^1, Kris./", "scr_text_slash_scr_text_gml_4017_0");
				msgnextloc("\\E2* And you too^1, Susie./", "scr_text_slash_scr_text_gml_4018_0");
			}
			else
			{
				msgsetloc(0, "\\E2* What is it^1, Krismas?/", "scr_text_slash_scr_text_gml_4021_0");
			}
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_4024_0");
			break;
		case 1048:
			if (global.choice == 0)
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E4* Heheh..^1. seems like^1, I need some more tests./", "scr_text_slash_scr_text_gml_4031_0");
				msgnextloc("\\E5* So just..^1. gotta wait it out./", "scr_text_slash_scr_text_gml_4032_0");
				msgnextloc("\\E3* They can't keep me down for too long^1, baby!/", "scr_text_slash_scr_text_gml_4033_0");
				msgnextloc("\\E2* Sooner or later..^1. I'm bustin' out of here!/%", "scr_text_slash_scr_text_gml_4034_0");
				with (obj_npc_rudy)
					coughcon = 0;
			}
			else if (global.choice == 1)
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E0* Hey^1, Kris^1, she's a nice girl^1, huh?/", "scr_text_slash_scr_text_gml_4043_0");
				msgnextloc("\\E2* The hell you taking her HERE for?/", "scr_text_slash_scr_text_gml_4044_0");
				msgnextloc("* Why don't you take her to the movies?/", "scr_text_slash_scr_text_gml_4045_0");
				scr_anyface_next("susie", "2");
				msgnextloc("\\E2* Hey^1, yeah^1, the hell didn't we go to the movies^1, Kris?/", "scr_text_slash_scr_text_gml_4047_0");
				scr_anyface_next("rudy", 2);
				msgnextloc("\\E2* Yeah^1! And take me too while you're at it!/", "scr_text_slash_scr_text_gml_4049_0");
				scr_anyface_next("susie", "2");
				msgnextloc("\\E2* Yeah^1, Kris^1! C'mon!!/", "scr_text_slash_scr_text_gml_4051_0");
				scr_anyface_next("rudy", 2);
				msgnextloc("\\E2* Kettle corn^1, Kris^1! Big^1! Don't skimp out!/%", "scr_text_slash_scr_text_gml_4053_0");
			}
			else if (global.choice == 2)
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E6* (Look^1, Kris. Can't say much^1, but...)/", "scr_text_slash_scr_text_gml_4057_0");
				msgnextloc("\\E5* (Noelle..^1. might look like she has it all.)/", "scr_text_slash_scr_text_gml_4058_0");
				msgnextloc("\\E4* (But her mother. Her mother^1, you know?)/", "scr_text_slash_scr_text_gml_4059_0");
				msgnextloc("\\E1* (Love her^1, but..^1. she's..^1. tough on her.)/", "scr_text_slash_scr_text_gml_4060_0");
				msgnextloc("\\E5* (Normally^1, I balance it all out.)/", "scr_text_slash_scr_text_gml_4061_0");
				msgnextloc("\\E6* (But...)/", "scr_text_slash_scr_text_gml_4062_0");
				msgnextloc("\\E5* (I can't..^1. do much. When I'm not there.)/", "scr_text_slash_scr_text_gml_4063_0");
				msgnextloc("\\E1* (But I'm gonna get better.)/", "scr_text_slash_scr_text_gml_4064_0");
				msgnextloc("\\E4* (I have to.)/%", "scr_text_slash_scr_text_gml_4065_0");
			}
			else if (global.choice == 3)
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E2* Yeah^1, get on outta here and do something fun!/%", "scr_text_slash_scr_text_gml_4069_0");
			}
			break;
		case 1049:
			global.choicemsg[0] = stringsetloc("#Take it", "scr_text_slash_scr_text_gml_4074_0");
			global.choicemsg[1] = stringsetloc("#Do not", "scr_text_slash_scr_text_gml_4075_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4076_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4077_0");
			if (global.flag[430] == 0)
			{
				msgsetloc(0, "* There's 5 dollars in your brother's drawer. Take it?/", "scr_text_slash_scr_text_gml_4078_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4079_0");
			}
			else
			{
				msgsetloc(0, "* (You have already taken enough.)/%", "scr_text_slash_scr_text_gml_4098_0_b");
			}
			break;
		case 1050:
			if (global.choice == 0)
			{
				global.flag[430] = 1;
				global.lgold += 5;
				msgsetloc(0, "* You reluctantly \"borrowed\" 5 dollars./%", "scr_text_slash_scr_text_gml_4086_0");
			}
			else
			{
				msgsetloc(0, "* It isn't yours^1, after all./%", "scr_text_slash_scr_text_gml_4090_0");
			}
			break;
		case 1055:
			global.choicemsg[0] = stringsetloc("#You", "scr_text_slash_scr_text_gml_4095_0");
			global.choicemsg[1] = stringsetloc("#Someone#Else", "scr_text_slash_scr_text_gml_4096_0");
			global.choicemsg[2] = stringsetloc("No", "scr_text_slash_scr_text_gml_4097_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4098_0");
			msgsetloc(0, "* (Knock knock knock)/", "obj_readable_room1_slash_Other_10_gml_1483_0");
			msgnextloc("* What. What? WHAT!?/", "scr_text_slash_scr_text_gml_4099_0");
			msgnextloc("* If you're looking for Blooky^1, they aren't here!!/", "scr_text_slash_scr_text_gml_4100_0");
			msgnextloc("* ..^1. unless you're looking for someone else?/", "scr_text_slash_scr_text_gml_4101_0");
			msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_4102_0");
			break;
		case 1056:
			if (global.choice == 0)
			{
				msgsetloc(0, "* Me? Me? ME!?!/", "scr_text_slash_scr_text_gml_4108_0");
				msgnextloc("* What have I got to say to YOU!? Nothing!!/", "scr_text_slash_scr_text_gml_4109_0");
				msgnextloc("* Like I'd even recognize a pathetic face like THAT!/", "scr_text_slash_scr_text_gml_4110_0");
				msgnextloc("* By the way^1, say hi to your dad for me~!/", "scr_text_slash_scr_text_gml_4111_0");
				msgnextloc("* WAIT!^1! WAIT!^1! DON'T do that!^1! He doesn't know I -- Nothing!!/%", "scr_text_slash_scr_text_gml_4112_0");
			}
			if (global.choice == 1)
			{
				var timesread = global.flag[422];
				if (timesread == 0)
				{
					global.flag[422] = 1;
					msgsetloc(0, "* ..^1. Fine^1! FINE^1! FINE!!^1! Wanna talk to someone else!? Here!/", "scr_text_slash_scr_text_gml_4129_0");
					msgnextloc("* .../", "scr_text_slash_scr_text_gml_4130_0");
					msgnextloc("* ..^1. Oh my^1, someone's here to see me?/", "scr_text_slash_scr_text_gml_4131_0");
					var visitedyest = true;
					if (visitedyest)
					{
						msgnextloc("* ..^1. It's you again^1, is it^1, darling?/", "scr_text_slash_scr_text_gml_4137_0");
						msgnextloc("* Ohh my. Why do you keep coming to our door?/", "scr_text_slash_scr_text_gml_4138_0");
						msgnextloc("* Are you..^1. a fan of mine?/", "scr_text_slash_scr_text_gml_4139_0");
						msgnextloc("* Haha..^1. as if someone could be a fan of a \"nobody\" like me./", "scr_text_slash_scr_text_gml_4140_0");
						msgnextloc("* .../", "scr_text_slash_scr_text_gml_4141_0");
						msgnextloc("* Well^1, if you are a fan. Haha. Could I bother you for a favor?/", "scr_text_slash_scr_text_gml_4142_0");
					}
					else
					{
						msgnextloc("* ..^1. How odd. Knocking on a stranger's door./", "scr_text_slash_scr_text_gml_4146_0");
						msgnextloc("* Don't you have any manners^1, darling?/", "scr_text_slash_scr_text_gml_4147_0");
						msgnextloc("* Well./", "scr_text_slash_scr_text_gml_4148_0");
						msgnextloc("* A nobody like me can't be picky with their company^1, I suppose./", "scr_text_slash_scr_text_gml_4149_0");
						msgnextloc("* .../", "scr_text_slash_scr_text_gml_4150_0");
						msgnextloc("* Allow me to take this chance to ask you something./", "scr_text_slash_scr_text_gml_4151_0");
					}
					msgnextloc("* Since the internet went down^1, I haven't had much.../", "scr_text_slash_scr_text_gml_4154_0");
					msgnextloc("* Entertainment./", "scr_text_slash_scr_text_gml_4155_0");
					msgnextloc("* If you have anything entertaining^1, darling.../", "scr_text_slash_scr_text_gml_4156_0");
					msgnextloc("* Could you bring it by to me \\cYtomorrow\\c0?/", "scr_text_slash_scr_text_gml_4173_0");
					msgnextloc("* It would mean the world to me. Thank you./%", "scr_text_slash_scr_text_gml_4157_0");
				}
				else
				{
					msgsetloc(0, "* ..^1. Are you still there^1, darling?/", "scr_text_slash_scr_text_gml_4160_0");
					msgnextloc("* Oh my. So obsessed with a nobody like me./", "scr_text_slash_scr_text_gml_4161_0");
					msgnextloc("* It's almost as if you're... a fan of mine./", "scr_text_slash_scr_text_gml_4162_0");
					msgnextloc("* ..^1. Go home^1, darling./%", "scr_text_slash_scr_text_gml_4163_0");
				}
			}
			if (global.choice == 2)
				msgsetloc(0, "* Then leave^1! Leave^1! LEAVE!!!/%", "scr_text_slash_scr_text_gml_4169_0");
			break;
		case 1057:
			global.choicemsg[0] = stringsetloc("#Go with#Ralsei", "scr_text_slash_scr_text_gml_4174_0");
			global.choicemsg[1] = stringsetloc("#Go with#Susie", "scr_text_slash_scr_text_gml_4175_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4176_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4177_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\EA* There's a fork in the path..^1. Kris^1, it seems like.../", "scr_text_slash_scr_text_gml_4179_0");
			msgnextloc("\\EI* It might be advantageous if we split up./", "scr_text_slash_scr_text_gml_4180_0");
			msgnextloc("\\E2* Who do you want to go with?/", "scr_text_slash_scr_text_gml_4181_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4182_0");
			break;
		case 1058:
			msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4186_0");
			with (obj_ch2_scene12)
				con = 10;
			break;
		case 1059:
			global.choicemsg[0] = stringsetloc("#Yeah", "scr_text_slash_scr_text_gml_4191_0");
			global.choicemsg[1] = stringsetloc("#Not yet", "scr_text_slash_scr_text_gml_4192_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4193_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4194_0");
			scr_speaker("susie");
			msgsetloc(0, "\\E0* Kris^1, you going home?/", "scr_text_slash_scr_text_gml_4196_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4197_0");
			break;
		case 1060:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4203_0");
				with (obj_ch2_scene30a)
					con = 5;
			}
			if (global.choice == 1)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E6* Huh...?/", "scr_text_slash_scr_text_gml_4210_0");
				msgnextloc("\\E2* Umm^1, sure^1, alright^1, yeah!/%", "scr_text_slash_scr_text_gml_4211_0");
				with (obj_ch2_scene30a)
					con = 6;
			}
			break;
		case 1061:
			global.choicemsg[0] = stringsetloc("#Wondering", "scr_text_slash_scr_text_gml_4218_0");
			global.choicemsg[1] = stringsetloc("#Don't care", "scr_text_slash_scr_text_gml_4219_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4220_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4221_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\E0* ..^1. Kris.../", "scr_text_slash_scr_text_gml_4223_0");
			msgnextloc("\\EI* ..^1. Are you wondering how Susie is doing right now?/", "scr_text_slash_scr_text_gml_4224_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4225_0");
			break;
		case 1062:
			if (global.choice == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\E0* Well then..^1. why don't we close our eyes.../", "scr_text_slash_scr_text_gml_4232_0");
				msgnextloc("\\E2* ..^1. and think about what she's doing now?/%", "scr_text_slash_scr_text_gml_4233_0");
				with (obj_ch2_scene23a)
					con = 10;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4239_0");
				with (obj_ch2_scene23a)
					con = 20;
			}
			break;
		case 1063:
			global.choicemsg[0] = stringsetloc("#Wondering", "scr_text_slash_scr_text_gml_4246_0");
			global.choicemsg[1] = stringsetloc("#Really#don't care", "scr_text_slash_scr_text_gml_4247_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4248_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4249_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\EJ* ..^1. Err^1, are you sure?/", "scr_text_slash_scr_text_gml_4251_0");
			msgnextloc("\\EK* It might be interesting..^1. you aren't wondering at all?/", "scr_text_slash_scr_text_gml_4252_0");
			msgnextloc("\\EJ* Perhaps^1, if you could potentially see it^1, would you want to?/", "scr_text_slash_scr_text_gml_4253_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4254_0");
			break;
		case 1064:
			if (global.choice == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\E0* Well then..^1. why don't we close our eyes.../", "scr_text_slash_scr_text_gml_4261_0");
				msgnextloc("\\E2* ..^1. and think about what she's doing now?/%", "scr_text_slash_scr_text_gml_4262_0");
				with (obj_ch2_scene23a)
					con = 10;
			}
			if (global.choice == 1)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\E2* ..^1. Well then^1, I suppose if you aren't interested^1, that's that./", "scr_text_slash_scr_text_gml_4269_0");
				msgnextloc("\\E0* Let's keep going^1, Kris./%", "scr_text_slash_scr_text_gml_4270_0");
				with (obj_ch2_scene23a)
					con = 30;
			}
			break;
		case 1065:
			global.choicemsg[0] = stringsetloc("#Of course", "scr_text_slash_scr_text_gml_4277_0");
			global.choicemsg[1] = stringsetloc("#No Triple#Trucies", "scr_text_slash_scr_text_gml_4278_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4279_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4280_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E9* Kris^1, I..^1. um..^1. if it's okay.../", "scr_text_slash_scr_text_gml_4282_0");
			msgnextloc("\\E2* ..^1. G-got any room for another truce?/", "scr_text_slash_scr_text_gml_4283_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4284_0");
			break;
		case 1066:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Thanks^1, Kris.../%", "scr_text_slash_scr_text_gml_4291_0");
				with (obj_ch2_city01)
					con = 20;
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E8* Har har^1, very funny!/", "scr_text_slash_scr_text_gml_4298_0");
				msgnextloc("\\E8* Well^1, I'd rather take my chances with you than her!/%", "scr_text_slash_scr_text_gml_4299_0");
				with (obj_ch2_city01)
					con = 20;
			}
			break;
		case 1069:
			global.choicemsg[0] = stringsetloc("#We're friends", "scr_text_slash_scr_text_gml_4306_0");
			global.choicemsg[1] = stringsetloc("We're#something#else", "scr_text_slash_scr_text_gml_4307_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4308_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4309_0");
			scr_speaker("no_name");
			msgsetloc(0, "* Ohhon!^1! Two young beings together on a school night.../", "scr_text_slash_scr_text_gml_4311_0");
			msgnextloc("* Could I interest you in some brand new Dating Shoes...?/", "scr_text_slash_scr_text_gml_4312_0");
			scr_anyface_next("noelle", "2");
			msgnextloc("\\E2* H-huh...? No^1, no^1, you've got it totally wrong!/", "scr_text_slash_scr_text_gml_4314_0");
			msgnextloc("\\E3* Kris and I are just..^1. umm..^1. fr..^1. friends?/", "scr_text_slash_scr_text_gml_4315_0");
			scr_anyface_next("noelle", 5);
			msgnextloc("\\E5* (Kris's been my neighbor forever...)/", "scr_text_slash_scr_text_gml_4317_0");
			msgnextloc("\\E1* (We've been through so much^1, sometimes it feels like...)/", "scr_text_slash_scr_text_gml_4318_0");
			msgnextloc("\\E0* (We know each other better than anyone.)/", "scr_text_slash_scr_text_gml_4319_0");
			msgnextloc("\\E8* (..^1. yet^1, somehow^1, it's hard to say we're exactly friends...?)/", "scr_text_slash_scr_text_gml_4320_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4321_0");
			break;
		case 1070:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Yep^1! That's right^1! We're friends!/", "scr_text_slash_scr_text_gml_4328_0");
				msgnextloc("\\E6* (It's..^1. surprisingly nice just hearing Kris say that...)/%", "scr_text_slash_scr_text_gml_4329_0");
				if (global.flag[915] > 0)
					scr_sideb_fail();
			}
			if (global.choice == 1)
			{
				global.flag[421] = 1;
				scr_speaker("noelle");
				msgsetloc(0, "\\E2* (Wh-what does that mean???)/", "scr_text_slash_scr_text_gml_4335_0");
				msgnextloc("\\E2* (There's no good interpretation^1, that's for sure!)/%", "scr_text_slash_scr_text_gml_4336_0");
			}
			break;
		case 1071:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_4341_0");
			global.choicemsg[1] = stringsetloc(" #Talk", "scr_text_slash_scr_text_gml_4342_0");
			global.choicemsg[2] = stringsetloc("Leave", "scr_text_slash_scr_text_gml_4343_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4344_0");
			scr_miniface_init_sweet();
			instance_create(0, 0, obj_moneydisplay);
			msgsetloc(0, "\\m3\t\t*What'll it be^1, chief?&\tI got CD Bagels^1, $80 a pop!/", "scr_text_slash_scr_text_gml_4346_0");
			msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_4347_0");
			break;
		case 1072:
			if (global.choice == 0)
			{
				var can_afford = global.gold >= 80;
				if (can_afford)
				{
					var itemgetstring = scr_itemget_anytype_text(16, "item");
					if (noroom == 0)
					{
						global.gold -= 80;
						scr_miniface_init_sweet();
						msgsetloc(0, "\\m3\t\t*Good eye for music^1!/", "scr_text_slash_scr_text_gml_4360_0");
						snd_play(snd_equip);
						msgnext(itemgetstring);
					}
					else
					{
						scr_miniface_init_sweet();
						msgsetloc(0, "\\m3\t\t*Too much stuff^1, chief^1!&\tIt won't fit^2!&\\m2\tI can't fit either^2./%", "scr_text_slash_scr_text_gml_4366_0");
					}
				}
				else
				{
					scr_miniface_init_sweet();
					msgsetloc(0, "\\m3\t\t*Hey^1, you can't&\tshortchange me^2!&\\m2\tOnly me^2./%", "scr_text_slash_scr_text_gml_4372_0");
				}
			}
			if (global.choice == 1)
			{
				var capntalked = false;
				with (obj_npc_room_animated)
				{
					if (sprite_index == spr_npc_hatguy)
						capntalked = talked > 1;
				}
				if (obj_ch2_room_city_savepoint.con != 50)
				{
					if (scr_havechar(4))
					{
						scr_miniface_init_sweet();
						msgsetloc(0, "\\m3\t\t*And who is that^1, ahem^1,& madimoyzel^2?&\\m1\tLeave her alone^1, Cap^2!/", "scr_text_slash_scr_text_gml_4392_0");
						msgnextloc("\\m3\t\t*Nice radio antenna you& got there..^2.&\\m1\tThose are antlers^1, Cap^2!/", "scr_text_slash_scr_text_gml_4393_0");
						msgnextloc("\\m3\t\t*H-huh!? I^1, uhh..^1. hmm^2.&\\m3\t.../", "scr_text_slash_scr_text_gml_4394_0");
						msgnextloc("\\m2\t\t*Let's play her a song!/%", "scr_text_slash_scr_text_gml_4395_0");
					}
					else
					{
						scr_miniface_init_sweet();
						msgsetloc(0, "\\m3\t\t*..^1. so where's the moyzel^2?&\\m1\tHuh!? She's kidnapped!/", "scr_text_slash_scr_text_gml_4399_0");
						msgnextloc("\\m1\t\t*That's awful..^2.&\\m3\tThat sucks..^2.&\\m2\t.../", "scr_text_slash_scr_text_gml_4400_0");
						msgnextloc("\\m2\t\t*Let's cheer up!/%", "scr_text_slash_scr_text_gml_4401_0");
					}
					with (obj_ch2_room_city_savepoint)
						con = 10;
				}
				else
				{
					scr_miniface_init_sweet();
					msgsetloc(0, "\\m3\t\t*This music^1, it's nice music^2.&\\m2\tThat's my favorite genre^2./%", "scr_text_slash_scr_text_gml_4408_0");
				}
			}
			if (global.choice == 2)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4413_0");
			break;
		case 1073:
			global.choicemsg[0] = stringsetloc(" #Take", "scr_text_slash_scr_text_gml_4418_0");
			global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_4419_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4420_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4421_0");
			scr_speaker("no_name");
			msgsetloc(0, "* Welcome to Cyber Shoes II!/", "scr_text_slash_scr_text_gml_4423_0");
			msgnextloc("* Free samples!^1! Would you like one!?/", "scr_text_slash_scr_text_gml_4424_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4425_0");
			break;
		case 1074:
			if (global.choice == 0)
			{
				var haveSusie = scr_havechar(2);
				var endSentence = haveSusie ? "/" : "/%";
				if (global.flag[418] == 0)
					global.flag[418] = 1;
				scr_speaker("no_name");
				msgsetsubloc(0, "* (You got a small shoe with a toothpick through it...)~1", endSentence, "scr_text_slash_scr_text_gml_4437_0");
				if (haveSusie)
				{
					scr_speaker("susie");
					msgsetloc(0, "\\EH* (Chomp.)/", "scr_text_slash_scr_text_gml_4442_0");
					msgnextloc("\\E1* Eh^1, it's okay. Let's pass./%", "scr_text_slash_scr_text_gml_4443_0");
				}
			}
			if (global.choice == 1)
			{
				var timesTalked = 0;
				with (obj_npc_room)
				{
					if (sprite_index == spr_npc_addison_blue)
						timesTalked = talked;
				}
				if (timesTalked <= 1)
				{
					var haveNoelle = scr_havechar(4);
					var endSentence = haveNoelle ? "/" : "/%";
					scr_speaker("no_name");
					msgsetsubloc(0, "* You'll never get stronger without a daily dose of shoes!!~1", endSentence, "scr_text_slash_scr_text_gml_4464_0");
					if (haveNoelle)
					{
						scr_speaker("noelle");
						msgsetloc(0, "\\E2* Umm^1, I don't really do..^1. shoes./", "scr_text_slash_scr_text_gml_4469_0");
						msgnextloc("\\E8* (At least not unless they're custom-made...)/%", "scr_text_slash_scr_text_gml_4470_0");
					}
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* You'll never get stronger without a daily dose of shoes!!/%", "scr_text_slash_scr_text_gml_4475_0");
				}
			}
			break;
		case 1075:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_4481_0");
			global.choicemsg[1] = stringsetloc(" #Don't Buy", "scr_text_slash_scr_text_gml_4482_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4483_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4484_0");
			instance_create(0, 0, obj_moneydisplay);
			scr_speaker("no_name");
			msgsetloc(0, "* Clothing Store SALE^1! SALE!/", "scr_text_slash_scr_text_gml_4486_0");
			msgnextloc("* We're selling this for 75`% off! Only 300 Dark Dollars!/", "scr_text_slash_scr_text_gml_4487_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4489_0");
			break;
		case 1076:
			if (global.choice == 0)
			{
				if (global.gold >= 300)
				{
					scr_armorget(16);
					if (noroom == 0)
					{
						global.gold -= 300;
						snd_play(snd_equip);
						if (instance_exists(obj_npc_sign))
							instance_destroy(obj_npc_sign);
						scr_speaker("no_name");
						msgsetloc(0, "* Great doing business with you!!/", "scr_text_slash_scr_text_gml_4517_0");
						msgnextloc("* (It was added to your ARMORS.)/%", "scr_text_slash_scr_text_gml_4534_0_b");
					}
					else
					{
						scr_speaker("no_name");
						msgsetloc(0, "* You are lacking in space or money!/%", "scr_text_slash_scr_text_gml_4522_0");
					}
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* You are lacking in space or money!/%", "scr_text_slash_scr_text_gml_4529_0");
				}
			}
			if (global.choice == 1)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4534_0");
			break;
		case 1077:
			global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_4539_0");
			global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_4540_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4541_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4542_0");
			scr_speaker("no_name");
			instance_create(0, 0, obj_moneydisplay);
			msgsetloc(0, "* This is the HOTTEST tea shop! HOT HOT HOT!^1! 50`% off!/", "scr_text_slash_scr_text_gml_4544_0");
			msgnextloc("* For $100^1, Choose your OWN flavor!!/", "scr_text_slash_scr_text_gml_4546_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4547_0");
			break;
		case 1078:
			if (global.choice == 0)
			{
				var hasroom = false;
				if (scr_itemcheck_inventory_and_pocket(0))
					hasroom = true;
				var canBuy = hasroom && global.gold >= 100;
				if (canBuy)
				{
					global.gold -= 100;
					msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4568_0");
					with (obj_npc_addison_tea)
						con = 0;
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* You lack the money or space to choose a flavor!!/%", "scr_text_slash_scr_text_gml_4574_0");
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* But if you don't choose a flavor^1, who will!?!?/%", "scr_text_slash_scr_text_gml_4580_0");
			}
			break;
		case 1079:
			global.choicemsg[0] = stringsetloc(" #Kris", "scr_text_slash_scr_text_gml_4585_0");
			global.choicemsg[1] = scr_havechar(4) ? stringsetloc(" #Noelle", "scr_text_slash_scr_text_gml_4586_0") : stringsetloc(" #Susie", "scr_text_slash_scr_text_gml_4586_1");
			global.choicemsg[2] = scr_havechar(4) ? stringsetloc(" ", "scr_text_slash_scr_text_gml_4587_0_b") : stringsetloc("Ralsei", "scr_text_slash_scr_text_gml_4587_1");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4588_0");
			scr_speaker("no_name");
			msgsetloc(0, "* OK!^1! Choose your OWN flavor!!/", "scr_text_slash_scr_text_gml_4590_0");
			var choiceAmount = scr_havechar(4) ? "\\C2 " : "\\C3 ";
			msgnext(choiceAmount);
			break;
		case 1080:
			var itemgetstring = stringsetloc("%%", "scr_text_slash_scr_text_gml_4596_0");
			if (global.choice == 0)
				itemgetstring = scr_itemget_anytype_text(18, "item");
			if (global.choice == 1)
			{
				var teaitemid = scr_havechar(4) ? 19 : 21;
				itemgetstring = scr_itemget_anytype_text(teaitemid, "item");
			}
			if (global.choice == 2)
				itemgetstring = scr_itemget_anytype_text(20, "item");
			snd_play(snd_equip);
			msgsetloc(0, "* Okay^1, here you go!/", "scr_text_slash_scr_text_gml_4617_0");
			msgnext(itemgetstring);
			break;
		case 1081:
			global.choicemsg[0] = stringsetloc("#Go Inside", "scr_text_slash_scr_text_gml_4622_0");
			global.choicemsg[1] = stringsetloc("#Don't#go in", "scr_text_slash_scr_text_gml_4623_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4624_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4625_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (The door is unlocked.)/", "scr_text_slash_scr_text_gml_4627_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4628_0");
			break;
		case 1082:
			if (global.choice == 0)
			{
				if (scr_havechar(4))
				{
					scr_speaker("noelle");
					msgsetloc(0, "\\EB* Huh? You want to go in alone...?/", "scr_text_slash_scr_text_gml_4637_0");
					msgnextloc("\\E3* ..^1. okay^1, I'll..^1. I'll just wait here.../", "scr_text_slash_scr_text_gml_4638_0");
					msgnextloc("\\E9* Just^1, um...^1. it's..^1. cr-creepy out here^1, so.../", "scr_text_slash_scr_text_gml_4639_0");
					msgnextloc("\\ED* N-no^1, you can take your time^1! It's okay.../%", "scr_text_slash_scr_text_gml_4640_0");
					with (obj_ch2_room_spamton_shop_exterior)
						con = 10;
				}
				else if (scr_havechar(2))
				{
					scr_speaker("susie");
					msgsetloc(0, "\\E6* What? You wanna go in by yourself...?/", "scr_text_slash_scr_text_gml_4646_0");
					msgnextloc("\\E0* ..^1. whatever. Do what you want./%", "scr_text_slash_scr_text_gml_4647_0");
					with (obj_ch2_room_spamton_shop_exterior)
						con = 10;
				}
				else
				{
					msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4652_0");
					with (obj_ch2_room_spamton_shop_exterior)
						con = 10;
				}
			}
			if (global.choice == 1)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4659_0");
			break;
		case 1083:
			global.choicemsg[0] = stringsetloc("#Give to#Ralsei", "scr_text_slash_scr_text_gml_4664_0");
			global.choicemsg[1] = stringsetloc("#Give to#Susie", "scr_text_slash_scr_text_gml_4665_0");
			global.choicemsg[2] = stringsetloc("Give to Noelle", "scr_text_slash_scr_text_gml_4666_0");
			global.choicemsg[3] = stringsetloc("Give to Berdly", "scr_text_slash_scr_text_gml_4667_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\EJ* ..^1. Oh^1, Kris...? What's that you have there?/", "scr_text_slash_scr_text_gml_4669_0");
			msgnextloc("\\E1* Is that a..^1. gift for someone?/", "scr_text_slash_scr_text_gml_4670_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_4671_0");
			break;
		case 1084:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4677_0");
				with (obj_ch2_city07)
					con = 10;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4683_0");
				with (obj_ch2_city07)
					con = 20;
			}
			if (global.choice == 2)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4689_0");
				with (obj_ch2_city07)
					con = 30;
			}
			if (global.choice == 3)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4695_0");
				with (obj_ch2_city07)
					con = 40;
			}
			break;
		case 1085:
			global.choicemsg[0] = stringsetloc("#We have#a truce", "scr_text_slash_scr_text_gml_4701_0");
			global.choicemsg[1] = stringsetloc("#She is#our enemy", "scr_text_slash_scr_text_gml_4702_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4703_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4704_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\EI* (Kris^1, help me...)/", "scr_text_slash_scr_text_gml_4706_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4707_0");
			break;
		case 1086:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4713_0");
				with (obj_ch2_city07)
					con = 11;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4719_0");
				with (obj_ch2_city07)
					con = 12;
			}
			break;
		case 1087:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_4726_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_4727_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4728_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4729_0");
			scr_speaker("no_name");
			msgsetloc(0, "* It's the bathroom sink./", "scr_text_slash_scr_text_gml_4731_0");
			msgnextloc("* Will you run the tap?/", "scr_text_slash_scr_text_gml_4732_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4733_0");
			break;
		case 1088:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4742_0");
				with (obj_ch2_scene31)
					con = 10;
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Then the tap will be waiting until you choose to run it./%", "scr_text_slash_scr_text_gml_4749_0");
			}
			break;
		case 1089:
			global.choicemsg[0] = stringsetloc("#Noelle", "scr_text_slash_scr_text_gml_4754_0");
			global.choicemsg[1] = stringsetloc("#Ralsei", "scr_text_slash_scr_text_gml_4755_0");
			global.choicemsg[2] = stringsetloc("You", "scr_text_slash_scr_text_gml_4756_0");
			global.choicemsg[3] = stringsetloc("...", "scr_text_slash_scr_text_gml_4757_0");
			scr_speaker("susie");
			msgsetloc(0, "\\EA* But say you had to^1, uh^1, take someone./", "scr_text_slash_scr_text_gml_4759_0");
			msgnextloc("\\E2* Noelle..^1. or Ralsei?/", "scr_text_slash_scr_text_gml_4760_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_4761_0");
			break;
		case 1090:
			global.flag[437] = global.choice + 1;
			if (global.choice == 0 || global.choice == 1)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EH* What!? Why are you saying it so confused?/", "scr_text_slash_scr_text_gml_4768_0");
				msgnextloc("\\EK* It's not like I meant anything weird./", "scr_text_slash_scr_text_gml_4769_0");
				msgnextloc("\\EK* You know what^1, forget it./%", "scr_text_slash_scr_text_gml_4770_0");
				with (obj_ch2_scene32)
					con = 10;
			}
			if (global.choice == 2)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E6* H..^1. huh?/", "scr_text_slash_scr_text_gml_4777_0");
				msgnextloc("\\EH* Way to dodge the question^1, dumbass!!/", "scr_text_slash_scr_text_gml_4778_0");
				msgnextloc("\\EK* ..^1. I mean^1, if I went^1, obviously you'd be there too./", "scr_text_slash_scr_text_gml_4777_0_b");
				msgnextloc("\\E2* That goes without saying^1, right?/%", "scr_text_slash_scr_text_gml_4778_0_b");
				with (obj_ch2_scene32)
					con = 10;
			}
			if (global.choice == 3)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EK* What!^1? I was just joking!!/", "scr_text_slash_scr_text_gml_4785_0");
				msgnextloc("\\EH* You don't have to stare at me like a weirdo!/%", "scr_text_slash_scr_text_gml_4786_0");
				with (obj_ch2_scene32)
					con = 10;
			}
			break;
		case 1091:
			global.choicemsg[0] = stringsetloc("I am going#to touch the#cheese", "scr_text_slash_scr_text_gml_4792_0");
			global.choicemsg[1] = stringsetloc("I do not#touch the#cheese", "scr_text_slash_scr_text_gml_4793_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4794_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4795_0");
			if (scr_havechar(4))
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E2* Kris.../", "scr_text_slash_scr_text_gml_4800_0");
				msgnextloc("\\E3* You aren't going to touch that cheese^1, are you?/", "scr_text_slash_scr_text_gml_4801_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4802_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (There's a cheese on the ground.)/", "scr_text_slash_scr_text_gml_4806_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4807_0");
			}
			break;
		case 1092:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You rubbed the cheese down like a beloved pet.)/", "scr_text_slash_scr_text_gml_4815_0");
				msgnextloc("* (Suddenly...!)/%", "scr_text_slash_scr_text_gml_4816_0");
				with (obj_mazecheese)
					con = 1;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4822_0");
				with (obj_mazecheese)
					con = 15;
			}
			break;
		case 1093:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_4828_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_4829_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4830_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4831_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (Looks like the clothes are nibbled. Take a bite?)/", "scr_text_slash_scr_text_gml_4833_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4834_0");
			break;
		case 1094:
			if (global.choice == 0)
			{
				scr_smallface(0, "ralsei", 30, "right", "bottom", stringsetloc("... and Susie?", "scr_text_slash_scr_text_gml_4841_0"));
				scr_speaker("no_name");
				msgsetloc(0, "* (You put your mouth against the mannequin's cheek...)/", "scr_text_slash_scr_text_gml_4843_0");
				scr_anyface_next("ralsei", "U");
				msgnextloc("\\EU* K..^1. K...^1. Kris!?!??/", "scr_text_slash_scr_text_gml_4845_0");
				scr_anyface_next("susie", 4);
				msgnextloc("\\E4* Don't bother. It tastes awful.\\f0/%", "scr_text_slash_scr_text_gml_4847_0");
			}
			if (global.choice == 1)
			{
				scr_smallface(0, "ralsei", 30, "right", "bottom", stringsetloc("... Susie?", "scr_text_slash_scr_text_gml_4852_0"));
				scr_speaker("susie");
				msgsetloc(0, "\\E4* Don't bother. It tastes awful.\\f0/%", "scr_text_slash_scr_text_gml_4854_0");
			}
			break;
		case 1099:
			global.choicemsg[0] = (room == room_dw_castle_cafe) ? stringsetloc("#Check#Recruits", "scr_text_slash_scr_text_gml_4930_0") : stringsetloc("#Prize", "scr_text_slash_scr_text_gml_4931_0");
			global.choicemsg[1] = (room == room_dw_castle_cafe) ? stringsetloc("#Prize", "scr_text_slash_scr_text_gml_4931_0_b") : stringsetloc("#Nothing", "scr_text_slash_scr_text_gml_4931_1");
			global.choicemsg[2] = (room == room_dw_castle_cafe) ? stringsetloc("Nothing", "scr_text_slash_scr_text_gml_4932_0_b") : " ";
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4933_0_b");
			if (room == room_dw_castle_cafe)
			{
				var timestalked = 0;
				with (obj_npc_room)
				{
					if (sprite_index == spr_topchef)
						timestalked = talked;
				}
				if (timestalked < 1)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Mama Miba!^1! I wanted to run the Bakery^1, but.../", "scr_text_slash_scr_text_gml_4949_0");
					msgnextloc("* Someone is already working there!!/", "scr_text_slash_scr_text_gml_4950_0");
					msgnextloc("* A cafe that serves pastries..^1. What a disgrace.../", "scr_text_slash_scr_text_gml_4951_0");
					msgnextloc("* What sort of humiliating thing will happen next!?/", "scr_text_slash_scr_text_gml_4952_0");
					msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_4953_0");
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Mon amigas^1! Welcome to the bakery..^1. I wish./", "scr_text_slash_scr_text_gml_4957_0");
					msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_4958_0");
				}
			}
			if (room == room_dw_castle_restaurant)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Mama miba!^1! I was rejected from the cafe!^1! What can I do now.../", "scr_text_slash_scr_text_gml_4965_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4966_0");
			}
			break;
		case 1100:
			if (global.choice == 0 && room == room_dw_castle_cafe)
			{
				with (instance_create(0, 0, obj_fusionmenu))
					type = 3;
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_4975_0");
			}
			if ((global.choice == 1 && room == room_dw_castle_cafe) || (global.choice == 0 && room == room_dw_castle_restaurant))
			{
				if (global.flag[253] == 1)
				{
					if (!scr_itemcheck(7) && !scr_itemcheck_pocket(7))
					{
						scr_itemget(7);
						if (noroom == 0)
						{
							if (global.flag[313] == 0)
							{
								scr_speaker("no_name");
								msgsetloc(0, "* Mama miba^1!  You returned my cake to me.../", "scr_text_slash_scr_text_gml_4994_0");
								msgnextloc("* Mwah^1! I will never forget your kindness!!/", "scr_text_slash_scr_text_gml_4995_0");
								msgnextloc("* Every day^1, I will give you dizzying flavors!/", "scr_text_slash_scr_text_gml_4996_0");
								msgnextloc("* Every day^1, the flavors will become stronger!/", "scr_text_slash_scr_text_gml_4997_0");
								msgnextloc("* That's the power of [Baker's Arms]!/", "scr_text_slash_scr_text_gml_4998_0");
								msgnextloc("* (You got Spincake.)/%", "scr_text_slash_scr_text_gml_4999_0");
								global.flag[313] = 1;
							}
							else
							{
								scr_speaker("no_name");
								msgsetloc(0, "* Would you like to take my cake for a spin?/", "scr_text_slash_scr_text_gml_5007_0");
								msgnextloc("* Like night and day^1, the cake and the world revolve!/", "scr_text_slash_scr_text_gml_5008_0");
								msgnextloc("* (You got Spincake.)/", "scr_text_slash_scr_text_gml_5009_0");
								msgnextloc("* Come again another day^1! Haha hiha!/%", "scr_text_slash_scr_text_gml_5010_0");
							}
						}
						else
						{
							scr_speaker("no_name");
							msgsetloc(0, "* Mozzarella^1! You are carrying too many items^1! No cake for you!/%", "scr_text_slash_scr_text_gml_5015_0");
						}
					}
					else
					{
						scr_speaker("no_name");
						msgsetloc(0, "* I can only generate one Spincake at a time./", "scr_text_slash_scr_text_gml_5023_0");
						msgnextloc("* Please finish your cake and I will give you another!/%", "scr_text_slash_scr_text_gml_5024_0");
					}
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Mama mina^1! As long as ze purple girl is by your side!/", "scr_text_slash_scr_text_gml_5031_0");
					msgnextloc("* There will be no prizes from moi..^1. ma-mia!/", "scr_text_slash_scr_text_gml_5032_0");
					scr_anyface_next("susie", "0");
					msgnextloc("\\E0* Who cares? Ralsei can make me a cake./", "scr_text_slash_scr_text_gml_5034_0");
					scr_anyface_next("no_name", 0);
					msgnextloc("* B..^1. But my uniqueness..^1. as a baker...!!!/", "scr_text_slash_scr_text_gml_5036_0");
					msgnextloc("* (Sniff) D-don't mind my pastries^1, are a little extra salty today^1, everyone!!/%", "scr_text_slash_scr_text_gml_5037_0");
				}
			}
			if ((global.choice == 2 && room == room_dw_castle_cafe) || (global.choice == 1 && room == room_dw_castle_restaurant))
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5043_0");
			break;
		case 1101:
			global.choicemsg[0] = stringsetloc("#Fuse Items", "scr_text_slash_scr_text_gml_5048_0");
			global.choicemsg[1] = stringsetloc("#Fix Us", "scr_text_slash_scr_text_gml_5049_0");
			global.choicemsg[2] = stringsetloc("Chat", "scr_text_slash_scr_text_gml_5050_0");
			global.choicemsg[3] = stringsetloc("Leave", "scr_text_slash_scr_text_gml_5051_0");
			var timestalked = 0;
			with (obj_npc_hammerguy)
				timestalked = talked;
			if (timestalked == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Well^1, well. Welcome to TOP BAKERY./", "scr_text_slash_scr_text_gml_5062_0");
				msgnextloc("* I am this bakery's smith^1, MALIUS./", "scr_text_slash_scr_text_gml_5063_0");
				msgnextloc("* I do not know what any of these STRANGE TOOLS are for./", "scr_text_slash_scr_text_gml_5064_0");
				msgnextloc("* But using my skills^1, I can FUSE ITEMs to create NEW ONES./", "scr_text_slash_scr_text_gml_5065_0");
				msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5066_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Welcome to TOP BAKERY./", "scr_text_slash_scr_text_gml_5070_0");
				msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5071_0");
			}
			break;
		case 1102:
			if (global.choice == 0)
			{
				with (instance_create(0, 0, obj_fusionmenu))
					type = 1;
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5079_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Your body is a weapon^1, too. You must take care of it from time to time./", "scr_text_slash_scr_text_gml_5085_0");
				msgnextloc("* Huh-hah^1! Let's feel my technique./%", "scr_text_slash_scr_text_gml_5086_0");
				with (obj_npc_hammerguy)
					con = 10;
			}
			if (global.choice == 2)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* BREAD...? What is this technique you speak of?/%", "scr_text_slash_scr_text_gml_5093_0");
			}
			if (global.choice == 3)
			{
				var timestalked = 0;
				with (obj_npc_hammerguy)
					timestalked = talked;
				if (timestalked == 0)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* As your journey continues^1, I will learn new RECIPES^1, so please visit again./%", "scr_text_slash_scr_text_gml_5107_0");
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Good journey^1, my friends./%", "scr_text_slash_scr_text_gml_5111_0");
				}
			}
			break;
		case 1103:
			global.choicemsg[0] = stringsetloc("#Take Cookie", "scr_text_slash_scr_text_gml_5117_0");
			global.choicemsg[1] = stringsetloc("#Do Not", "scr_text_slash_scr_text_gml_5118_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5119_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5120_0");
			var timestalked = 0;
			with (obj_npc_room)
			{
				if (sprite_index == spr_lancer_lt_mustache)
					timestalked = talked;
			}
			if (timestalked == 0)
			{
				scr_smallface(0, "susie", 10, 200, "bottom", stringsetloc("What's the price.", "scr_text_slash_scr_text_gml_5133_0"));
				scr_smallface(1, "lancer", 14, "right", "bottom", stringsetloc("Zero dollars", "scr_text_slash_scr_text_gml_5134_0"));
				scr_speaker("lancer");
				msgsetloc(0, "\\ED* Hoho^1! I am Chef Lancer!/", "scr_text_slash_scr_text_gml_5137_0");
				msgnextloc("\\ED* Try my delicious hand-formed cookies!/", "scr_text_slash_scr_text_gml_5138_0");
				msgnextloc("\\EE* They are free..^1. for a price.\\f0\\f1/", "scr_text_slash_scr_text_gml_5139_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5140_0");
			}
			else
			{
				scr_speaker("lancer");
				msgsetloc(0, "\\EE* Lancer cookies^1! Want one?/", "scr_text_slash_scr_text_gml_5144_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5145_0");
			}
			break;
		case 1104:
			if (global.choice == 0)
			{
				if (scr_itemcheck_inventory_and_pocket(9))
				{
					scr_speaker("lancer");
					msgsetloc(0, "\\ED* You already tookie a cookie!/", "scr_text_slash_scr_text_gml_5156_0");
					msgnextloc("\\ED* Wait^1! I'm still regenerating from the last one./%", "scr_text_slash_scr_text_gml_5157_0");
				}
				else
				{
					var itemgetstring = scr_itemget_anytype_text(9, "item");
					if (noroom == 0)
					{
						scr_speaker("lancer");
						msgsetloc(0, "\\EE* I now pronounce you..^1. cookie and wife./", "scr_text_slash_scr_text_gml_5165_0");
						scr_anyface_next("no_name", 0);
						msgnext(itemgetstring);
					}
					else
					{
						scr_speaker("lancer");
						msgsetloc(0, "\\ED* No room^1! Your pockets are full of un-cookie./", "scr_text_slash_scr_text_gml_5172_0");
						scr_anyface_next("susie", "P");
						msgnextloc("\\EP* The hell'd you let that happen^1, Kris?/%", "scr_text_slash_scr_text_gml_5174_0");
					}
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("lancer");
				msgsetloc(0, "\\ED* Even if you get stronger^1, Lancer Cookies never falter!/", "scr_text_slash_scr_text_gml_5182_0");
				msgnextloc("\\EE* Always reliable^1, they will heal you in times of need!/", "scr_text_slash_scr_text_gml_5183_0");
				scr_anyface_next("ralsei", "K");
				msgnextloc("\\EK* (Maybe if you need to be healed 1 HP...)/%", "scr_text_slash_scr_text_gml_5185_0");
			}
			break;
		case 1105:
			global.choicemsg[0] = stringsetloc("#Grazing", "scr_text_slash_scr_text_gml_5190_0");
			global.choicemsg[1] = stringsetloc("#Hitbox", "scr_text_slash_scr_text_gml_5191_0");
			global.choicemsg[2] = stringsetloc("Hole", "scr_text_slash_scr_text_gml_5192_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_5193_0");
			scr_speaker("no_name");
			msgsetloc(0, "* I'm Battle's Master. Ask me about Battles./", "scr_text_slash_scr_text_gml_5196_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5197_0");
			break;
		case 1106:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				instance_create(camerax(), cameray(), obj_tutorial_graze);
				msgsetloc(0, "* When shots aim directly^1, try to move SLOW./", "scr_text_slash_scr_text_gml_5205_0");
				msgnextloc("* They aim where you WERE^1, not where you GO./", "scr_text_slash_scr_text_gml_5206_0");
				msgnextloc("* Take the advantage and move BIT BY BIT./", "scr_text_slash_scr_text_gml_5207_0");
				msgnextloc("* You'll gain TP but you won't get HIT./%", "scr_text_slash_scr_text_gml_5208_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Shots aren't always AS THEY APPEAR./", "scr_text_slash_scr_text_gml_5214_0");
				msgnextloc("* The bigger they are^1, the LESS TO FEAR./", "scr_text_slash_scr_text_gml_5215_0");
				msgnextloc("* You'll only get hurt a LITTLE INSIDE./", "scr_text_slash_scr_text_gml_5216_0");
				msgnextloc("* Take your pride and LEARN THE SIZE./%", "scr_text_slash_scr_text_gml_5217_0");
			}
			if (global.choice == 2)
			{
				if (global.flag[216] == 0)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* We failed to hit our FUNDING GOAL./", "scr_text_slash_scr_text_gml_5225_0");
					msgnextloc("* I will not talk about OUR HOLE./%", "scr_text_slash_scr_text_gml_5226_0");
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* We reached our monthly FUNDING GOAL./", "scr_text_slash_scr_text_gml_5230_0");
					msgnextloc("* I will now talk about OUR HOLE./", "scr_text_slash_scr_text_gml_5231_0");
					msgnextloc("* It was dark^1, filled with darker dollawers/", "scr_text_slash_scr_text_gml_5232_0");
					msgnextloc("* Fed from subscription by our followers/", "scr_text_slash_scr_text_gml_5233_0");
					msgnextloc("* Working hard no bank no lender/", "scr_text_slash_scr_text_gml_5234_0");
					msgnextloc("* We received one unit of legal tender/", "scr_text_slash_scr_text_gml_5235_0");
					msgnextloc("* .../", "scr_text_slash_scr_text_gml_5236_0");
					msgnextloc("* Thanks for donating./%", "scr_text_slash_scr_text_gml_5237_0");
				}
			}
			if (global.choice == 3)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Okay./%", "scr_text_slash_scr_text_gml_5244_0");
			}
			break;
		case 1107:
			global.choicemsg[0] = stringsetloc("#Challenge", "scr_text_slash_scr_text_gml_5249_0");
			global.choicemsg[1] = stringsetloc("#Nothing", "scr_text_slash_scr_text_gml_5250_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5251_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5252_0");
			var timestalked = 0;
			with (obj_npc_dojo)
				timestalked = talked;
			scr_speaker("no_name");
			msgsetloc(0, "* Hey^1, boss^1! How can I help ya!?/", "scr_text_slash_scr_text_gml_5279_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5280_0");
			if (global.flag[431] == 0)
			{
				global.flag[431] = 1;
				msgsetloc(0, "* Hey^1, boss^1! Boss!/", "scr_text_slash_scr_text_gml_5263_0");
				msgnextloc("\\M1* Heh^1, I'm so glad to have a nice boss^1, I could shed a tear.../", "scr_text_slash_scr_text_gml_5265_0");
				msgnextloc("\\M2* BUT I WON'T!^1! I'm on the job!^1! I'll cry at home!^1! With the kids!!/", "scr_text_slash_scr_text_gml_5267_0");
				msgnextloc("\\M0* Boss^1! You're strong^1, but there's always time to learn!/", "scr_text_slash_scr_text_gml_5269_0");
				msgnextloc("* The next step after tutorials^1, is TRAINING!/", "scr_text_slash_scr_text_gml_5270_0");
				msgnextloc("* So^1, me and the boys got you together a DOJO!/", "scr_text_slash_scr_text_gml_5271_0");
				msgnextloc("* Complete our BATTLE CHALLENGES^1, and get some fabulous prizes!/", "scr_text_slash_scr_text_gml_5272_0");
				msgnextloc("* Meanwhile^1, ya might get a little bit tougher!/", "scr_text_slash_scr_text_gml_5273_0");
				msgnextloc("* We're gonna make you the strongest^1, Boss!/", "scr_text_slash_scr_text_gml_5274_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5275_0");
			}
			if (global.flag[810] == 2 && global.flag[811] == 2 && global.flag[812] == 2 && global.flag[813] == 2 && global.flag[814] == 2)
			{
				msgsetloc(0, "* Congratulations Boss^1! You defeated all the challenges!/", "scr_text_slash_scr_text_gml_5227_0");
				msgnextloc("* I have nothing more to teach or give you. But you're welcome to get some practice in!/", "scr_text_slash_scr_text_gml_5228_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5229_0");
			}
			break;
		case 1108:
			if (global.choice == 0)
			{
				with (instance_create(0, 0, obj_fusionmenu))
					type = 2;
				scr_speaker("no_name");
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5290_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* We'll be working on NEW CHALLENGES^1, so check back in^1, Boss!/%", "scr_text_slash_scr_text_gml_5296_0");
				if (global.flag[810] == 2 && global.flag[811] == 2 && global.flag[812] == 2 && global.flag[813] == 2 && global.flag[814] == 2)
					msgsetloc(0, "* No worries^1, Boss^1! We'll always be here./%", "scr_text_slash_scr_text_gml_5252_0_b");
			}
			break;
		case 1109:
			global.choicemsg[0] = stringsetloc("#Join", "scr_text_slash_scr_text_gml_5301_0");
			global.choicemsg[1] = stringsetloc("#Do not join", "scr_text_slash_scr_text_gml_5302_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5303_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5304_0");
			scr_speaker("berdly");
			msgsetloc(0, "\\E1* Now^1, Kris!/", "scr_text_slash_scr_text_gml_5307_0");
			msgnextloc("\\E5* I must admit^1, I feel pity for you./", "scr_text_slash_scr_text_gml_5308_0");
			msgnextloc("\\EE* Unlike Susie^1, I always saw some potential in you./", "scr_text_slash_scr_text_gml_5309_0");
			msgnextloc("\\E6* Join our side^1, and I might let you scrub our royal toilet!/", "scr_text_slash_scr_text_gml_5310_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5311_0");
			break;
		case 1110:
			if (global.choice == 0)
			{
				scr_speaker("berdly");
				msgsetloc(0, "\\EB* What!? Don't say it so incredulously!/", "scr_text_slash_scr_text_gml_5318_0");
				msgnextloc("\\EC* Well^1, if you're dead-set on proving your inferiority.../%", "scr_text_slash_scr_text_gml_5319_0");
				with (obj_ch2_scene11a)
					con = 10;
			}
			if (global.choice == 1)
			{
				scr_speaker("berdly");
				msgsetloc(0, "\\E7* Ah^1, Kris. I suppose I knew you would never amount to much./", "scr_text_slash_scr_text_gml_5327_0");
				msgnextloc("\\EI* Well^1, if you're dead-set on proving your inferiority.../%", "scr_text_slash_scr_text_gml_5328_0");
				with (obj_ch2_scene11a)
					con = 10;
			}
			break;
		case 1111:
			global.choicemsg[0] = stringsetloc("#I feel#the same", "scr_text_slash_scr_text_gml_5335_0");
			global.choicemsg[1] = stringsetloc("#It's strange", "scr_text_slash_scr_text_gml_5336_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5337_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5338_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\EI* ..^1. is it s-strange to say.../", "scr_text_slash_scr_text_gml_5341_0");
			msgnextloc("\\E1\\M0* It's nice spending time alone with you like this...?/", "scr_text_slash_scr_text_gml_5342_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5343_0");
			break;
		case 1112:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5349_0");
				with (obj_ch2_scene21_loop)
					con = 15;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5355_0");
				with (obj_ch2_scene21_loop)
					con = 15;
			}
			break;
		case 1113:
			var thinkingof = stringsetloc("", "scr_text_slash_scr_text_gml_5361_0");
			if (global.flag[307] == 2)
				thinkingof = stringsetloc("Susie", "scr_text_slash_scr_text_gml_5362_0");
			if (global.flag[307] == 3)
				thinkingof = stringsetloc("Noelle", "scr_text_slash_scr_text_gml_5363_0");
			if (global.flag[307] == 4)
				thinkingof = stringsetloc("Berdly", "scr_text_slash_scr_text_gml_5364_0");
			global.choicemsg[0] = stringsetsubloc("#Thinking#of ~1", thinkingof, "scr_text_slash_scr_text_gml_5366_0");
			global.choicemsg[1] = stringsetloc("#Thinking#of you", "scr_text_slash_scr_text_gml_5367_0");
			global.choicemsg[2] = stringsetloc("?", "scr_text_slash_scr_text_gml_5368_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5369_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\E2* ..^1. what are you thinking about right now?/", "scr_text_slash_scr_text_gml_5372_0");
			msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_5373_0");
			break;
		case 1114:
			if (global.choice == 0 || global.choice == 1 || global.choice == 2)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5379_0");
				with (obj_ch2_scene21_loop)
					con = 20;
			}
			break;
		case 1115:
			global.choicemsg[0] = stringsetloc("It's nice#that Ralsei#is Ralsei", "scr_text_slash_scr_text_gml_5385_0");
			global.choicemsg[1] = stringsetloc("#...", "scr_text_slash_scr_text_gml_5386_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5387_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5388_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\E1* And of course^1, Kris. It's nice that..^1. you're you./", "scr_text_slash_scr_text_gml_5391_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5392_0");
			break;
		case 1116:
			if (global.choice == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\ED* H..^1. huh???/", "scr_text_slash_scr_text_gml_5399_0");
				msgnextloc("\\E1* No one's..^1. no one's ever said that to me before.../", "scr_text_slash_scr_text_gml_5400_0");
				msgnextloc("\\EO* I..^1. I.../", "scr_text_slash_scr_text_gml_5401_0");
				msgnextloc("\\E1* I mean^1, e-everything's a first for me^1, but.../", "scr_text_slash_scr_text_gml_5402_0");
				msgnextloc("\\EO* Hearing it from you^1, um.../", "scr_text_slash_scr_text_gml_5403_0");
				msgnextloc("\\E1* It..^1. it means a lot. Haha./%", "scr_text_slash_scr_text_gml_5404_0");
				with (obj_ch2_scene21_loop)
					con = 28;
			}
			if (global.choice == 1)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\ED* ...?/", "scr_text_slash_scr_text_gml_5412_0");
				msgnextloc("\\EQ* It's..^1. just like you to be quiet right now./", "scr_text_slash_scr_text_gml_5413_0");
				msgnextloc("\\EP* Haha...^1. hahaha!!!/", "scr_text_slash_scr_text_gml_5414_0");
				msgnextloc("\\E1* That's right^1, isn't it?/", "scr_text_slash_scr_text_gml_5415_0");
				msgnextloc("\\E2* It's so..^1. you-like!!/", "scr_text_slash_scr_text_gml_5416_0");
				msgnextloc("\\E1* .../", "scr_text_slash_scr_text_gml_5417_0");
				msgnextloc("\\E2* ..^1. I guess I like you-like things..^1. haha./%", "scr_text_slash_scr_text_gml_5418_0");
				with (obj_ch2_scene21_loop)
					con = 28;
			}
			break;
		case 1117:
			global.choicemsg[0] = stringsetloc("#Do not pose", "scr_text_slash_scr_text_gml_5425_0");
			global.choicemsg[1] = stringsetloc("#Hug Ralsei", "scr_text_slash_scr_text_gml_5426_0");
			global.choicemsg[2] = stringsetloc("Peace sign", "scr_text_slash_scr_text_gml_5427_0");
			global.choicemsg[3] = stringsetloc("Rude gesture", "scr_text_slash_scr_text_gml_5428_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\E1* Looks like the ride's almost over^1, Kris.../", "scr_text_slash_scr_text_gml_5431_0");
			msgnextloc("\\EJ* O-oh^1, there's a camera^1! Should we^1, um..^1. pose!?/", "scr_text_slash_scr_text_gml_5432_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5433_0");
			break;
		case 1118:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5439_0");
				with (obj_ch2_scene21_loop)
					photocon = 1;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5445_0");
				with (obj_ch2_scene21_loop)
					photocon = 2;
			}
			if (global.choice == 2)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5451_0");
				with (obj_ch2_scene21_loop)
					photocon = 3;
			}
			if (global.choice == 3)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5457_0");
				with (obj_ch2_scene21_loop)
					photocon = 4;
			}
			break;
		case 1119:
			global.choicemsg[0] = stringsetloc("#Dark World", "scr_text_slash_scr_text_gml_5463_0");
			global.choicemsg[1] = stringsetloc("#Evil Queen's#Castle", "scr_text_slash_scr_text_gml_5464_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5465_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5466_0");
			scr_speaker("susie");
			msgsetloc(0, "* Uhhh^1, it's uhhh..../", "scr_text_slash_scr_text_gml_5469_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5470_0");
			break;
		case 1120:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5476_0");
				with (obj_ch2_scene23b)
					con = 10;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5482_0");
				with (obj_ch2_scene23b)
					con = 10;
			}
			break;
		case 1121:
			global.choicemsg[0] = stringsetloc("#Point and#hearts come out", "scr_text_slash_scr_text_gml_5488_0");
			global.choicemsg[1] = stringsetloc("#Eat Moss", "scr_text_slash_scr_text_gml_5489_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5490_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5491_0");
			scr_speaker("susie");
			msgsetloc(0, "\\EK* (What..^1. the hell am I supposed to do^1, uh^1, here.)/", "scr_text_slash_scr_text_gml_5494_0");
			msgnextloc("\\EK* (Damn^1, Kris would know what to do!)/", "scr_text_slash_scr_text_gml_5495_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5496_0");
			break;
		case 1122:
			msgsetloc(0, "\\EC* (...Actually^1, uh^1, maybe Kris wouldn't know what to do...)/%", "scr_text_slash_scr_text_gml_5507_0");
			with (obj_ch2_scene23c)
				con = 10;
			break;
		case 1123:
			global.choicemsg[0] = stringsetloc("#Do something#nuts", "scr_text_slash_scr_text_gml_5514_0");
			global.choicemsg[1] = stringsetloc("#Do something#crazy", "scr_text_slash_scr_text_gml_5515_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5516_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5517_0");
			scr_speaker("susie");
			msgsetloc(0, "\\EK* .../", "scr_text_slash_scr_text_gml_5520_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5521_0");
			break;
		case 1124:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5527_0");
				with (obj_ch2_scene23c)
					con = 20;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5533_0");
				with (obj_ch2_scene23c)
					con = 20;
			}
			break;
		case 1125:
			global.choicemsg[0] = stringsetloc("#Say something#romantic", "scr_text_slash_scr_text_gml_5539_0");
			global.choicemsg[1] = stringsetloc("#Say something#cool", "scr_text_slash_scr_text_gml_5540_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5541_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5542_0");
			scr_speaker("susie");
			msgsetloc(0, "\\E6* M..^1. me? Umm.../", "scr_text_slash_scr_text_gml_5545_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5546_0");
			break;
		case 1126:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5552_0");
				with (obj_ch2_scene23c)
					con = 30;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5558_0");
				with (obj_ch2_scene23c)
					con = 30;
			}
			break;
		case 1127:
			global.choicemsg[0] = stringsetloc("#Lie", "scr_text_slash_scr_text_gml_5564_0");
			global.choicemsg[1] = stringsetloc("#Lie", "scr_text_slash_scr_text_gml_5565_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5566_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5567_0");
			scr_speaker("susie");
			msgsetloc(0, "\\EA* Uhhh^1, like^1,/", "scr_text_slash_scr_text_gml_5570_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5571_0");
			break;
		case 1128:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5577_0");
				with (obj_ch2_scene23c)
					con = 40;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5583_0");
				with (obj_ch2_scene23c)
					con = 40;
			}
			break;
		case 1129:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_5589_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_5590_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5591_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5592_0");
			scr_speaker("susie");
			msgsetloc(0, "\\E0* .../", "scr_text_slash_scr_text_gml_5595_0");
			msgnextloc("\\E1* (Kris..^1. you've got goosebumps.)/", "scr_text_slash_scr_text_gml_5596_0");
			msgnextloc("\\EC* (..^1. you ok?)/", "scr_text_slash_scr_text_gml_5597_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5598_0");
			break;
		case 1130:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5604_0");
				with (obj_ch2_sceneex3)
					con = 10;
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5610_0");
				with (obj_ch2_sceneex3)
					con = 20;
			}
			break;
		case 1131:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_5616_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_5617_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5618_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5619_0");
			scr_speaker("no_name");
			msgsetloc(0, "* There's something shining inside the old machine..^1. take it?/", "scr_text_slash_scr_text_gml_5622_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5623_0");
			break;
		case 1132:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (The EmptyDisk was added to your KEY ITEMS.)/%", "scr_text_slash_scr_text_gml_5633_0");
				snd_play(snd_item);
				if (scr_keyitemcheck(10) == 0)
					scr_keyitemget(10);
				with (obj_npc_room_animated)
					instance_destroy();
				with (obj_readable_room1)
					read = 0;
			}
			if (global.choice == 1)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5642_0");
			break;
		case 1133:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_5647_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_5648_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5649_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5650_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (There's a slot for a disk here.)/", "scr_text_slash_scr_text_gml_5653_0");
			msgnextloc("* (Insert the LoadedDisk?)/", "scr_text_slash_scr_text_gml_5654_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5655_0");
			break;
		case 1134:
			if (global.choice == 0)
			{
				scr_tempsave();
				scr_speaker("no_name");
				msgsetloc(0, "* (You put the disk into the broken down mechanism.)/", "scr_text_slash_scr_text_gml_5662_0");
				msgnextloc("* (...)/", "scr_text_slash_scr_text_gml_5663_0");
				msgnextloc("* (Nothing happened.)/%", "scr_text_slash_scr_text_gml_5664_0");
				scr_keyitemremove(11);
				with (obj_ch2_sceneex2_mus)
					con = 10;
				with (obj_npc_room_animated)
					instance_destroy();
				with (obj_readable_room1)
					read = 0;
				global.flag[309] = 8;
			}
			if (global.choice == 1)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5676_0");
			break;
		case 1135:
			global.choicemsg[0] = stringsetloc("#Check#Recruits", "scr_text_slash_scr_text_gml_5681_0");
			global.choicemsg[1] = stringsetloc("#Recommendation", "scr_text_slash_scr_text_gml_5682_0");
			global.choicemsg[2] = stringsetloc("Exit", "scr_text_slash_scr_text_gml_5683_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5684_0");
			if (global.flag[464] == 0)
			{
				global.flag[464] = 1;
				if (global.flag[636] == 1)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Good evening^1, boss./", "scr_text_slash_scr_text_gml_5700_0");
					msgnextloc("* We found a strange hooligan trying to turn the cafe.../", "scr_text_slash_scr_text_gml_5701_0");
					msgnextloc("* Into a second bakery./", "scr_text_slash_scr_text_gml_5702_0");
					msgnextloc("* He was spinning and crying as my men carried him out./", "scr_text_slash_scr_text_gml_5703_0");
					msgnextloc("* We do not predict any further difficulties./", "scr_text_slash_scr_text_gml_5704_0");
					msgnextloc("* Now^1, please. You've worked hard^1, boss. Relax and enjoy yourself.../", "scr_text_slash_scr_text_gml_5705_0");
					msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_5706_0");
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* Good evening^1, boss./", "scr_text_slash_scr_text_gml_5710_0");
					msgnextloc("* I found a strange hooligan trying to turn the cafe.../", "scr_text_slash_scr_text_gml_5711_0");
					msgnextloc("* Into a second bakery./", "scr_text_slash_scr_text_gml_5712_0");
					msgnextloc("* It was a cruel struggle^1, but I managed to remove him./", "scr_text_slash_scr_text_gml_5713_0");
					msgnextloc("* ..^1. If only my men were here.../", "scr_text_slash_scr_text_gml_5714_0");
					msgnextloc("* My apologies. This is no time to reminisce./", "scr_text_slash_scr_text_gml_5715_0");
					msgnextloc("* Now^1, please. You've worked hard^1, boss. Relax and enjoy yourself.../", "scr_text_slash_scr_text_gml_5716_0");
					msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_5717_0");
				}
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Good evening^1, boss^1. Please^1, relax and enjoy yourself.../", "scr_text_slash_scr_text_gml_5722_0");
				msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_5723_0");
			}
			break;
		case 1136:
			if (global.choice == 0)
			{
				with (instance_create(0, 0, obj_fusionmenu))
					type = 3;
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5732_0");
			}
			if (global.choice == 1)
			{
				var party_count = 0;
				party[party_count] = "kris";
				if (scr_havechar(2))
				{
					party_count++;
					party[party_count] = "susie";
				}
				if (scr_havechar(3))
				{
					party_count++;
					party[party_count] = "ralsei";
				}
				if (scr_havechar(4))
				{
					party_count++;
					party[party_count] = "noelle";
				}
				randomize();
				var response = party[irandom(party_count)];
				if (response == "kris")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* For the young human^1, we recommend a chocolate blueberry latte.../", "scr_text_slash_scr_text_gml_5765_0");
					msgnextloc("* Boss^1, please try not to use all of the sugar./%", "scr_text_slash_scr_text_gml_5766_0");
				}
				else if (response == "susie")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* For the young monster^1, we recommend the blackberry tart.../", "scr_text_slash_scr_text_gml_5770_0");
					msgnextloc("* This way^1, even if you eat it quickly^1, you won't notice the stains./%", "scr_text_slash_scr_text_gml_5771_0_b");
				}
				else if (response == "ralsei")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* For the young prince^1, we recommend the vanilla green tea./", "scr_text_slash_scr_text_gml_5775_0");
					msgnextloc("* ..^1. There's not much to go off besides your color./%", "scr_text_slash_scr_text_gml_5776_0");
				}
				else if (response == "noelle")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* For the young deer^1, we recommend the cinnamon eggnog./", "scr_text_slash_scr_text_gml_5780_0");
					msgnextloc("* We've shaved candy cane on top for extra flavor./%", "scr_text_slash_scr_text_gml_5781_0");
				}
			}
			if (global.choice == 2)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_5787_0");
			break;
		case 1140:
			scr_speaker("noone");
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_5798_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_5799_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5800_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5801_0");
			msgsetloc(0, "* Just in time for your appointment./", "scr_text_slash_scr_text_gml_5802_0");
			msgnextloc("* Would you assist in organizing these paintings?/", "scr_text_slash_scr_text_gml_5803_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5804_0");
			break;
		case 1141:
			global.choicemsg[0] = stringsetloc("#Left", "scr_text_slash_scr_text_gml_5811_0");
			global.choicemsg[1] = stringsetloc("#Right", "scr_text_slash_scr_text_gml_5812_0");
			global.choicemsg[2] = stringsetloc("Top", "scr_text_slash_scr_text_gml_5813_0");
			global.choicemsg[3] = stringsetloc("Bottom", "scr_text_slash_scr_text_gml_5814_0");
			scr_speaker("noone");
			if (global.choice == 0)
			{
				msgsetloc(0, "* How refined./", "scr_text_slash_scr_text_gml_5819_0");
				msgnextloc("* Then^1, the first question./", "scr_text_slash_scr_text_gml_5820_0");
				msgnextloc("* Which painting's name is first alphabetically?/", "scr_text_slash_scr_text_gml_5821_0");
				msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5822_0");
			}
			if (global.choice == 1)
			{
				msgsetloc(0, "* How disobedient./", "scr_text_slash_scr_text_gml_5826_0");
				msgnextloc("* Someone ought to whip you into shape!/%", "scr_text_slash_scr_text_gml_5827_0");
				if (instance_exists(obj_npc_tasquemanager))
					obj_npc_tasquemanager.con = 1;
			}
			break;
		case 1142:
			global.choicemsg[0] = stringsetloc("#Left", "scr_text_slash_scr_text_gml_5836_0");
			global.choicemsg[1] = stringsetloc("#Right", "scr_text_slash_scr_text_gml_5837_0");
			global.choicemsg[2] = stringsetloc("Top", "scr_text_slash_scr_text_gml_5838_0");
			global.choicemsg[3] = stringsetloc("Bottom", "scr_text_slash_scr_text_gml_5839_0");
			scr_speaker("noone");
			if (global.choice == 0)
			{
				msgsetloc(0, "* How refined./", "scr_text_slash_scr_text_gml_5844_0");
				msgnextloc("* Then^1, the next question./", "scr_text_slash_scr_text_gml_5845_0");
				msgnextloc("* Which painting's name is third alphabetically?/", "scr_text_slash_scr_text_gml_5846_0");
				msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5847_0");
			}
			if (global.choice == 1 || global.choice == 2 || global.choice == 3)
			{
				msgsetloc(0, "* Incorrect. It seems your organization is lacking./", "scr_text_slash_scr_text_gml_5853_0");
				msgnextloc("* Someone ought to whip you into shape!/%", "scr_text_slash_scr_text_gml_5854_0");
				if (instance_exists(obj_npc_tasquemanager))
					obj_npc_tasquemanager.con = 1;
			}
			break;
		case 1143:
			global.choicemsg[0] = stringsetloc("#Left", "scr_text_slash_scr_text_gml_5863_0");
			global.choicemsg[1] = stringsetloc("#Right", "scr_text_slash_scr_text_gml_5864_0");
			global.choicemsg[2] = stringsetloc("Top", "scr_text_slash_scr_text_gml_5865_0");
			global.choicemsg[3] = stringsetloc("Bottom", "scr_text_slash_scr_text_gml_5866_0");
			scr_speaker("noone");
			if (global.choice == 3)
			{
				msgsetloc(0, "* How refined./", "scr_text_slash_scr_text_gml_5871_0");
				msgnextloc("* Then^1, the next question./", "scr_text_slash_scr_text_gml_5872_0");
				msgnextloc("* Which painting is fourth?/", "scr_text_slash_scr_text_gml_5873_0");
				msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_5874_0");
			}
			if (global.choice == 1 || global.choice == 2 || global.choice == 0)
			{
				msgsetloc(0, "* Incorrect. It seems your organization is lacking./", "scr_text_slash_scr_text_gml_5880_0");
				msgnextloc("* Someone ought to whip you into shape!/%", "scr_text_slash_scr_text_gml_5881_0");
				if (instance_exists(obj_npc_tasquemanager))
					obj_npc_tasquemanager.con = 1;
			}
			break;
		case 1144:
			scr_speaker("noone");
			if (global.choice == 0)
			{
				global.flag[419] = 1;
				msgsetloc(0, "* That's correct!/", "scr_text_slash_scr_text_gml_5892_0");
				msgnextloc("* I'm so happy I could whip something!/%", "scr_text_slash_scr_text_gml_5893_0");
				if (instance_exists(obj_npc_tasquemanager))
					obj_npc_tasquemanager.con = 1;
			}
			if (global.choice == 1)
			{
				global.flag[419] = 2;
				msgsetloc(0, "* Hm? That's the number 2^1, not the number 4.../", "scr_text_slash_scr_text_gml_5899_0");
				msgnextloc("* Have you gotten disorganized? Someone ought to whip you into shape!/%", "scr_text_slash_scr_text_gml_5900_0");
				if (instance_exists(obj_npc_tasquemanager))
					obj_npc_tasquemanager.con = 1;
			}
			if (global.choice == 3 || global.choice == 2)
			{
				msgsetloc(0, "* Incorrect. It seems your organization is lacking./", "scr_text_slash_scr_text_gml_5906_0");
				msgnextloc("* Someone ought to whip you into shape!/%", "scr_text_slash_scr_text_gml_5907_0");
				if (instance_exists(obj_npc_tasquemanager))
					obj_npc_tasquemanager.con = 1;
			}
			break;
		case 1145:
			global.choicemsg[0] = stringsetloc("#Buy", "scr_text_slash_scr_text_gml_5915_0");
			global.choicemsg[1] = stringsetloc("#Don't Buy", "scr_text_slash_scr_text_gml_5916_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5917_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5918_0");
			instance_create(0, 0, obj_moneydisplay);
			var capntalked = false;
			with (obj_npc_room_animated)
			{
				if (sprite_index == spr_npc_hatguy)
					capntalked = talked > 0;
			}
			scr_miniface_init_sweet();
			if (!capntalked)
			{
				scr_speaker("no_name");
				msgsetloc(0, "\\m3\t\t*Yo^1, (snicker)^1, it's hard work&\tbeing Queen's minion^1,&\tain't it?/", "scr_text_slash_scr_text_gml_5935_0");
				msgnextloc("\\m3\t\t*Why don't you take a break and&\tgrab a snack?/", "scr_text_slash_scr_text_gml_5936_0");
				msgnextloc("\\m3\t\t*Ultra seedy CD Bagels^1, only&\t$400 each!/", "scr_text_slash_scr_text_gml_5937_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5938_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "\\m3\t\t*Wanna buy a CD bagel!? Only&\t$400 each!/", "scr_text_slash_scr_text_gml_5942_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_5943_0");
			}
			break;
		case 1146:
			if (global.choice == 0)
			{
				var can_afford = global.gold >= 400;
				if (can_afford)
				{
					var itemgetstring = scr_itemget_anytype_text(16, "item");
					if (noroom == 0)
					{
						global.gold -= 400;
						scr_miniface_init_sweet();
						scr_speaker("no_name");
						msgsetloc(0, "\\m3\t\t*Pleasure doin' business with&\tya^1! ..^1. (snicker)/", "scr_text_slash_scr_text_gml_5959_0");
						snd_play(snd_equip);
						msgnext(itemgetstring);
					}
					else
					{
						scr_speaker("no_name");
						msgsetloc(0, "\\m3\t\t*Hey^1, you don't have any room./", "scr_text_slash_scr_text_gml_5965_0");
						msgnextloc("\\m3\t\t*What^1, took too many bribes?/%", "scr_text_slash_scr_text_gml_5966_0");
					}
				}
				else
				{
					scr_miniface_init_sweet();
					scr_speaker("no_name");
					msgsetloc(0, "\\m3\t\t*What!? Too expensive!?/", "scr_text_slash_scr_text_gml_5972_0");
					msgnextloc("\\m3\t\t*Well too bad^1! You're not gonna&\tget a better deal anywhere&\telse!/%", "scr_text_slash_scr_text_gml_5973_0");
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "\\m3\t\t*Huh? C'mon^1, you can't survive&\toff the air she breathes!/", "scr_text_slash_scr_text_gml_5980_0");
				msgnextloc("\\m3\t\t*Believe me^1, I've tried^1!&\t..^1. what?/%", "scr_text_slash_scr_text_gml_5981_0");
			}
			break;
		case 1147:
			global.choicemsg[0] = stringsetloc("#Buy 400 bagels", "scr_text_slash_scr_text_gml_5986_0");
			global.choicemsg[1] = stringsetloc("#Buy 1 bagel", "scr_text_slash_scr_text_gml_5987_0");
			global.choicemsg[2] = stringsetloc("Don't Buy", "scr_text_slash_scr_text_gml_5988_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_5989_0");
			instance_create(0, 0, obj_moneydisplay);
			var kktalked = false;
			with (obj_npc_room_animated)
			{
				if (sprite_index == spr_npc_kk)
					kktalked = talked > 0;
			}
			scr_miniface_init_sweet();
			if (!kktalked)
			{
				scr_speaker("no_name");
				msgsetloc(0, "\\m2\t\t*Want to buy a bagel? Only $80.&\\m3\tK_K^1, no^1! It's 400^1! 400!/", "scr_text_slash_scr_text_gml_6006_0");
				msgnextloc("\\m2\t\t*Got it./", "scr_text_slash_scr_text_gml_6007_0");
				msgnextloc("\\m2\t\t*Want to buy 400 bagels?&\tOnly $80./", "scr_text_slash_scr_text_gml_6008_0");
				msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_6009_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "\\m2\t\t*One bagel^1, $80. 400 bagels^1,&\t$80./", "scr_text_slash_scr_text_gml_6013_0");
				msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_6014_0");
			}
			break;
		case 1148:
			if (global.choice == 0)
			{
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_6026_0");
				with (obj_npc_musical_door)
					con = 1;
			}
			if (global.choice == 1)
			{
				scr_itemget(16);
				if (noroom == 0)
				{
					global.flag[354]++;
					if (global.gold >= 80)
					{
						global.gold -= 80;
						snd_play(snd_equip);
						scr_speaker("no_name");
						msgsetloc(0, "* (You paid $80 for a bagel.)/", "scr_text_slash_scr_text_gml_6043_0");
						msgnextloc("\\m2\t\t*Can I have one^1, too?&\\m3\tYou're selling them!/%", "scr_text_slash_scr_text_gml_6044_0");
					}
					else
					{
						scr_speaker("k_k");
						msgsetloc(0, "\\m2\t\t*You can't afford it? Don't&\tworry^1, this one's on me!/", "scr_text_slash_scr_text_gml_6049_0");
						scr_anyface_next("no_name", 0);
						msgnextloc("* (You got a bagel.)/%", "scr_text_slash_scr_text_gml_6051_0");
						snd_play(snd_equip);
					}
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "\\m3\t\t*No room for a bagel!&\\m2\tWhat about the hole?/%", "scr_text_slash_scr_text_gml_6056_0");
				}
			}
			if (global.choice == 2)
			{
				scr_speaker("k_k");
				msgsetloc(0, "\\m2\t\t*That's OK. I haven't bought&\tone either./%", "scr_text_slash_scr_text_gml_6063_0");
			}
			break;
		case 1149:
			global.choicemsg[0] = stringsetloc("#Look in#the back", "scr_text_slash_scr_text_gml_6068_0");
			global.choicemsg[1] = stringsetloc("#Look inside", "scr_text_slash_scr_text_gml_6069_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6070_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6071_0");
			scr_speaker("no_name");
			msgsetloc(0, "* How To Care For A Human/", "scr_text_slash_scr_text_gml_6074_0");
			msgnextloc("* (It's a book for monsters on how to care for humans.)/", "scr_text_slash_scr_text_gml_6075_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6076_0");
			break;
		case 1150:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (According to the card in the back...)/", "scr_text_slash_scr_text_gml_6083_0");
				msgnextloc("* (..^1. looks like your mother took it out repeatedly many years ago.)/%", "scr_text_slash_scr_text_gml_6084_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (There are photos of unfamiliar humans inside.)/", "scr_text_slash_scr_text_gml_6090_0");
				msgnextloc("* (You shut the book quickly.)/%", "scr_text_slash_scr_text_gml_6091_0");
			}
			break;
		case 1151:
			global.choicemsg[0] = stringsetloc("#Read", "scr_text_slash_scr_text_gml_6097_0");
			global.choicemsg[1] = stringsetloc("#Don't", "scr_text_slash_scr_text_gml_6098_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6099_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6100_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's Book 1 about SOULS. Read it?)/", "scr_text_slash_scr_text_gml_6103_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6104_0");
			break;
		case 1152:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* The SOUL has long been called many things./", "scr_text_slash_scr_text_gml_6111_0");
				msgnextloc("* The font of our compassion. The source of our will./", "scr_text_slash_scr_text_gml_6112_0");
				msgnextloc("* The container of our \"life force.\"/", "scr_text_slash_scr_text_gml_6113_0");
				msgnextloc("* But even now^1, the true function of it is unknown./%", "scr_text_slash_scr_text_gml_6114_0");
			}
			if (global.choice == 1)
				msgsetloc(0, "%%", "scr_text_slash_scr_text_gml_6119_0");
			break;
		case 1153:
			global.choicemsg[0] = stringsetloc("#Occupation", "scr_text_slash_scr_text_gml_6124_0");
			global.choicemsg[1] = stringsetloc("#See brother", "scr_text_slash_scr_text_gml_6125_0");
			global.choicemsg[2] = stringsetloc("Buy things", "scr_text_slash_scr_text_gml_6126_0");
			global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_6127_0");
			scr_speaker("sans");
			msgsetloc(0, "* hey^1, what's up?/", "scr_text_slash_scr_text_gml_6130_0");
			msgnextloc("\\C4 ", "scr_text_slash_scr_text_gml_6131_0");
			break;
		case 1154:
			if (global.choice == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E0* Hey^1, you the boss around here?/", "scr_text_slash_scr_text_gml_6138_0");
				scr_anyface_next("sans", 0);
				msgnextloc("* me? i'm just the janitor./", "scr_text_slash_scr_text_gml_6140_0");
				scr_anyface_next("susie", "K");
				msgnextloc("\\EK* Then where's the cashier?/", "scr_text_slash_scr_text_gml_6142_0");
				scr_anyface_next("sans", "2");
				msgnextloc("\\E2* cashier? we don't have one./", "scr_text_slash_scr_text_gml_6144_0");
				scr_anyface_next("susie", 5);
				msgnextloc("\\E5* Then who do we buy stuff from!?/", "scr_text_slash_scr_text_gml_6146_0");
				scr_anyface_next("sans", 0);
				msgnextloc("* me./", "scr_text_slash_scr_text_gml_6148_0");
				scr_anyface_next("susie", "H");
				msgnextloc("\\EH* Then that makes you the cashier./", "scr_text_slash_scr_text_gml_6150_0");
				scr_anyface_next("sans", "5");
				msgnextloc("\\E5* nope: i'm the janitor./", "scr_text_slash_scr_text_gml_6152_0");
				msgnextloc("\\E2* i'm just filling in./", "scr_text_slash_scr_text_gml_6153_0");
				scr_anyface_next("susie", 5);
				msgnextloc("\\E5* Are there any other employees?/", "scr_text_slash_scr_text_gml_6155_0");
				scr_anyface_next("sans", 0);
				msgnextloc("* nope./", "scr_text_slash_scr_text_gml_6157_0");
				scr_anyface_next("susie", "H");
				msgnextloc("\\EH* Then why don't you hire someone else!?/", "scr_text_slash_scr_text_gml_6159_0");
				scr_anyface_next("sans", "5");
				msgnextloc("\\E5* woah^1, you think i can afford that on a janitor's salary?/%", "scr_text_slash_scr_text_gml_6161_0");
			}
			if (global.choice == 1)
			{
				var timestalked = 0;
				with (obj_npc_conbini)
					timestalked = talked;
				if (timestalked == 1)
				{
					var paptalk = global.flag[273] == 2;
					if (!paptalk && global.is_console)
						paptalk = global.game_won;
					if (paptalk)
					{
						global.flag[451] = 1;
						scr_speaker("sans");
						msgsetloc(0, "\\E2* by the way. about my brother.../", "scr_text_slash_scr_text_gml_6170_0");
						msgnextloc("\\E1* looks like you won't be able to meet him today./", "scr_text_slash_scr_text_gml_6171_0");
						msgnextloc("\\E2* yeah^1, it's a bummer when things don't work out./", "scr_text_slash_scr_text_gml_6172_0");
						msgnextloc("\\E0* sorry about that./", "scr_text_slash_scr_text_gml_6173_0");
						msgnextloc("\\E2* i'm sure you'll meet him someday./", "scr_text_slash_scr_text_gml_6174_0");
						msgnextloc("\\E5* maybe around when your brother comes home?/%", "scr_text_slash_scr_text_gml_6175_0");
					}
					else
					{
						scr_speaker("sans");
						msgsetloc(0, "* brother...?/", "scr_text_slash_scr_text_gml_6187_0");
						msgnextloc("\\E2* what are you talking about?/", "scr_text_slash_scr_text_gml_6188_0");
						msgnextloc("\\E1* .../", "scr_text_slash_scr_text_gml_6189_0");
						msgnextloc("\\E1* ..^1. i don't have a brother./", "scr_text_slash_scr_text_gml_6190_0");
						msgnextloc("\\E5* haha^1, just messin' with ya. i totally do./", "scr_text_slash_scr_text_gml_6191_0");
						msgnextloc("\\E2* ..^1. though^1, to be honest.../", "scr_text_slash_scr_text_gml_6192_0");
						msgnextloc("\\E0* i never mentioned him to you^1, did i?/", "scr_text_slash_scr_text_gml_6193_0");
						msgnextloc("\\E2* ..^1. not gonna lie. a little weird you asked./", "scr_text_slash_scr_text_gml_6194_0");
						msgnextloc("\\E0* i'd never let my brother hang out with a stranger./", "scr_text_slash_scr_text_gml_6195_0");
						msgnextloc("\\E2* especially not alone^1, or in my house./", "scr_text_slash_scr_text_gml_6196_0");
						msgnextloc("\\E0* that's way too irresponsible./", "scr_text_slash_scr_text_gml_6197_0");
						msgnextloc("\\E5* try to have some self-awareness^1, ok?/", "scr_text_slash_scr_text_gml_6198_0");
						msgnextloc("\\E2* meanwhile^1, i'll ask what his schedule is./%", "scr_text_slash_scr_text_gml_6199_0");
					}
				}
				else
				{
					scr_speaker("sans");
					msgsetloc(0, "* sorry^1, kid. the brother thing's gonna have to wait./", "scr_text_slash_scr_text_gml_6203_0");
					msgnextloc("\\E2* how long?/", "scr_text_slash_scr_text_gml_6204_0");
					msgnextloc("\\E3* maybe a day..^1. maybe another 2 years./", "scr_text_slash_scr_text_gml_6205_0");
					msgnextloc("\\E5* who's keeping track at this point?/%", "scr_text_slash_scr_text_gml_6206_0");
				}
			}
			if (global.choice == 2)
			{
				scr_speaker("sans");
				msgsetloc(0, "\\E2* hey. welcome to the convenience store./", "scr_text_slash_scr_text_gml_6214_0");
				msgnextloc("* you wanna buy something^1, put it in a \\cYbasket\\c0 and bring it here./", "scr_text_slash_scr_text_gml_6215_0");
				msgnextloc("\\E5* in case you didn't know what a store was./%", "scr_text_slash_scr_text_gml_6216_0");
			}
			if (global.choice == 3)
			{
				scr_speaker("sans");
				msgsetloc(0, "\\E5* take it easy./%", "scr_text_slash_scr_text_gml_6222_0");
			}
			break;
		case 1155:
			global.choicemsg[0] = stringsetloc("#Play", "scr_text_slash_scr_text_gml_6227_0");
			global.choicemsg[1] = stringsetloc("#Do Not", "scr_text_slash_scr_text_gml_6228_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6229_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6230_0");
			scr_speaker("susie");
			msgsetloc(0, "\\E6* Woah^1, Kris^1, you can play the piano?/", "scr_text_slash_scr_text_gml_6233_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6234_0");
			break;
		case 1156:
			if (global.choice == 0)
			{
				snd_play(snd_pianonoise);
				scr_speaker("no_name");
				msgsetloc(0, "* (Plink...)/", "scr_text_slash_scr_text_gml_6243_0");
				scr_anyface_next("susie", "Y");
				msgnextloc("\\EY* Hahaha^1! Almost thought you were serious for a sec!/", "scr_text_slash_scr_text_gml_6245_0");
				msgnextloc("\\EK* (..^1. what's with that pissed off look?)/%", "scr_text_slash_scr_text_gml_6246_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E0* ..^1. damn. Got kinda hyped for a sec./%", "scr_text_slash_scr_text_gml_6252_0");
			}
			break;
		case 1157:
			global.choicemsg[0] = stringsetloc("#Give chocolate", "scr_text_slash_scr_text_gml_6257_0");
			global.choicemsg[1] = stringsetloc("#Hoard chocolate", "scr_text_slash_scr_text_gml_6258_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6259_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6260_0");
			scr_speaker("alphys");
			msgsetloc(0, "\\E3* ..^1. Huh? Kris? Do you have something for me?/", "scr_text_slash_scr_text_gml_6263_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6264_0");
			break;
		case 1158:
			if (global.choice == 0)
			{
				global.flag[342] = 3;
				scr_litemremove(10);
				scr_speaker("alphys");
				msgsetloc(0, "\\E3* H..^1. huh...? Kris...? What is that you're giving me...?/", "scr_text_slash_scr_text_gml_6274_0");
				msgnextloc("\\E4* A..^1. a box of..^1. heart shaped ch..^1. chocolates?/", "scr_text_slash_scr_text_gml_6275_0");
				msgnextloc("\\E9* W-woah^1, woah^1, no!^1! I c-can't accept that from YOU!!/", "scr_text_slash_scr_text_gml_6276_0");
				msgnextloc("\\E7* ..^1. What? It's from the..^1. police?/", "scr_text_slash_scr_text_gml_6277_0");
				msgnextloc("\\EB* You mean sh..^1. SHE's giving me this..^1. um.../", "scr_text_slash_scr_text_gml_6278_0");
				msgnextloc("\\E3* Um..^1. Get well soon? Gift? To my bike?/", "scr_text_slash_scr_text_gml_6279_0");
				msgnextloc("\\E9* A-and um^1, there's a note on this that says^1,/", "scr_text_slash_scr_text_gml_6280_0");
				msgnextloc("\\E4* \"Open this and I'll arrest you^1, you little punk.\"/", "scr_text_slash_scr_text_gml_6281_0");
				msgnextloc("\\E3* Kris^1, I.../", "scr_text_slash_scr_text_gml_6282_0");
				msgnextloc("\\E4* T..^1. Tell her I..^1. uh^1, appreciate it?/%", "scr_text_slash_scr_text_gml_6283_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("alphys");
				msgsetloc(0, "\\EB* Umm^1, okay^1, ehehe. Don't know why I thought that./%", "scr_text_slash_scr_text_gml_6289_0");
			}
			break;
		case 1159:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6294_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6295_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6296_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6297_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's someone's diary. Read it?)/", "scr_text_slash_scr_text_gml_6300_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6301_0");
			break;
		case 1160:
			if (global.choice == 0)
			{
				scr_speaker("napstablook");
				msgsetloc(0, "* (oh no..^1. someone else's been taking out my diary...)/", "scr_text_slash_scr_text_gml_6308_0");
				msgnextloc("* (oh no..^1. they're printing a review in the paper...)/", "scr_text_slash_scr_text_gml_6309_0");
				msgnextloc("* (oh no..^1. i'm being highly acclaimed...)/%", "scr_text_slash_scr_text_gml_6310_0");
			}
			if (global.choice == 1)
				global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_6315_0");
			break;
		case 1161:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6323_0");
			global.choicemsg[1] = stringsetloc("#Nooooo", "scr_text_slash_scr_text_gml_6324_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6325_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6326_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E2* Kris!^1! Stay on the switch^1! Stay^1! Stay!/", "scr_text_slash_scr_text_gml_6328_0");
			msgnextloc("\\E8* ..^1. gosh^1, do you need a dog treat or something?/", "scr_text_slash_scr_text_gml_6329_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6330_0");
			break;
		case 1162:
			scr_speaker("noelle");
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E2* (..^1. why did they sound so genuine?)/%", "scr_text_slash_scr_text_gml_6340_0");
				if (instance_exists(obj_controller_dw_city_big_2))
					obj_controller_dw_city_big_2.con = 70;
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E8* Gosh^1, stop howling^1, I get it!/%", "scr_text_slash_scr_text_gml_6347_0");
				if (instance_exists(obj_controller_dw_city_big_2))
					obj_controller_dw_city_big_2.con = 70;
			}
			break;
		case 1163:
			global.choicemsg[0] = stringsetloc("#It's horrible", "scr_text_slash_scr_text_gml_6358_0");
			global.choicemsg[1] = stringsetloc("#It's natural", "scr_text_slash_scr_text_gml_6359_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6360_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6361_0");
			scr_speaker("noelle");
			scr_speaker("noelle");
			msgsetloc(0, "\\E4* (..^1. See^1, Noelle? Nothing bad is going to happen.)/", "scr_text_slash_scr_text_gml_6329_0_b");
			msgnextloc("\\Ed* (Getting that ring..^1. was good^1, wasn't it?)/", "scr_text_slash_scr_text_gml_6330_0_b");
			msgnextloc("\\Ee* (So..^1. stop thinking about it.)/", "scr_text_slash_scr_text_gml_6331_0");
			msgnextloc("\\EW* (Stop thinking about stepping off the switch..^1. and...)/", "scr_text_slash_scr_text_gml_6332_0");
			msgnextloc("\\EZ* (Letting Kris get...)/", "scr_text_slash_scr_text_gml_6333_0");
			msgnextloc("\\EW* (Noelle^1, no^1, don't think that^1! It's horrible...)/", "scr_text_slash_scr_text_gml_6334_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6370_0");
			break;
		case 1164:
			scr_speaker("noelle");
			msgsetloc(0, "\\EB* K-Kris...^1? What are you talking about!?/", "scr_text_slash_scr_text_gml_6378_0");
			msgnextloc("\\EB* (I..^1. I must have said that out loud...?)/%", "scr_text_slash_scr_text_gml_6379_0");
			if (instance_exists(obj_controller_dw_city_big_2))
				obj_controller_dw_city_big_2.con = 14;
			break;
		case 1165:
			global.choicemsg[0] = stringsetloc("#Seems a little#far fetched", "scr_text_slash_scr_text_gml_6387_0");
			global.choicemsg[1] = stringsetloc("#Yeah let's#do it", "scr_text_slash_scr_text_gml_6388_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6389_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6390_0");
			scr_speaker("susie");
			msgsetloc(0, "\\EA* I mean^1, we'd be unstoppable^1, is what I'm saying./", "scr_text_slash_scr_text_gml_6393_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6394_0");
			break;
		case 1166:
			if (global.choice == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EH* What?^1! C'mon^1, it'd be easy!/", "scr_text_slash_scr_text_gml_6401_0");
				msgnextloc("\\EK* Ralsei looks like your mom^1, right?/", "scr_text_slash_scr_text_gml_6402_0");
				msgnextloc("\\E2* Just say he's a long lost cousin^1! It'd be easy!/", "scr_text_slash_scr_text_gml_6403_0");
				msgnextloc("\\E7* Lancer can even make him a fake mustache!/%", "scr_text_slash_scr_text_gml_6404_0");
				with (obj_ch2_scene32)
					con = 5;
			}
			if (global.choice == 1)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E9* Yeah^1, that's the attitude!/", "scr_text_slash_scr_text_gml_6412_0");
				msgnextloc("\\EK* Ugh^1, what if Ralsei became a teacher's pet^1, though?/", "scr_text_slash_scr_text_gml_6413_0");
				msgnextloc("\\E2* Or^1, not if. Just feels like a matter of time^1, honestly./", "scr_text_slash_scr_text_gml_6414_0");
				msgnextloc("\\EA* Well^1, whatever. As long as he brings ME an apple^1, too./", "scr_text_slash_scr_text_gml_6415_0");
				msgnextloc("\\E6* .../", "scr_text_slash_scr_text_gml_6416_0");
				msgnextloc("\\E7* What? Apple shampoo? No^1, I didn't drink any of that./%", "scr_text_slash_scr_text_gml_6417_0");
				with (obj_ch2_scene32)
					con = 5;
			}
			break;
		case 1167:
			global.choicemsg[0] = stringsetloc("#Of course", "scr_text_slash_scr_text_gml_6424_0");
			global.choicemsg[1] = stringsetloc("#Of course not", "scr_text_slash_scr_text_gml_6425_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6426_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6427_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\E1* Kris^1, do you think of me as your lackey...?/", "scr_text_slash_scr_text_gml_6430_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6431_0");
			break;
		case 1168:
			if (global.choice == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\E2* R-really? I'm..^1. I'm happy to hear that!/", "scr_text_slash_scr_text_gml_6438_0");
				msgnextloc("\\EH* (I've never been someone's lackey before...)/%", "scr_text_slash_scr_text_gml_6439_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\EK* H-huh...? Y-you mean.../", "scr_text_slash_scr_text_gml_6445_0");
				msgnextloc("\\EH* (Y-you think of me as more than a lackey...?)/%", "scr_text_slash_scr_text_gml_6446_0");
			}
			break;
		case 1169:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6451_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6452_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6453_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6454_0");
			scr_speaker("spamton");
			msgsetloc(0, "* [Angel]^1, [Angel]/", "scr_text_slash_scr_text_gml_6457_0");
			msgnextloc("* ARE YOU LOOKING FOR THE [Ring] of [Thorns]?/", "scr_text_slash_scr_text_gml_6458_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6459_0");
			break;
		case 1170:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_6465_0");
				if (instance_exists(obj_npc_dumpster))
				{
					with (obj_npc_dumpster)
						con = 0;
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("spamton");
				msgsetloc(0, "* THEN [[Why]] GO TO A DUMPSTER!!!/%", "scr_text_slash_scr_text_gml_6475_0");
			}
			break;
		case 1171:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6480_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6481_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6482_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6483_0");
			scr_speaker("spamton");
			msgsetloc(0, "* THat'll be 1997 KROMER./", "scr_text_slash_scr_text_gml_6486_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6487_0");
			break;
		case 1172:
			if (global.choice == 0)
			{
				if (global.gold >= 1997)
				{
					scr_weaponget(13);
					if (noroom == 0)
					{
						global.gold -= 1997;
						snd_play(snd_spamton_laugh);
						snd_play(snd_equip);
						global.writersnd[1] = snd_item;
						scr_speaker("spamton");
						msgsetloc(0, "* HERE'S YOUR [Ring]^1! CAREFUL^1, IT MIGHT [Sting]&* EAHEAHEAH/", "scr_text_slash_scr_text_gml_6503_0");
						msgnextloc("\\S1* (You got the ThornRing.)/%", "scr_text_slash_scr_text_gml_6504_0");
						with (obj_event_manager)
							trigger_event((0 << 0), (27 << 0));
					}
					else
					{
						snd_play(snd_escaped);
						scr_speaker("spamton");
						msgsetloc(0, "* LET ME CHECK YOUR [Pockets]/", "scr_text_slash_scr_text_gml_6509_0");
						msgnextloc("* WOW^1, NICE AND SPACIOUS!!/", "scr_text_slash_scr_text_gml_6510_0");
						msgnextloc("* PERFECT FOR [City Livin']/", "scr_text_slash_scr_text_gml_6511_0");
						msgnextloc("* HOW CAN YOU [Afford] THIS!?!?!/", "scr_text_slash_scr_text_gml_6512_0");
						msgnextloc("* ..^1. YET THERE'S NO ROOM FOR A [Ring]/", "scr_text_slash_scr_text_gml_6513_0");
						msgnextloc("* THERE'S A [Boy]^1, BUT THERE'S NO ROOM FOR A [Ring]/%", "scr_text_slash_scr_text_gml_6514_0");
					}
				}
				else
				{
					scr_speaker("spamton");
					msgsetloc(0, "* [Money] NO/%", "scr_text_slash_scr_text_gml_6519_0");
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("spamton");
				msgsetloc(0, "* BUT IT WAS SUCH A GOOD YEAR./%", "scr_text_slash_scr_text_gml_6526_0");
			}
			break;
		case 1173:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6531_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6532_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6533_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6534_0");
			scr_speaker("no_name");
			msgsetloc(0, "* Well^1, there is a man here./", "scr_text_slash_scr_text_gml_6537_0");
			msgnextloc("* He might be happy to see you./", "scr_text_slash_scr_text_gml_6538_0");
			msgnextloc("* What do you think?/", "scr_text_slash_scr_text_gml_6539_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6540_0");
			break;
		case 1174:
			global.flag[917] = 3;
			if (global.choice == 0)
			{
				global.flag[918] = 1;
				scr_speaker("no_name");
				msgsetloc(0, "* You got the Egg./%", "scr_text_slash_scr_text_gml_6548_0");
				snd_play(snd_egg);
				scr_keyitemget(2);
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Well^1, there was not a man here./%", "scr_text_slash_scr_text_gml_6556_0");
			}
			break;
		case 1175:
			global.choicemsg[0] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_6561_0");
			global.choicemsg[1] = stringsetloc("I'm#protecting#her from you!", "scr_text_slash_scr_text_gml_6562_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6563_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6564_0");
			scr_speaker("berdly");
			msgsetloc(0, "\\EN* Getting stronger..^1. how^1?&* Kris^1, what are you doing!?/", "scr_text_slash_scr_text_gml_6567_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6568_0");
			break;
		case 1176:
			if (global.choice == 0)
			{
				global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_6574_0");
				if (instance_exists(obj_ch2_city_berdly))
				{
					with (obj_ch2_city_berdly)
						con = 12;
				}
			}
			if (global.choice == 1)
			{
				global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_6583_0");
				if (instance_exists(obj_ch2_city_berdly))
				{
					with (obj_ch2_city_berdly)
						con = 14;
				}
			}
			break;
		case 1177:
			global.choicemsg[0] = stringsetloc("#Gaming is#my life", "scr_text_slash_scr_text_gml_6592_0");
			global.choicemsg[1] = stringsetloc("#Gaming is#not my life", "scr_text_slash_scr_text_gml_6593_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6594_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6595_0");
			scr_speaker("ralsei");
			msgsetloc(0, "\\E2* Kris^1, I bet you're very good at games^1, aren't you?/", "scr_text_slash_scr_text_gml_6598_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6599_0");
			break;
		case 1178:
			if (global.choice == 0)
			{
				scr_smallface(0, "susie", 0, "middle", "bottom", stringsetloc("(... That was the most monotone\nresponse I've heard in my life?)", "scr_text_slash_scr_text_gml_6605_0"));
				scr_speaker("ralsei");
				msgsetloc(0, "\\EJ* W-wow^1, Kris^1! Your passion is amazing!!\\f0/%", "scr_text_slash_scr_text_gml_6608_0");
			}
			if (global.choice == 1)
			{
				scr_smallface(0, "queen", 1, "mid", "bottom", stringsetloc("Think Ahead You Will After I Enslave You", "scr_text_slash_scr_text_gml_6613_0"));
				scr_speaker("queen");
				msgsetloc(0, "* If You Aren't Enthusiastic I Won't Want To Enslave You/", "scr_text_slash_scr_text_gml_6616_0");
				scr_anyface_next("ralsei", "X");
				msgnextloc("\\EX* We don't want that...\\f0/%", "scr_text_slash_scr_text_gml_6618_0");
			}
			break;
		case 1183:
			global.choicemsg[0] = stringsetloc("#They like you", "scr_text_slash_scr_text_gml_6703_0");
			global.choicemsg[1] = stringsetloc("#Unknown", "scr_text_slash_scr_text_gml_6704_0");
			global.choicemsg[2] = stringsetloc("Yes", "scr_text_slash_scr_text_gml_6705_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6706_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E3* Wh-why do those mice keep attacking me?!/", "scr_text_slash_scr_text_gml_6709_0");
			msgnextloc("\\E8* What do I look like^1, the girl from the Nutcracker?/", "scr_text_slash_scr_text_gml_6710_0");
			msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_6711_0");
			break;
		case 1184:
			if (global.choice == 0)
			{
				global.flag[415] = 1;
				scr_speaker("noelle");
				msgsetloc(0, "\\E2* H-huh? No way^1! If that's the case.../", "scr_text_slash_scr_text_gml_6718_0");
				msgnextloc("\\E4* Get them to just give me a lunchbox instead!/%", "scr_text_slash_scr_text_gml_6719_0");
			}
			if (global.choice == 1)
			{
				global.flag[415] = 2;
				scr_speaker("noelle");
				msgsetloc(0, "\\E1* (Only Kris would say \"unknown\"^1, not \"I don't know.\")/", "scr_text_slash_scr_text_gml_6725_0");
				msgnextloc("\\E3* (..^1. then keep standing there like that.)/", "scr_text_slash_scr_text_gml_6726_0");
				msgnextloc("\\E0* (...)/", "scr_text_slash_scr_text_gml_6727_0");
				msgnextloc("\\E2* (Are they waiting for me to stop mumbling?)/%", "scr_text_slash_scr_text_gml_6728_0");
			}
			if (global.choice == 2)
			{
				global.flag[415] = 3;
				scr_speaker("noelle");
				msgsetloc(0, "\\E3* Then^1, Kris..^1. m-maybe you can take your sword.../", "scr_text_slash_scr_text_gml_6734_0");
				msgnextloc("\\E4* And be the hero that protects me from the mice?/", "scr_text_slash_scr_text_gml_6735_0");
				msgnextloc("\\E4* (...)/", "scr_text_slash_scr_text_gml_6736_0");
				msgnextloc("\\E2* (Don't just stand there in silence...)/%", "scr_text_slash_scr_text_gml_6737_0");
			}
			break;
		case 1185:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6742_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6743_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6744_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6745_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (Use the communication device?)/", "scr_text_slash_scr_text_gml_6748_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6749_0");
			break;
		case 1186:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You put your whole head inside and honked.)/", "scr_text_slash_scr_text_gml_6756_0");
				scr_anyface_next("susie", 17);
				msgnextloc("\\EH* Kris!? The hell are you doing!?/", "scr_text_slash_scr_text_gml_6758_0");
				msgnextloc("\\E7* Huh? Trying to fit your head inside? Yeah^1, me t-/", "scr_text_slash_scr_text_gml_6759_0");
				msgnextloc("\\EH* HEY!^1! WE DON'T HAVE TIME FOR THIS!!/%", "scr_text_slash_scr_text_gml_6760_0");
			}
			if (global.choice == 1)
				msgset(0, "%%");
			break;
		case 1187:
			c_msgsetloc(0, "\\EH* Don't try to run away^1, you little.../%", "scr_text_slash_scr_text_gml_6771_0");
			break;
		case 1188:
			c_msgsetloc(0, "\\E5* HEY^1, WAIT A SEC!/%", "scr_text_slash_scr_text_gml_6777_0");
			break;
		case 1189:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6782_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6783_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6784_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6785_0");
			var lightner_name = stringsetloc("BURGHLEY I MEAN BERDLY", "scr_text_slash_scr_text_gml_6787_0");
			if (lightner_door == "catty")
				lightner_name = stringsetloc("CATTY'S ROOM", "scr_text_slash_scr_text_gml_6788_0");
			if (lightner_door == "jockington")
				lightner_name = stringsetloc("JOCKINGTON'S ROOM", "scr_text_slash_scr_text_gml_6789_0");
			if (lightner_door == "asriel")
				lightner_name = stringsetloc("ASRIEL'S ROOM", "scr_text_slash_scr_text_gml_6790_0");
			var lightner_prompt = stringsetsubloc("* (The nameplate reads ~1. Peek inside?)/", lightner_name, "scr_text_slash_scr_text_gml_6792_0");
			scr_speaker("no_name");
			msgset(0, lightner_prompt);
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6796_0");
			break;
		case 1190:
			var l_door = "";
			with (obj_readable_room1)
			{
				if (myinteract == 3)
					l_door = lightner_door;
			}
			if (global.choice == 0)
			{
				if (l_door == "berdly")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (..^1. What you saw surprised you.  ..^1. sort of.)/%", "scr_text_slash_scr_text_gml_6814_0");
				}
				else if (l_door == "catty")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (It's wallpapered with the pink cat ad from the city. It's animated^1, too.)/%", "scr_text_slash_scr_text_gml_6818_0");
				}
				else if (l_door == "jockington")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (..^1. it's beautiful.)/%", "scr_text_slash_scr_text_gml_6822_0");
				}
				else if (l_door == "asriel")
				{
					if (scr_havechar(2))
					{
						scr_speaker("susie");
						msgsetloc(0, "\\E9* HAHAHA!^1! Kris^1, who's room is THIS!?/", "scr_text_slash_scr_text_gml_6828_0");
						msgnextloc("\\E6* ..^1. huh? Your brother?/", "scr_text_slash_scr_text_gml_6829_0");
						msgnextloc("\\EY* HAHAHA!!^1! Man^1, you better hope I never meet him...!/%", "scr_text_slash_scr_text_gml_6830_0");
					}
					else
					{
						scr_speaker("no_name");
						msgsetloc(0, "* (You opened the door with your eyes closed. You saw nothing.)/%", "scr_text_slash_scr_text_gml_6834_0");
					}
				}
			}
			if (global.choice == 1)
			{
				if (l_door == "berdly")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (You respected the Gamer's Code. No screen peeking.)/%", "scr_text_slash_scr_text_gml_6844_0");
				}
				else if (l_door == "catty")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (You can smell the glittery cat food from here anyway.)/%", "scr_text_slash_scr_text_gml_6848_0");
				}
				else if (l_door == "jockington")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (You feel like Noelle would enjoy this more.)/%", "scr_text_slash_scr_text_gml_6852_0");
				}
				else if (l_door == "asriel")
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (You have the feeling you wouldn't learn anything.)/%", "scr_text_slash_scr_text_gml_6856_0");
				}
			}
			break;
		case 1191:
			global.choicemsg[0] = stringsetloc("#I will ride#with you", "scr_text_slash_scr_text_gml_6862_0");
			global.choicemsg[1] = stringsetloc("#Susie wouldn't", "scr_text_slash_scr_text_gml_6863_0");
			global.choicemsg[2] = stringsetloc("Susie would", "scr_text_slash_scr_text_gml_6864_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6865_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's an advertisement for a giant ferris wheel.)/", "scr_text_slash_scr_text_gml_6868_0");
			scr_anyface_next("noelle", 0);
			msgnextloc("\\E0* Gosh^1, that's amazing!/", "scr_text_slash_scr_text_gml_6870_0");
			msgnextloc("\\E4* Makes the one at the festival look like a toy^1, haha!/", "scr_text_slash_scr_text_gml_6871_0");
			msgnextloc("\\E6* I..^1. I wonder if Susie would want to.../", "scr_text_slash_scr_text_gml_6872_0");
			msgnextloc("\\E8* ..^1. Gosh^1, who am I kidding?/", "scr_text_slash_scr_text_gml_6873_0");
			msgnextloc("\\C3 ", "scr_text_slash_scr_text_gml_6874_0");
			break;
		case 1192:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E2* Oh^1, so you can shake it when we reach the top?/", "scr_text_slash_scr_text_gml_6881_0");
				msgnextloc("\\E8* Just like at the festival when we were kids?/", "scr_text_slash_scr_text_gml_6882_0");
				msgnextloc("\\E2* I KNOW there's a catch with you^1, Kris^1! NO thanks!/%", "scr_text_slash_scr_text_gml_6883_0");
				if (scr_sideb_get_phase() > 0)
				{
					with (obj_controller_dw_city_big_2)
						weird_prompt = true;
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E7* Y-you're right^1! Even if I asked her^1, she'd.../", "scr_text_slash_scr_text_gml_6897_0");
				msgnextloc("\\EA* Probably just laugh at me./", "scr_text_slash_scr_text_gml_6898_0");
				msgnextloc("\\E6* And^1, gosh^1, push me to the ground^1, and.../", "scr_text_slash_scr_text_gml_6899_0");
				msgnextloc("\\E6* L-laugh at me some more^1, and then.../", "scr_text_slash_scr_text_gml_6900_0");
				msgnextloc("\\EM* (..^1. What were we talking about again?)/%", "scr_text_slash_scr_text_gml_6901_0");
			}
			if (global.choice == 2)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E6* R-really? Y-you really think so?/", "scr_text_slash_scr_text_gml_6907_0");
				msgnextloc("\\E4* Faha^1, and coming from Susie Expert Kris^1! Thanks!/", "scr_text_slash_scr_text_gml_6908_0");
				msgnextloc("\\E5* .../", "scr_text_slash_scr_text_gml_6909_0");
				msgnextloc("\\E8* (Hey^1, Kris^1, how'd YOU become the Susie Expert!?)/%", "scr_text_slash_scr_text_gml_6910_0");
			}
			break;
		case 1193:
			global.choicemsg[0] = stringsetloc("#Noelle will#ride with me", "scr_text_slash_scr_text_gml_6915_0");
			global.choicemsg[1] = stringsetloc("#Sorry", "scr_text_slash_scr_text_gml_6916_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6917_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6918_0");
			scr_speaker("no_name");
			msgsetloc(0, "\\C2 ", "scr_text_slash_scr_text_gml_6921_0");
			break;
		case 1194:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\EB* ..^1. h..^1. huh?/", "scr_text_slash_scr_text_gml_6928_0");
				msgnextloc("\\ED* I mean..^1. S-sure^1, if you^1, um..^1. really want to!/", "scr_text_slash_scr_text_gml_6929_0");
				msgnextloc("\\E4* You can^1, um^1, make up for when we were kids!/", "scr_text_slash_scr_text_gml_6930_0");
				msgnextloc("\\EB* (... Since when did Kris get so...)/", "scr_text_slash_scr_text_gml_6825_0");
				msgnextloc("\\E4* (N..^1. no way^1, it's gotta be some kind of prank!)/%", "scr_text_slash_scr_text_gml_6827_0");
				global.flag[455] = 1;
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Um^1, it's ok^1, I know you can't help being a goof./", "scr_text_slash_scr_text_gml_6938_0");
				msgnextloc("\\E8* We ALL know you can't help it^1! Fahaha!!/%", "scr_text_slash_scr_text_gml_6939_0");
			}
			break;
		case 1195:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_6944_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_6945_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6946_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_6947_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a bed. Go to sleep?)/", "scr_text_slash_scr_text_gml_6950_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_6951_0");
			break;
		case 1196:
			if (global.choice == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\EQ* K-Kris^1, what if Noelle came in here...?/", "scr_text_slash_scr_text_gml_6958_0");
				scr_anyface_next("susie", 5);
				msgnextloc("\\E5* Yeah^1, what if she has ticks? Get out of there!/%", "scr_text_slash_scr_text_gml_6960_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (It's not your bed anyhow.)/%", "scr_text_slash_scr_text_gml_6966_0");
			}
			break;
		case 1200:
			global.choicemsg[0] = stringsetloc("#Mansion", "scr_text_slash_scr_text_gml_6993_0");
			global.choicemsg[1] = stringsetloc("#Cyber Field", "scr_text_slash_scr_text_gml_6994_0");
			global.choicemsg[2] = stringsetloc("Trash Zone", "scr_text_slash_scr_text_gml_6995_0");
			global.choicemsg[3] = stringsetloc("Cancel", "scr_text_slash_scr_text_gml_6996_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a door.^1)&* (Where will you go?)//", "scr_text_slash_scr_text_gml_6999_0");
			msgnext("\\C4 ");
			break;
		case 1201:
			global.msg[0] = stringsetloc("* (But nothing happened.)/%", "scr_text_slash_scr_text_gml_3104_0");
			if (global.choice == 0)
			{
				with (obj_shortcut_door)
					door_destination = 157;
			}
			if (global.choice == 1)
			{
				with (obj_shortcut_door)
					door_destination = 84;
			}
			if (global.choice == 2)
			{
				with (obj_shortcut_door)
					door_destination = 110;
			}
			if (global.choice == 3)
			{
				global.msg[0] = stringsetloc("* (You doorn't.)/%", "scr_text_slash_scr_text_gml_6918_0_b");
			}
			else
			{
				with (obj_shortcut_door)
				{
					if (door_destination == door_location)
					{
						global.msg[0] = stringsetloc("* (Amazingly^1, you are already there.)/%", "scr_text_slash_scr_text_gml_7026_0");
					}
					else
					{
						global.msg[0] = stringsetloc("* (The door opened...)/%", "scr_text_slash_scr_text_gml_7030_0");
						con = 50;
					}
				}
			}
			break;
		case 1202:
			global.choicemsg[0] = stringsetloc("#Sorry, I'll #do the puzzle", "scr_text_slash_scr_text_gml_7046_0");
			global.choicemsg[1] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_7047_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7048_0_b");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7049_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E2* Kris? Are..^1. you really going to leave me...?/", "scr_text_slash_scr_text_gml_7052_0_b");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7053_0");
			break;
		case 1203:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E3* Th-thanks^1, Kris.../%", "scr_text_slash_scr_text_gml_7062_0");
				obj_mouseSpawnSwitch.backeddown = 1;
				obj_mouseSpawnSwitch.introCon = 8;
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\EB* ..^1. h-huh? What did you say?/", "scr_text_slash_scr_text_gml_7070_0");
				msgnextloc("\\E2* B-but^1, th..^1. the mice.../", "scr_text_slash_scr_text_gml_7071_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7072_0");
			}
			break;
		case 1204:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E3* Th-thanks^1, Kris.../%", "scr_text_slash_scr_text_gml_7082_0");
				obj_mouseSpawnSwitch.backeddown = 1;
				obj_mouseSpawnSwitch.introCon = 8;
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\EB* ..^1. I..^1. I.../", "scr_text_slash_scr_text_gml_7090_0");
				msgnextloc("\\EB* .../%", "scr_text_slash_scr_text_gml_7091_0");
				obj_mouseSpawnSwitch.introCon = 131;
			}
			break;
		case 1205:
			global.choicemsg[0] = stringsetloc("#Let's solve#it together!", "scr_text_slash_scr_text_gml_7099_0");
			global.choicemsg[1] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_7100_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7101_0");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7102_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E3* L..^1. Look^1, Kris^1! Another puzzle!/", "scr_text_slash_scr_text_gml_7104_0");
			msgnextloc("\\E2* H..^1. How should we solve it this time?/", "scr_text_slash_scr_text_gml_6971_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7105_0");
			break;
		case 1206:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y..^1. Yeah^1, you're right^1, Kris!/", "scr_text_slash_scr_text_gml_7114_0");
				msgnextloc("\\E3* (I thought Kris was acting strange^1, but...)/", "scr_text_slash_scr_text_gml_7115_0");
				msgnextloc("\\E2* (I guess it was just another mean joke...?)/%", "scr_text_slash_scr_text_gml_7116_0");
				if (global.flag[915] > 0)
					scr_sideb_fail();
				obj_controller_city_mice2.icon = 999;
			}
			if (global.choice == 1)
			{
				msgset(0, "%%");
				obj_controller_city_mice2.icon = 4;
				obj_controller_city_mice2.timer = 0;
			}
			break;
		case 1207:
			break;
		case 1208:
			global.choicemsg[0] = stringsetloc("#Get it", "scr_text_slash_scr_text_gml_7153_0");
			global.choicemsg[1] = stringsetloc("#We're fine", "scr_text_slash_scr_text_gml_7154_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7155_0");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7156_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E8* (Faha^1, Kris buying ME a ring...? Yeah^1, right!)/", "scr_text_slash_scr_text_gml_7158_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7159_0");
			break;
		case 1209:
			global.choicemsg[0] = stringsetloc("#Get it", "scr_text_slash_scr_text_gml_7166_0");
			global.choicemsg[1] = stringsetloc("#We're fine", "scr_text_slash_scr_text_gml_7167_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7168_0");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7169_0");
			if (global.choice == 0)
			{
				mony = instance_create(x, y, obj_moneydisplay);
				var ringprice = global.gold + 1;
				scr_speaker("noelle");
				msgsetloc(0, "\\EF* H..^1. huh? Kris^1, you'd..^1. buy it for me...?/", "scr_text_slash_scr_text_gml_7176_0");
				msgnextloc("\\E6* Sure^1, I guess..^1. we could ask about it./", "scr_text_slash_scr_text_gml_7177_0");
				msgnextloc("\\E0* How much does it cost?/", "scr_text_slash_scr_text_gml_7178_0");
				scr_anyface_next("no_name", 0);
				msgnextsubloc("* Just a small fee of $~1!/", string(ringprice), "scr_text_slash_scr_text_gml_7180_0");
				scr_anyface_next("noelle", "2");
				msgnextloc("\\E2* Huh? S-sorry^1, we don't have that much money!/", "scr_text_slash_scr_text_gml_7182_0");
				msgnextloc("\\E6* (Still^1, it was nice of Kris to offer...)/", "scr_text_slash_scr_text_gml_7183_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7184_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y-yeah^1, we don't need anything like that./%", "scr_text_slash_scr_text_gml_7189_0");
				obj_weirdEvent_addison_city_big_2.con = 72;
			}
			break;
		case 1210:
			if (global.choice == 0)
			{
				safe_delete(mony);
				scr_speaker("noelle");
				msgsetloc(0, "\\EF* Huh? Me...?/", "scr_text_slash_scr_text_gml_7074_0");
				msgnextloc("\\E8* You..^1. were asking ME to get it?/", "scr_text_slash_scr_text_gml_7075_0");
				msgnextloc("\\E9* Kris^1, c'mon^1, you know we can't afford that.../", "scr_text_slash_scr_text_gml_7076_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7201_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y-yeah^1, we don't need anything like that./%", "scr_text_slash_scr_text_gml_7206_0");
				obj_weirdEvent_addison_city_big_2.con = 72;
			}
			break;
		case 1211:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E2* Wh..^1. what?/", "scr_text_slash_scr_text_gml_7093_0");
				msgnextloc("\\E3* Kris^1, I just told you^1, we..^1. we don't have the money./", "scr_text_slash_scr_text_gml_7094_0");
				msgnextloc("\\E2* What..^1. what are you asking me to do...?/", "scr_text_slash_scr_text_gml_7095_0");
				msgnextloc("\\EB* You..^1. you aren't asking me to just...?/", "scr_text_slash_scr_text_gml_7096_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7218_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y-yeah^1, we don't need anything like that./%", "scr_text_slash_scr_text_gml_7206_0");
				obj_weirdEvent_addison_city_big_2.con = 72;
			}
			break;
		case 1212:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\ED* K-Kris^1, no^1, I..^1. not me^1, I could never.../", "scr_text_slash_scr_text_gml_7217_0");
				msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7218_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y-yeah^1, we don't need anything like that./%", "scr_text_slash_scr_text_gml_7223_0");
				obj_weirdEvent_addison_city_big_2.con = 72;
			}
			break;
		case 1213:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\EC* I.../%", "scr_text_slash_scr_text_gml_7234_0");
				obj_weirdEvent_addison_city_big_2.con = 6;
			}
			if (global.choice == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y-yeah^1, we don't need anything like that./%", "scr_text_slash_scr_text_gml_7240_0");
				obj_weirdEvent_addison_city_big_2.con = 72;
			}
			break;
		case 1215:
			global.choicemsg[0] = stringsetloc("#To see your #father", "scr_text_slash_scr_text_gml_7247_0");
			global.choicemsg[1] = stringsetloc("#To see you", "scr_text_slash_scr_text_gml_7248_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7249_0");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7250_0");
			scr_speaker("noelle");
			global.typer = 63;
			global.fc = 0;
			msgsetloc(0, "* (Come on^1, it..^1. it was just a bad dream...)/", "scr_text_slash_scr_text_gml_7254_0");
			msgnextloc("* (Even so^1, it was so real^1, I can't get it out of my mind...)/", "scr_text_slash_scr_text_gml_7255_0");
			msgnextloc("* (..^1. that voice^1, telling me what to do.)/", "scr_text_slash_scr_text_gml_7256_0");
			msgnextloc("* (A voice unlike Kris's...)/", "scr_text_slash_scr_text_gml_7257_0");
			msgnextloc("* (..^1. a terrifying voice...)/", "scr_text_slash_scr_text_gml_7258_0");
			msgnextloc("* (...)/", "scr_text_slash_scr_text_gml_7259_0");
			msgnextloc("* (Kris...)/", "scr_text_slash_scr_text_gml_7260_0");
			msgnextloc("* (Recently^1, there's been something..^1. different..^1. about them.)/", "scr_text_slash_scr_text_gml_7261_0");
			msgnextloc("* (Why hasn't anyone else noticed it...?)/", "scr_text_slash_scr_text_gml_7262_0");
			msgnextloc("* (I..^1. I have to figure it out.)/", "scr_text_slash_scr_text_gml_7263_0");
			msgnextloc("* (Why Kris is acting so strange...)/", "scr_text_slash_scr_text_gml_7264_0");
			msgnextloc("* (Why they keep coming..^1. to the hospital...)/", "scr_text_slash_scr_text_gml_7265_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7266_0");
			break;
		case 1216:
			scr_speaker("noelle");
			global.typer = 63;
			global.fc = 0;
			msgsetloc(0, "* H-huh!?/", "scr_text_slash_scr_text_gml_7273_0");
			msgnextloc("* K-Kris..^1. how long have you been standing there!?/", "scr_text_slash_scr_text_gml_7274_0");
			msgnextloc("* Phew^1, you..^1. haha^1, you really scared me^1, you know?/", "scr_text_slash_scr_text_gml_7275_0");
			msgnextloc("* (Keep it together^1, Noelle...)/", "scr_text_slash_scr_text_gml_7276_0");
			msgnextloc("* (There's nothing to be afraid of...)/", "scr_text_slash_scr_text_gml_7277_0");
			msgnextloc("* (After all^1, a dream is just a dream^1, right...?)/%", "scr_text_slash_scr_text_gml_7278_0");
			break;
		case 1217:
			global.choicemsg[0] = stringsetloc("", "scr_text_slash_scr_text_gml_7283_0");
			global.choicemsg[1] = stringsetloc("", "scr_text_slash_scr_text_gml_7284_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7285_0");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7286_0");
			scr_speaker("noelle");
			global.typer = 63;
			global.fc = 0;
			if (global.flag[928] < 2)
			{
				if (global.larmor == 14)
				{
					global.choicemsg[0] = stringsetloc("#In your#dream", "scr_text_slash_scr_text_gml_7293_0");
					global.choicemsg[1] = stringsetloc("#...", "scr_text_slash_scr_text_gml_7294_0");
					msgsetloc(0, "* .../", "scr_text_slash_scr_text_gml_7295_0");
					msgnextloc("* Kris...?/", "scr_text_slash_scr_text_gml_7296_0");
					msgnextloc("\\M1* Why are you wearing..^1. my watch?/", "scr_text_slash_scr_text_gml_7297_0");
					msgnextloc("* Wh..^1. when did you.../", "scr_text_slash_scr_text_gml_7298_0");
					msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7299_0");
				}
				else
				{
					global.choicemsg[0] = stringsetloc("Because it#wasn't a#dream", "scr_text_slash_scr_text_gml_7304_0");
					global.choicemsg[1] = stringsetloc("#...", "scr_text_slash_scr_text_gml_7305_0");
					msgsetloc(0, "* (..^1. th-then...)/", "scr_text_slash_scr_text_gml_7306_0");
					msgnextloc("* (Then why did their voice just now..^1. sound...)/", "scr_text_slash_scr_text_gml_7307_0");
					msgnextloc("\\M1* (So terrifying?)/", "scr_text_slash_scr_text_gml_7308_0");
					msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7309_0");
				}
			}
			else
			{
				msgsetloc(0, "\\M1* S-stop^1! Don't come any closer!", "scr_text_slash_scr_text_gml_7247_0_b");
			}
			break;
		case 1218:
			snd_play(snd_dooropen);
			scr_script_delayed(snd_play, 10, snd_doorclose);
			scr_speaker("susie");
			msgsetloc(0, "\\E2\\M0* Hey^1, Kris^1! Let's beat it already./", "scr_text_slash_scr_text_gml_7317_0");
			msgnextloc("\\E0* Man^1, he kept telling me about Noelle^1, like.../", "scr_text_slash_scr_text_gml_7318_0");
			msgnextloc("\\EC* Her favorite things^1, places she'd like to go.../", "scr_text_slash_scr_text_gml_7319_0");
			msgnextloc("\\E1* No idea what the hell that was about./", "scr_text_slash_scr_text_gml_7320_0");
			scr_anyface_next("noelle", "B");
			msgnextloc("\\EB* .../", "scr_text_slash_scr_text_gml_7322_0");
			scr_anyface_next("susie", "K");
			msgnextloc("\\EK* So^1, uh^1, the hell were you two doing?/", "scr_text_slash_scr_text_gml_7324_0");
			scr_anyface_next("noelle", "F");
			msgnextloc("\\EF* O-oh^1, u-um^1, n-nothing^1, Susie!/", "scr_text_slash_scr_text_gml_7326_0");
			msgnextloc("\\ED* I was..^1. I was just about to go home^1! U-umm..^1. see you!/%", "scr_text_slash_scr_text_gml_7327_0");
			break;
		case 1219:
			scr_speaker("susie");
			msgsetloc(0, "\\E0* .../", "scr_text_slash_scr_text_gml_7333_0");
			msgnextloc("\\ED* Guess she's afraid of me again^1, huh.../", "scr_text_slash_scr_text_gml_7334_0");
			msgnextloc("\\E0* Man..^1. would be nice.../", "scr_text_slash_scr_text_gml_7335_0");
			msgnextloc("\\E9* If she knew everything that happened was real^1, huh^1, Kris?/", "scr_text_slash_scr_text_gml_7336_0");
			msgnextloc("\\E9* .../", "scr_text_slash_scr_text_gml_7337_0");
			msgnextloc("\\EK* C'mon^1, try to be a little more enthusiastic. Heh./%", "scr_text_slash_scr_text_gml_7338_0");
			break;
		case 1220:
			global.choicemsg[0] = stringsetloc("#Take", "scr_text_slash_scr_text_gml_7344_0");
			global.choicemsg[1] = stringsetloc("#Do Not", "scr_text_slash_scr_text_gml_7345_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7346_0");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7347_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a box filled with bagels. Take one?)/", "scr_text_slash_scr_text_gml_7350_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7351_0");
			break;
		case 1221:
			if (global.choice == 0)
			{
				if (global.flag[423] < 4)
				{
					snd_play(snd_equip);
					var itemgetstring = scr_itemget_anytype_text(16, "item");
					if (noroom == 0)
						global.flag[423]++;
					scr_speaker("no_name");
					msgset(0, itemgetstring);
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (There aren't any bagels left in the box.)/%", "scr_text_slash_scr_text_gml_7378_0");
					with (obj_npc_room)
						extflag = "left";
				}
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You chose not to take a bagel.)/%", "scr_text_slash_scr_text_gml_7385_0");
				break;
			}
			break;
		case 1222:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7296_0_b");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7297_0_b");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_7335_0_b");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_7336_0_b");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a manhole. There's a ladder leading inside.)/", "scr_text_slash_scr_text_gml_7339_0");
			msgnextloc("* (Enter it?)/", "scr_text_slash_scr_text_gml_7340_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7341_0");
			break;
		case 1223:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You climbed into the manhole...)/%", "scr_text_slash_scr_text_gml_7348_0");
				obj_weirdroute_sewerEntrance.con = 1;
			}
			if (global.choice == 1)
				msgset(0, "%%");
			break;
		case 1224:
			global.choicemsg[0] = stringsetloc("#Sorry, I'll #do the puzzle", "scr_text_slash_scr_text_gml_7046_0");
			global.choicemsg[1] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_7047_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7048_0_b");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7049_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\E3* H..^1. how?/", "scr_text_slash_scr_text_gml_7325_0");
			msgnextloc("\\E2* There's nowhere to go./", "scr_text_slash_scr_text_gml_7326_0_b");
			msgnextloc("\\E3* Kris^1, there's..^1. the path is blocked^1, isn't it?/", "scr_text_slash_scr_text_gml_7327_0_b");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7328_0");
			break;
		case 1225:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y..^1. Yeah^1, you're right^1, Kris!/", "scr_text_slash_scr_text_gml_7114_0");
				msgnextloc("\\E3* (I thought Kris was acting strange^1, but...)/", "scr_text_slash_scr_text_gml_7115_0");
				msgnextloc("\\E2* (I guess it was just another mean joke...?)/%", "scr_text_slash_scr_text_gml_7116_0");
				if (global.flag[915] > 0)
					scr_sideb_fail();
				obj_controller_city_mice2.icon = 999;
			}
			if (global.choice == 1)
			{
				msgset(0, "%%");
				obj_controller_city_mice2.icon = 6;
				obj_controller_city_mice2.timer = 0;
			}
			break;
		case 1226:
			global.choicemsg[0] = stringsetloc("#Sorry, I'll #do the puzzle", "scr_text_slash_scr_text_gml_7046_0");
			global.choicemsg[1] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_7047_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7048_0_b");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7049_0");
			scr_speaker("noelle");
			scr_speaker("noelle");
			msgsetloc(0, "\\EC* Kris..^1. what are you doing?/", "scr_text_slash_scr_text_gml_7359_0");
			msgnextloc("\\ED* Kris^1, is..^1. is everything okay?/", "scr_text_slash_scr_text_gml_7360_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7361_0");
			break;
		case 1227:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y..^1. Yeah^1, you're right^1, Kris!/", "scr_text_slash_scr_text_gml_7114_0");
				msgnextloc("\\E3* (I thought Kris was acting strange^1, but...)/", "scr_text_slash_scr_text_gml_7115_0");
				msgnextloc("\\E2* (I guess it was just another mean joke...?)/%", "scr_text_slash_scr_text_gml_7116_0");
				if (global.flag[915] > 0)
					scr_sideb_fail();
				obj_controller_city_mice2.icon = 999;
			}
			if (global.choice == 1)
			{
				msgset(0, "%%");
				obj_controller_city_mice2.icon = 8;
				obj_controller_city_mice2.timer = 0;
			}
			break;
		case 1228:
			global.choicemsg[0] = stringsetloc("#Sorry, I'll #do the puzzle", "scr_text_slash_scr_text_gml_7046_0");
			global.choicemsg[1] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_7047_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7048_0_b");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7049_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\EC* Kris^1, there's lightning in the way.../", "scr_text_slash_scr_text_gml_7392_0");
			msgnextloc("\\EC* If..^1. if we move any further..^1. I'll be..^1. I'll be.../", "scr_text_slash_scr_text_gml_7393_0");
			msgnextloc("\\ED* K..^1. Kris^1, you didn't really hear what I said earlier^1, did you?/", "scr_text_slash_scr_text_gml_7394_0");
			msgnextloc("\\ED* You..^1. you wouldn't... let me.../", "scr_text_slash_scr_text_gml_7395_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7396_0");
			break;
		case 1229:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y..^1. Yeah^1, you're right^1, Kris!/", "scr_text_slash_scr_text_gml_7114_0");
				msgnextloc("\\E3* (I thought Kris was acting strange^1, but...)/", "scr_text_slash_scr_text_gml_7115_0");
				msgnextloc("\\E2* (I guess it was just another mean joke...?)/%", "scr_text_slash_scr_text_gml_7116_0");
				if (global.flag[915] > 0)
					scr_sideb_fail();
				obj_controller_city_mice2.icon = 999;
			}
			if (global.choice == 1)
			{
				msgset(0, "%%");
				obj_controller_city_mice2.icon = 10;
				obj_controller_city_mice2.timer = 0;
			}
			break;
		case 1230:
			global.choicemsg[0] = stringsetloc("#Sorry, I'll #do the puzzle", "scr_text_slash_scr_text_gml_7046_0");
			global.choicemsg[1] = stringsetloc("#Proceed", "scr_text_slash_scr_text_gml_7047_0");
			global.choicemsg[2] = stringsetloc("", "scr_text_slash_scr_text_gml_7048_0_b");
			global.choicemsg[3] = stringsetloc("", "scr_text_slash_scr_text_gml_7049_0");
			scr_speaker("noelle");
			msgsetloc(0, "\\EC* K.../", "scr_text_slash_scr_text_gml_7427_0");
			msgnextloc("\\ED* Kris...?/", "scr_text_slash_scr_text_gml_7428_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7429_0");
			break;
		case 1231:
			if (global.choice == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E4* Y..^1. Yeah^1, you're right^1, Kris!/", "scr_text_slash_scr_text_gml_7114_0");
				msgnextloc("\\E3* (I thought Kris was acting strange^1, but...)/", "scr_text_slash_scr_text_gml_7115_0");
				msgnextloc("\\E2* (I guess it was just another mean joke...?)/%", "scr_text_slash_scr_text_gml_7116_0");
				if (global.flag[915] > 0)
					scr_sideb_fail();
				obj_controller_city_mice2.icon = 999;
			}
			if (global.choice == 1)
			{
				msgset(0, "%%");
				obj_controller_city_mice2.icon = 12;
				obj_controller_city_mice2.timer = 0;
			}
			break;
		case 1232:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7454_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7455_0");
			global.choicemsg[2] = stringset(" ");
			global.choicemsg[3] = stringset(" ");
			instance_create(0, 0, obj_moneydisplay);
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a machine that sells pre-fountain refreshments.)&* (1 bagel is $120. Buy?)/", "scr_text_slash_scr_text_gml_7462_0");
			msgnext("\\C2 ");
			break;
		case 1233:
			if (global.choice == 0)
			{
				var can_afford = global.gold >= 120;
				if (can_afford)
				{
					var itemgetstring = scr_itemget_anytype_text(16, "item");
					if (noroom == 0)
						global.gold -= 120;
					scr_speaker("no_name");
					msgset(0, itemgetstring);
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (You didn't have enough money. Which^1, is surprising.)/%", "scr_text_slash_scr_text_gml_7485_0");
				}
			}
			if (global.choice == 1)
				msgset(0, "%%");
			break;
		case 1234:
			global.choicemsg[0] = stringsetloc("#Recruits", "scr_text_slash_scr_text_gml_7497_0");
			global.choicemsg[1] = stringsetloc("#Item storage", "scr_text_slash_scr_text_gml_7498_0");
			global.choicemsg[2] = stringsetloc("Controls", "scr_text_slash_scr_text_gml_7499_0");
			global.choicemsg[3] = stringsetloc("Do not read", "scr_text_slash_scr_text_gml_7500_0");
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a manual. Read a topic?)/", "scr_text_slash_scr_text_gml_7503_0");
			msgnext("\\C4 ");
			break;
		case 1235:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* If you SPARE or PACIFY enough enemies of the same type^1, they will be RECRUITed./", "scr_text_slash_scr_text_gml_7511_0");
				msgnextloc("* RECRUITs will appear in your TOWN. Wonder what happens if you get them all...?/", "scr_text_slash_scr_text_gml_7512_0");
				msgnextloc("* You can check the area's RECRUIT status at SAVE POINTS. Certain BOSSES are excluded./%", "scr_text_slash_scr_text_gml_7513_0");
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* You will now have access to a STORAGE menu at SAVE POINTS./", "scr_text_slash_scr_text_gml_7519_0");
				msgnextloc("* When you're out of space^1, ITEMs you find or BUY will be sent to your STORAGE./", "scr_text_slash_scr_text_gml_7520_0");
				msgnextloc("* Feel free to put things inside you might not be able to use yet./%", "scr_text_slash_scr_text_gml_7521_0");
			}
			if (global.choice == 2)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Here is a reminder of the controls. Change them in the config menu./", "scr_text_slash_scr_text_gml_7527_0");
				msgnextsubloc("* ~1&* Confirm and interact with things./", scr_get_input_name(4), "scr_text_slash_scr_text_gml_7528_0");
				msgnextsubloc("* ~1&* Cancel. Hold to RUN. Shows all text instantly./", scr_get_input_name(5), "scr_text_slash_scr_text_gml_7529_0");
				msgnextsubloc("* ~1&* Opens the menu. Hold down to quickly skip textboxes./%", scr_get_input_name(6), "scr_text_slash_scr_text_gml_7530_0");
			}
			if (global.choice == 3)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (There's no time to read books.)/%", "scr_text_slash_scr_text_gml_7536_0");
			}
			break;
		case 1236:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7568_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7569_0");
			global.choicemsg[2] = stringset(" ");
			global.choicemsg[3] = stringset(" ");
			scr_speaker("ralsei");
			msgsetloc(0, "* Oh^1, Kris^1! It's a free editable CYBERPEDIA^1! I'll add an entry...!/", "scr_text_slash_scr_text_gml_7554_0");
			scr_anyface_next("no_name", 0);
			msgnextloc("* (Ralsei wrote an article about LOSING RECRUITS. Read it?)/", "scr_text_slash_scr_text_gml_7556_0");
			msgnext("\\C2 ");
			break;
		case 1237:
			if (global.choice == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* From now on^1, defeating enemies with violence will make them LOST./", "scr_text_slash_scr_text_gml_7582_0");
				msgnextloc("* LOST enemies cannot become RECRUITs ever again./", "scr_text_slash_scr_text_gml_7583_0");
				msgnextloc("* But^1, the bonds you break may make you stronger.../%", "scr_text_slash_scr_text_gml_7584_0");
				global.flag[463] = 1;
			}
			if (global.choice == 1)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (Who has time to read a book in the Cyber World?)/%", "scr_text_slash_scr_text_gml_7590_0");
			}
			break;
		case 1238:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7595_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7596_0");
			global.choicemsg[2] = stringset(" ");
			global.choicemsg[3] = stringset(" ");
			msgsetloc(0, "* (It's a mannequin.)/", "scr_text_slash_scr_text_gml_7599_0");
			msgnextloc("* (Put the LoadedDisk inside?)/", "scr_text_slash_scr_text_gml_7600_0");
			msgnext("\\C2 ");
			break;
		case 1239:
			if (global.choice == 0)
			{
				msgsetloc(0, "* (The LoadedDisk squirmed and won't fit!)/%", "scr_text_slash_scr_text_gml_7607_0");
				global.flag[459] = 1;
			}
			if (global.choice == 1)
				msgset(0, "%%");
			break;
		case 1240:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7619_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7620_0");
			global.choicemsg[2] = stringset(" ");
			global.choicemsg[3] = stringset(" ");
			scr_speaker("no_name");
			msgsetloc(0, "* (Something is glimmering in the hole.)/", "scr_text_slash_scr_text_gml_7625_0");
			msgnextloc("* (Look inside?)/", "scr_text_slash_scr_text_gml_7626_0");
			msgnext("\\C2 ");
			break;
		case 1241:
			if (global.choice == 0)
			{
				var itemgetstring = "";
				if (global.tempflag[36] == 1)
					itemgetstring = scr_itemget_anytype_text(7, "armor");
				if (global.tempflag[36] == 2)
					itemgetstring = scr_itemget_anytype_text(7, "weapon");
				if (noroom == 0)
				{
					if (global.tempflag[36] == 1)
						global.flag[241] = 7;
					if (global.tempflag[36] == 2)
						global.flag[241] = 6;
					var get_crystal = scr_keyitemcheck(13) == 0;
					if (get_crystal)
						scr_keyitemget(13);
					global.tempflag[36] = 3;
					global.flag[460] = 1;
					scr_speaker("no_name");
					msgsetloc(0, "* (You reached inside and found something alongside a strange piece of glass...)/", "scr_text_slash_scr_text_gml_7648_0");
					if (get_crystal)
						msgnextloc("* (You got ShadowCrystal.)/", "scr_text_slash_scr_text_gml_7658_0");
					msgnext(itemgetstring);
					if (i_ex(obj_npc_castle_cliff))
					{
						with (obj_npc_castle_cliff)
							remove_shine = true;
					}
				}
				else
				{
					scr_speaker("no_name");
					msgset(0, itemgetstring);
				}
			}
			if (global.choice == 1)
				msgset(0, "%%");
			break;
		case 1242:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7568_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7569_0");
			global.choicemsg[2] = stringset(" ");
			global.choicemsg[3] = stringset(" ");
			scr_speaker("ralsei");
			msgsetloc(0, "\\EQ* Kris^1, want to re-read my editable CYBERPEDIA entry?/", "scr_text_slash_scr_text_gml_7674_0");
			scr_anyface_next("no_name", 0);
			msgnextloc("* (Ralsei wrote an article about LOSING RECRUITS. Read it?)/", "scr_text_slash_scr_text_gml_7676_0");
			msgnext("\\C2 ");
			break;
		case 1243:
			if (global.choice == 0)
			{
				var small_text = stringsetloc("Yeah you did.", "scr_text_slash_scr_text_gml_7680_0");
				scr_smallface(0, "susie", 2, "right", "bottom", small_text);
				scr_speaker("no_name");
				msgsetloc(0, "* From now on^1, ralsay drools Susie rules/", "scr_text_slash_scr_text_gml_7685_0");
				scr_anyface_next("ralsei", 21);
				msgnextloc("* I don't remember writing that!\\f0/%", "scr_text_slash_scr_text_gml_7687_0");
			}
			if (global.choice == 1)
				msgset(0, "%%");
			break;
		case 5000:
			global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_7037_0");
			global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_7038_0");
			global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_7039_0");
			global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_7040_0");
			msgsetloc(0, "* Choice text./", "scr_text_slash_scr_text_gml_7041_0");
			msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7042_0");
			break;
		case 5001:
			if (global.choice == 0)
				msgsetloc(0, "* Result A./%", "scr_text_slash_scr_text_gml_7048_0");
			else
				msgsetloc(0, "* Result B./%", "scr_text_slash_scr_text_gml_7052_0");
			break;
		default:
			break;
	}
}
