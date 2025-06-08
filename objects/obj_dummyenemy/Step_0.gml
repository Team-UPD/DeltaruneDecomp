if (ambushed == 0)
{
	scr_ambush();
	ambushed = 1;
}
if (plot != 3)
{
	global.charmove[0] = 1;
	global.charmove[1] = 0;
	if (global.charspecial[0] == 100)
		spare_used = 1;
	else
		spare_used = 0;
}
else
{
	global.charmove[0] = 0;
	global.charmove[1] = 1;
	if (global.charspecial[1] == 100)
		ral_wrongcommand = 1;
	if (global.charaction[1] == 4)
		ral_wrongcommand = 1;
	if (global.charaction[1] != 2 && global.charaction[1] != 4)
	{
		with (obj_attackpress)
		{
			with (obj_heroparent)
			{
				if (state == 1)
					state = 0;
				attacked = 0;
				itemed = 0;
			}
			global.mnfight = 1;
			global.myfight = -1;
			instance_destroy();
		}
		global.charaction[1] = 0;
		global.faceaction[1] = 0;
	}
}
if (global.monster[myself] == 1)
{
	global.flag[51 + myself] = 4;
	commanded = 0;
	if (global.mnfight == 1 && talked == 0)
	{
		global.writerimg[0] = spr_btfight;
		global.writerimg[1] = spr_btdefend;
		global.writerimg[2] = spr_bttech;
		global.writerimg[3] = spr_btact;
		global.writerimg[4] = spr_btspare;
		global.writerimg[5] = spr_btitem;
		if (attackcon == 0)
		{
			scr_moveheart();
			abletotarget = 1;
			if (global.charcantarget[0] == 0 && global.charcantarget[1] == 0 && global.charcantarget[2] == 0)
				abletotarget = 0;
			mytarget = choose(0);
			if (abletotarget == 1)
			{
				while (global.charcantarget[mytarget] == 0)
					mytarget = choose(0);
			}
			else
			{
				target = 3;
			}
			global.targeted[mytarget] = 1;
			attackcon = 1;
			instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
			instance_create(0, 0, obj_darkener);
		}
		global.typer = 45;
		global.fc = 2;
		global.fe = 1;
		global.msg[0] = stringsetloc("* Skip/%", "obj_dummyenemy_slash_Step_0_gml_81_0");
		if (plot == 0 && attackcon == 1)
		{
			global.fe = 0;
			global.flag[30] = 0;
			global.msg[0] = stringsetloc("\\E0* See that \\cRHEART\\cW, Kris?/", "obj_dummyenemy_slash_Step_0_gml_87_0");
			global.msg[1] = stringsetloc("* That's your \\cRSOUL\\cW, the culmination of your being!/", "obj_dummyenemy_slash_Step_0_gml_88_0");
			global.msg[2] = stringsetloc("\\EB* Within^1, it holds your WILL..^1. your COMPASSION.../", "obj_dummyenemy_slash_Step_0_gml_89_0");
			global.msg[3] = stringsetloc("\\E1* ... and the FATE of the world./", "obj_dummyenemy_slash_Step_0_gml_90_0");
			global.msg[4] = stringsetloc("\\EB* If it gets hit^1, you and your friends will lose HP./", "obj_dummyenemy_slash_Step_0_gml_91_0");
			global.msg[5] = stringsetloc("\\E3* If everyone's HP reaches 0^1, we'll lose the battle./", "obj_dummyenemy_slash_Step_0_gml_92_0");
			global.msg[6] = stringsetloc("\\E0* So^1, please take care to avoid the enemy's attack./", "obj_dummyenemy_slash_Step_0_gml_93_0");
			global.msg[7] = stringsetloc("\\E8* Ready^1?&* Let's try dodging!/%", "obj_dummyenemy_slash_Step_0_gml_94_0");
		}
		if (plot >= 1)
		{
			dial = 0;
			if (global.charaction[0] == 1)
			{
				if (dummyhp > global.monsterhp[0])
					dial = 1;
				if (dummyhp == global.monsterhp[0] && plot == 1)
					dial = 2;
				if (dummyhp == global.monsterhp[0] && misstime == 9 && plot == 2)
				{
					dial = 3;
					global.flag[205] = 6;
				}
				if (dial == 1 && hitdum >= 3)
				{
					hitdum = 4;
					dial = 3;
					global.flag[205] = 4;
				}
			}
			if (global.charaction[0] == 10 && commanded == 0)
			{
				global.fe = 0;
				global.msg[0] = stringsetloc("\\E0* That's DEFENDING^1, Kris^1.&* You'll recover TP and take less damage./", "obj_dummyenemy_slash_Step_0_gml_115_0");
				global.msg[1] = stringsetloc("\\E8* You should learn to ATTACK first^1, though./%", "obj_dummyenemy_slash_Step_0_gml_116_0");
				if (defendtime == 1)
				{
					global.msg[0] = stringsetloc("\\E8* Gee^1, Kris^1!&* You sure are good at defending!/", "obj_dummyenemy_slash_Step_0_gml_120_0");
					global.msg[1] = stringsetloc("\\E6* I'm not attacking^1, you^1, though, so...&* No need to defend!/%", "obj_dummyenemy_slash_Step_0_gml_121_0");
				}
				if (defendtime == 2)
				{
					global.fe = 1;
					global.msg[0] = stringsetloc("\\E1* Ummm..^1.&* Kris?/", "obj_dummyenemy_slash_Step_0_gml_127_0");
					global.msg[1] = stringsetloc("\\E8* There are no bullets^1, and you can't use TP.../", "obj_dummyenemy_slash_Step_0_gml_128_0");
					global.msg[2] = stringsetloc("\\E8* So^1, umm^1, maybe you could stop defending?/%", "obj_dummyenemy_slash_Step_0_gml_129_0");
				}
				if (defendtime == 3)
				{
					global.fe = 9;
					global.msg[0] = stringsetloc("\\E9* .../%", "obj_dummyenemy_slash_Step_0_gml_136_0");
				}
				if (plot == 2)
				{
					global.writerimg[2] = spr_bttech;
					global.msg[0] = stringsetloc("\\E8* Great job^1, Kris^1!&* Now that you've gathered TP -/", "obj_dummyenemy_slash_Step_0_gml_142_0");
					global.msg[1] = stringsetloc("\\E0* How about spending that TP on one of my \\cYSPELLs\\cW?/", "obj_dummyenemy_slash_Step_0_gml_143_0");
					global.msg[2] = stringsetloc("* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./", "obj_dummyenemy_slash_Step_0_gml_144_0");
					global.msg[3] = stringsetloc("* Now^1, if I use my \\cYPACIFY\\cW spell on it.../", "obj_dummyenemy_slash_Step_0_gml_145_0");
					global.msg[4] = stringsetloc("\\E8* It'll fall asleep^1, and we'll win peacefully!/%", "obj_dummyenemy_slash_Step_0_gml_146_0");
					if (global.monsterhp[0] == global.monstermaxhp[0])
					{
						global.msg[2] = stringsetloc("\\E1* If you had^1, um^1, hit the enemy^1, it'd be TIRED now./", "obj_dummyenemy_slash_Step_0_gml_150_0");
						global.msg[3] = stringsetloc("\\E0* In that case^1, we use my \\cYPACIFY\\cW spell on it.../", "obj_dummyenemy_slash_Step_0_gml_151_0");
					}
					plot = 3;
					if (defendtime == 4)
						defendtime = 3;
				}
				if (defendtime >= 4)
				{
					dial = 3;
					global.flag[205] = 5;
				}
				defendtime += 1;
				commanded = 1;
			}
			if (global.charaction[0] == 4 && commanded == 0)
			{
				global.fe = 0;
				global.msg[0] = stringsetloc("\\E0* Oh^1, Kris^1, you found an \\cYITEM\\cW?/", "obj_dummyenemy_slash_Step_0_gml_167_0");
				global.msg[1] = stringsetloc("\\E1* I figured \\cYITEMs\\cW are self-explanatory^1, so.../", "obj_dummyenemy_slash_Step_0_gml_168_0");
				global.msg[2] = stringsetloc("\\E6* Let's skip over them for now^1, OK?/%", "obj_dummyenemy_slash_Step_0_gml_169_0");
				if (item_command == 1)
				{
					global.fe = 1;
					global.msg[0] = stringsetloc("\\E3* You really want to learn about \\cYITEMS\\cW, Kris...?/", "obj_dummyenemy_slash_Step_0_gml_174_0");
					global.msg[1] = stringsetloc("\\E0* OK^1, I'll teach you!/", "obj_dummyenemy_slash_Step_0_gml_175_0");
					global.msg[2] = stringsetloc("\\E1* Errm.../", "obj_dummyenemy_slash_Step_0_gml_176_0");
					global.msg[3] = stringsetloc("\\E0* You use them^1, and something happens./", "obj_dummyenemy_slash_Step_0_gml_177_0");
					global.msg[4] = stringsetloc("\\E8* ... is that sufficient?/%", "obj_dummyenemy_slash_Step_0_gml_178_0");
				}
				if (item_command == 2)
				{
					global.fe = 6;
					global.msg[0] = stringsetloc("\\E6* Yes^1, haha^1, that \\cYITEM\\cW is very pretty^1, isn't it?/", "obj_dummyenemy_slash_Step_0_gml_184_0");
					global.msg[1] = stringsetloc("\\E8* I'm glad you're enjoying yourself^1, Kris...!/%", "obj_dummyenemy_slash_Step_0_gml_185_0");
				}
				if (item_command == 3)
				{
					global.fe = 0;
					global.msg[0] = stringsetloc("\\E8* Kris^1, we can find lots more ITEMs on our journey!/", "obj_dummyenemy_slash_Step_0_gml_191_0");
					global.msg[1] = stringsetloc("\\E0* Which^1, will continue..^1. after this tutorial./%", "obj_dummyenemy_slash_Step_0_gml_192_0");
				}
				if (item_command >= 4)
					dial = 3;
				commanded = 1;
				item_command += 1;
			}
			if (ral_wrongcommand == 1 && commanded == 0)
			{
				global.msg[0] = stringsetloc("\\E8* Kris^1, please ask me to do a spell./%", "obj_dummyenemy_slash_Step_0_gml_206_0");
				if (ral_wrongcommand_count == 0)
					global.msg[0] = stringsetloc("\\E8* Kris^1, wouldn't you rather learn about \\cYSPELLs\\cW?/%", "obj_dummyenemy_slash_Step_0_gml_211_0");
				if (ral_wrongcommand_count == 1)
				{
					global.msg[0] = stringsetloc("\\E6* Kris^1, do you..^1. know what a \\cYSPELL\\cW is?/", "obj_dummyenemy_slash_Step_0_gml_216_0");
					global.msg[1] = stringsetloc("\\E1* Can humans not even ASK people to use them...?/%", "obj_dummyenemy_slash_Step_0_gml_217_0");
				}
				if (ral_wrongcommand_count == 2)
					global.msg[0] = stringsetloc("\\E6* Kris^1, what if you just give me a hand sign?/%", "obj_dummyenemy_slash_Step_0_gml_222_0");
				if (ral_wrongcommand_count == 3)
				{
					global.msg[0] = stringsetloc("*\\E8 Ummm^1, if this is too difficult.../", "obj_dummyenemy_slash_Step_0_gml_227_0");
					global.msg[1] = stringsetloc("* Let's move to the next lesson^1, OK?/", "obj_dummyenemy_slash_Step_0_gml_228_0");
					global.msg[2] = stringsetloc("* \\I3   ing^1! Through this^1, even the most violent enemies.../", "obj_dummyenemy_slash_Step_0_gml_229_0");
					global.msg[3] = stringsetloc("\\E8* Can be defeated through various \\I3   s of kindness!/", "obj_dummyenemy_slash_Step_0_gml_230_0");
					global.msg[4] = stringsetloc("* Kris^1, though it's just a dummy^1, why not give it a HUG?/%", "obj_dummyenemy_slash_Step_0_gml_231_0");
					if (plot == 3)
						plot = 4;
					if (global.mercymod[myself] >= 100)
					{
						global.msg[2] = stringsetloc("\\EB* Remember when you \\cYHUGGED\\cW the dummy by \\I3   ing on it?/", "obj_dummyenemy_slash_Step_0_gml_237_0");
						global.msg[3] = stringsetloc("\\E0* Because of that^1, its name turned \\cYYELLOW\\cW!/", "obj_dummyenemy_slash_Step_0_gml_238_0");
						global.msg[4] = stringsetloc("* Now by using the \\cYSPARE\\cW (\\I4   ) command^1, you can win!/%", "obj_dummyenemy_slash_Step_0_gml_239_0");
						plot = 5;
					}
				}
				ral_wrongcommand_count += 1;
				commanded = 0;
			}
			if (global.charaction[1] == 2 && ral_wrongcommand == 0 && commanded == 0)
			{
				global.msg[0] = stringsetloc("\\E0* Great^1, Kris^1! A healing spell works too!/", "obj_dummyenemy_slash_Step_0_gml_252_0");
				global.msg[1] = stringsetloc("* Now I have just a little more to teach you!/", "obj_dummyenemy_slash_Step_0_gml_253_0");
				global.msg[2] = stringsetloc("* \\I3   ing^1! Through this^1, even the most violent enemies.../", "obj_dummyenemy_slash_Step_0_gml_254_0");
				global.msg[3] = stringsetloc("\\E8* Can be defeated through various \\I3   s of kindness!/", "obj_dummyenemy_slash_Step_0_gml_255_0");
				global.msg[4] = stringsetloc("\\E6* Kris^1, though it's just a dummy^1, why not give it a HUG?/%", "obj_dummyenemy_slash_Step_0_gml_256_0");
				if (pacifycon == 1)
				{
					global.msg[0] = stringsetloc("\\E0* Great^1, Kris^1! We would have won the battle by now!/", "obj_dummyenemy_slash_Step_0_gml_260_0");
					if (global.monsterstatus[myself] == 0)
						global.msg[0] = stringsetloc("\\E0* Great^1, Kris^1! If it was TIRED we would have won!/", "obj_dummyenemy_slash_Step_0_gml_262_0");
				}
				plot = 4;
				if (global.mercymod[myself] >= 100)
				{
					global.msg[2] = stringsetloc("\\E0* Remember when you \\cYHUGGED\\cW the dummy by \\I3   ing on it?/", "obj_dummyenemy_slash_Step_0_gml_268_0");
					global.msg[3] = stringsetloc("* Because of that^1, its name turned \\cYYELLOW\\cW!/", "obj_dummyenemy_slash_Step_0_gml_269_0");
					global.msg[4] = stringsetloc("* Now by using the \\cYSPARE\\cW (\\I4   ) command^1, you can win!/%", "obj_dummyenemy_slash_Step_0_gml_270_0");
					plot = 5;
				}
				commanded = 1;
			}
			if (spare_used == 1 && commanded == 0)
			{
				if (plot < 5)
				{
					global.fe = 0;
					if (spare_command == 0)
						global.msg[0] = stringsetloc("\\E8* Ah^1, Kris^1, don't worry about that command yet!/%", "obj_dummyenemy_slash_Step_0_gml_282_0");
					if (spare_command == 1)
						global.msg[0] = stringsetloc("\\E6* You're really merciful^1, aren't you^1, Kris?/%", "obj_dummyenemy_slash_Step_0_gml_283_0");
					if (spare_command >= 2)
						global.msg[0] = stringsetloc("\\E1* Kris^1, you are aware it's just a dummy^1, right...?/%", "obj_dummyenemy_slash_Step_0_gml_284_0");
					if (global.mercymod[myself] >= 100)
						win_spare += 1;
					if (win_spare == 1)
					{
						global.fe = 6;
						global.msg[0] = stringsetloc("\\E0* Kris^1, since you SPARED an enemy after ACTING,/", "obj_dummyenemy_slash_Step_0_gml_289_0");
						global.msg[1] = stringsetloc("\\E1* You would have won in a real battle, but, um.../", "obj_dummyenemy_slash_Step_0_gml_290_0");
						global.msg[2] = stringsetloc("\\E0* Don't you want to learn other things^1, first?/%", "obj_dummyenemy_slash_Step_0_gml_291_0");
					}
					if (win_spare == 2)
					{
						global.fe = 6;
						global.msg[0] = stringsetloc("\\E0* I see..^1. Then^1, perhaps we can just end here./", "obj_dummyenemy_slash_Step_0_gml_296_0");
						global.msg[1] = stringsetloc("\\E1* You know how to win peacefully, so.../", "obj_dummyenemy_slash_Step_0_gml_297_0");
						global.msg[2] = stringsetloc("\\E8* That's good enough for me!/%", "obj_dummyenemy_slash_Step_0_gml_298_0");
						won = 1;
					}
				}
				if (plot == 5)
				{
					global.msg[0] = stringsetloc("\\E0* Great job^1, Kris^1!&* That'd be the end in a real battle!/", "obj_dummyenemy_slash_Step_0_gml_307_0");
					global.msg[1] = stringsetloc("\\E8* I'm really happy I had the chance to teach you^1, Kris!/%", "obj_dummyenemy_slash_Step_0_gml_308_0");
					won = 1;
				}
				spare_used = 0;
				spare_command += 1;
				commanded = 1;
			}
			if (dial == 1)
			{
				if (plot == 1)
				{
					global.fe = 3;
					if (dummyhp > (global.monsterhp[0] + 50))
					{
						global.msg[0] = stringsetloc("\\E3* W-wow^1, Kris^1!&* That was an amazing attack!/", "obj_dummyenemy_slash_Step_0_gml_327_0");
						global.msg[1] = stringsetloc("\\E8* Have you done this before or something...?/", "obj_dummyenemy_slash_Step_0_gml_328_0");
					}
					else
					{
						global.msg[0] = stringsetloc("\\E0* Good job^1, Kris^1!&* By the way^1, you'll do more damage.../", "obj_dummyenemy_slash_Step_0_gml_332_0");
						global.msg[1] = stringsetloc("\\E8* Pressing Z when the cursor enters the box on the left!/", "obj_dummyenemy_slash_Step_0_gml_333_0");
					}
					if (misstime >= 6)
					{
						global.fe = 8;
						global.msg[0] = stringsetloc("\\E3* Kris^1!&* You did it!!!/", "obj_dummyenemy_slash_Step_0_gml_338_0");
						global.msg[1] = stringsetloc("\\E8* (I was really just about at my limit...)/", "obj_dummyenemy_slash_Step_0_gml_339_0");
					}
					global.msg[2] = stringsetloc("\\E0* OK, next let's try DEFENDING. (\\I1    )/", "obj_dummyenemy_slash_Step_0_gml_341_0");
					global.msg[3] = stringsetloc("* Simply (\\I1   )^1, and the enemy's attack will hurt you less.../", "obj_dummyenemy_slash_Step_0_gml_342_0");
					global.msg[4] = stringsetloc("* Not only that^1, but you'll also gather \\cYTP\\cW!/", "obj_dummyenemy_slash_Step_0_gml_343_0");
					global.msg[5] = stringsetloc("* (Watch the orange big bar on the left^1! I'll explain it next!)/%", "obj_dummyenemy_slash_Step_0_gml_344_0");
					plot = 2;
					if (defendtime >= 1)
					{
						global.msg[2] = stringsetloc("\\E0* Kris^1, if you didn't notice^1, when you DEFENDED before -/", "obj_dummyenemy_slash_Step_0_gml_348_0");
						global.msg[3] = stringsetloc("* The big orange TP bar on the left filled up a bit!/", "obj_dummyenemy_slash_Step_0_gml_349_0");
						global.msg[4] = stringsetloc("* How about spending that TP on one of my \\cYSPELLs\\cW?/", "obj_dummyenemy_slash_Step_0_gml_350_0");
						global.msg[5] = stringsetloc("* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./", "obj_dummyenemy_slash_Step_0_gml_351_0");
						global.msg[6] = stringsetloc("* Now^1, if I use my \\cYPACIFY\\cW spell on it.../", "obj_dummyenemy_slash_Step_0_gml_352_0");
						global.msg[7] = stringsetloc("* It'll fall asleep^1, and we'll win peacefully!/%", "obj_dummyenemy_slash_Step_0_gml_353_0");
						plot = 3;
					}
				}
				else
				{
					if (hitdum == 0)
					{
						global.fe = 1;
						global.msg[0] = stringsetloc("\\E1* Ummm..^1. Kris^1?&* You don't need to hit it anymore./", "obj_dummyenemy_slash_Step_0_gml_364_0");
						global.msg[1] = stringsetloc("\\E8* I already know you're great at attacking!/%", "obj_dummyenemy_slash_Step_0_gml_365_0");
					}
					if (hitdum == 1)
					{
						global.fe = 1;
						global.msg[0] = stringsetloc("\\E1* U-umm^1, Kris..^1. H-How do I put this...?/", "obj_dummyenemy_slash_Step_0_gml_372_0");
						global.msg[1] = stringsetloc("\\E1* Kris^1, seeing you^1, um^1, attack an effigy of myself.../", "obj_dummyenemy_slash_Step_0_gml_373_0");
						global.msg[2] = stringsetloc("\\E6* ... Kris^1, are you trying to say something?/%", "obj_dummyenemy_slash_Step_0_gml_374_0");
					}
					if (hitdum == 2)
					{
						global.fe = 6;
						global.msg[0] = stringsetloc("\\E6* Ah^1, Kris..^1. I..^1. um^1, I think I understand./", "obj_dummyenemy_slash_Step_0_gml_380_0");
						global.msg[1] = stringsetloc("\\E1* W^1-well^1, if..^1. during our adventure,/", "obj_dummyenemy_slash_Step_0_gml_381_0");
						global.msg[2] = stringsetloc("\\E7* ... if you want to hit me^1, that's OK^1, too!/%", "obj_dummyenemy_slash_Step_0_gml_382_0");
					}
					if (hitdum >= 3)
						dial = 3;
					hitdum += 1;
				}
			}
			if (dial == 2)
			{
				global.fe = 3;
				global.msg[0] = stringsetloc("\\E3* Oh^1, sorry^1, Kris^1!&* I forgot to mention^1!&* When you're ATTACKing.../", "obj_dummyenemy_slash_Step_0_gml_398_0");
				global.msg[1] = stringsetsubloc("\\E8* Press ~1 again when the cursor goes in the box!/%", scr_get_input_name(4), "obj_dummyenemy_slash_Step_0_gml_399_0");
				if (misstime >= 1)
				{
					global.fe = 8;
					global.msg[0] = stringsetloc("\\E8* It's OK^1, Kris^1!&* You'll get it^1!&* Try again!/%", "obj_dummyenemy_slash_Step_0_gml_403_0");
					if (misstime == 2)
						global.msg[0] = stringsetloc("\\E8* Press Z when the white rectangle's in the blue box!/%", "obj_dummyenemy_slash_Step_0_gml_404_0");
					if (misstime == 3)
						global.msg[0] = stringsetsubloc("\\E6* Ummm..^1. you can press ~1 a lot^1, if it helps!/%", scr_get_input_name(4), "obj_dummyenemy_slash_Step_0_gml_405_0");
					if (misstime == 4)
						global.msg[0] = stringsetsubloc("\\E6* Kris..^1.&* Please try to press ~1./%", scr_get_input_name(4), "obj_dummyenemy_slash_Step_0_gml_406_0");
					if (misstime == 5)
						global.msg[0] = stringsetloc("\\E6* Ummm^1, Kris^1?&* Can you see the white rectangle?/%", "obj_dummyenemy_slash_Step_0_gml_407_0");
					if (misstime == 6)
						global.msg[0] = stringsetloc("\\E8* You know rectangles^1?&* They're like messed-up squares?/%", "obj_dummyenemy_slash_Step_0_gml_408_0");
					if (misstime == 7)
					{
						global.fe = 9;
						global.msg[0] = stringsetloc("\\E9* .../%", "obj_dummyenemy_slash_Step_0_gml_412_0");
					}
					if (misstime == 8)
					{
						global.fe = 1;
						global.msg[0] = stringsetloc("\\E6* Umm^1, perhaps we should try something else?/%", "obj_dummyenemy_slash_Step_0_gml_417_0");
						plot = 2;
						if (defendtime >= 1)
						{
							global.msg[0] = stringsetloc("\\E6* Umm^1, perhaps we should try something else?/", "obj_dummyenemy_slash_Step_0_gml_421_0");
							global.msg[1] = stringsetloc("\\E0* Kris^1, if you didn't notice^1, when you DEFENDED before -/", "obj_dummyenemy_slash_Step_0_gml_422_0");
							global.msg[2] = stringsetloc("* The big orange TP bar on the left filled up a bit!/", "obj_dummyenemy_slash_Step_0_gml_423_0");
							global.msg[3] = stringsetloc("* How about spending that TP on one of my \\cYSPELLs\\cW?/", "obj_dummyenemy_slash_Step_0_gml_424_0");
							global.msg[4] = stringsetloc("* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./", "obj_dummyenemy_slash_Step_0_gml_425_0");
							global.msg[5] = stringsetloc("* Now^1, if I use my \\cYPACIFY\\cW spell on it.../", "obj_dummyenemy_slash_Step_0_gml_426_0");
							global.msg[6] = stringsetloc("* It'll fall asleep^1, and we'll win peacefully!/%", "obj_dummyenemy_slash_Step_0_gml_427_0");
							plot = 3;
						}
					}
				}
				misstime += 1;
			}
			if (dial == 3)
			{
				global.fe = 9;
				global.msg[0] = stringsetloc("\\E9* .../", "obj_dummyenemy_slash_Step_0_gml_441_0");
				global.msg[1] = stringsetloc("\\E8* Kris^1, I think I've^1, um^1, perhaps.../", "obj_dummyenemy_slash_Step_0_gml_442_0");
				global.msg[2] = stringsetloc("\\E1* Reached the limits of what I can teach you today./", "obj_dummyenemy_slash_Step_0_gml_443_0");
				global.msg[3] = stringsetloc("\\E0* Let's go find Susie./%", "obj_dummyenemy_slash_Step_0_gml_444_0");
				if (hitdum >= 4)
				{
					global.msg[0] = stringsetloc("\\E9* Kris^1, I don't mean to interrupt^1, but.../", "obj_dummyenemy_slash_Step_0_gml_447_0");
					global.msg[1] = stringsetloc("\\E3* You're going to break the dummy at this rate./", "obj_dummyenemy_slash_Step_0_gml_448_0");
					global.msg[2] = stringsetloc("\\E1* I suppose we'll have to stop here for now./%", "obj_dummyenemy_slash_Step_0_gml_449_0");
				}
				won = 1;
				global.myfight = 999;
				global.mnfight = 999;
			}
		}
		scr_battletext();
		if (global.msg[0] == "* Skip/%")
		{
			with (obj_writer)
				instance_destroy();
		}
		acting = 0;
		spare_used = 0;
		dummyhp = global.monsterhp[myself];
		talked = 1;
		talktimer = 0;
		ral_wrongcommand = 0;
	}
	if (global.mnfight == 9786 && attacked == 0)
	{
		turns += 1;
		global.turntimer = -1;
		scr_mnendturn();
		attacked = 1;
		rr = floor(random(0));
		global.typer = 6;
		global.fc = 0;
		if (rr == 0)
			global.battlemsg[0] = stringsetloc("* Ralsei looks on expectedly.", "obj_dummyenemy_slash_Step_0_gml_489_0");
	}
	if (talked == 1 && global.mnfight == 1)
	{
		if (won == 0)
		{
			rtimer = 0;
			scr_blconskip(-1);
			if (global.mnfight == 2 && attackcon == 1)
			{
				if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart))
					scr_moveheart();
				if (!instance_exists(obj_growtangle))
					instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
			}
		}
		else if (!instance_exists(obj_writer))
		{
			scr_monsterdefeat();
			scr_mnendturn();
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		if (attackcon != 1)
			rtimer = 8;
		rtimer += 1;
		if (rtimer >= 8)
		{
			rr = choose(0);
			if (rr == 0)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 14;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
			}
			turns += 1;
			global.turntimer = 150;
			if (attackcon == 1)
				battlecancel = 2;
			if (attackcon != 1)
			{
				global.turntimer = -100;
				with (dc)
					instance_destroy();
			}
			attackcon = 2;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			global.battlemsg[0] = stringsetloc("* What?", "obj_dummyenemy_slash_Step_0_gml_548_0");
			global.writerimg[0] = spr_btfight;
			global.writerimg[1] = spr_btdefend;
			global.writerimg[2] = spr_bttech;
			global.writerimg[3] = spr_btact;
			global.writerimg[4] = spr_btspare;
			global.writerimg[5] = spr_btitem;
			global.fc = 0;
			if (plot == 1)
				global.battlemsg[0] = stringsetloc("* Let's try FIGHTing!&  (\\I0    )", "obj_dummyenemy_slash_Step_0_gml_556_0");
			if (plot == 2)
				global.battlemsg[0] = stringsetloc("* Let's try DEFENDing!&  (\\I1    )", "obj_dummyenemy_slash_Step_0_gml_557_0");
			if (plot == 3)
				global.battlemsg[0] = stringsetloc("* Let's try SPELLs!&  (\\I2    )", "obj_dummyenemy_slash_Step_0_gml_558_0");
			if (plot == 4)
				global.battlemsg[0] = stringsetloc("* Let's ACT!&  (\\I3    )", "obj_dummyenemy_slash_Step_0_gml_559_0");
			if (plot == 5)
				global.battlemsg[0] = stringsetloc("* Let's SPARE!&  (\\I4    )", "obj_dummyenemy_slash_Step_0_gml_560_0");
			spare_used = 0;
			ral_wrongcommand = 0;
		}
		else
		{
			global.turntimer = 150;
		}
	}
	if (global.mnfight == 2)
	{
		if (global.turntimer <= 1)
		{
			if (battlecancel == 2)
			{
				with (obj_battlecontroller)
					noreturn = 1;
				con = 1;
				battlecancel = 3;
			}
		}
	}
}
if (con == 1)
{
	con = 2;
	alarm[5] = 2;
}
if (con == 3)
{
	global.typer = 45;
	global.fc = 2;
	global.fe = 0;
	global.writerimg[0] = spr_btfight;
	global.msg[0] = stringsetloc("* Great job^1, Kris^1!&* You're a natural!/", "obj_dummyenemy_slash_Step_0_gml_598_0");
	if (kris_inithp > global.hp[1])
	{
		global.fe = 6;
		global.msg[0] = stringsetloc("\\E6* Ouch^1, it's OK^1, Kris^1! You're still learning!/", "obj_dummyenemy_slash_Step_0_gml_602_0");
	}
	global.msg[1] = stringsetloc("\\E8* Anyhow^1, after the enemy attacks^1, it's our turn^1, Kris!/", "obj_dummyenemy_slash_Step_0_gml_604_0");
	global.msg[2] = stringsetloc("\\E0* First^1, I'll teach you how to \\cYFIGHT\\cW (\\I0    )./", "obj_dummyenemy_slash_Step_0_gml_605_0");
	global.msg[3] = stringsetloc("\\E1* Though \\cYFIGHTing\\cW is unnecessary in this world.../", "obj_dummyenemy_slash_Step_0_gml_606_0");
	global.msg[4] = stringsetloc("\\E8* There's no harm in a thorough lesson!/%", "obj_dummyenemy_slash_Step_0_gml_607_0");
	global.battlemsg[0] = stringsetloc("* Let's try FIGHTing!&  (\\I0   )", "obj_dummyenemy_slash_Step_0_gml_610_0");
	scr_battletext();
	con = 6;
}
if (con == 6 && !instance_exists(obj_writer))
{
	with (obj_battlecontroller)
	{
		noreturn = 0;
		alarm[2] = 2;
	}
	battlecancel = 0;
	if (plot == 0)
		plot = 1;
	con = 7;
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = stringsetloc("* DUMMY - AT 0 DF 0&* Cotton heart and button eye&* Looks just like a fluffy guy./%", "obj_dummyenemy_slash_Step_0_gml_642_0");
		if (checked == 0)
		{
			global.msg[0] = stringsetloc("* DUMMY - AT 0 DF 0&* Cotton heart and button eye&* Looks just like a fluffy guy./", "obj_dummyenemy_slash_Step_0_gml_645_0");
			scr_ralface(1, 6);
			global.msg[2] = stringsetloc("* Er^1, sorry^1, it kind of looks like me.../", "obj_dummyenemy_slash_Step_0_gml_647_0");
			global.msg[3] = stringsetloc("\\E1* I've been alone^1, so I didn't have anyone to model it after.../", "obj_dummyenemy_slash_Step_0_gml_648_0");
			global.msg[4] = stringsetloc("\\E6* Kris^1, since it's me^1, please be kind to it^1, OK?/%", "obj_dummyenemy_slash_Step_0_gml_649_0");
		}
		checked += 1;
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 10;
		with (obj_herokris)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		global.msg[0] = stringsetloc("* You hug the DUMMY./%", "obj_dummyenemy_slash_Step_0_gml_666_0");
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		global.acting[0] = 0;
		global.acting[1] = 0;
		global.acting[2] = 0;
		actcon = 0;
		acting = -1;
		scr_attackphase();
	}
	if (actcon == 10)
	{
		with (global.charinstance[0])
			visible = 0;
		k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug);
		with (k)
			scr_move_to_point_over_time(global.monsterx[0] - 42, global.monstery[0] - 30, 15);
		actcon = 11;
		alarm[4] = 25;
	}
	if (actcon == 12)
	{
		with (k)
			image_speed = 0.25;
		actcon = 13;
		alarm[4] = 12;
	}
	if (actcon == 14)
	{
		with (k)
			image_speed = 0;
		actcon = 15;
	}
	if (actcon == 15 && !instance_exists(obj_writer))
	{
		global.flag[205] = 1;
		global.typer = 45;
		global.fc = 2;
		global.fe = 0;
		global.msg[0] = stringsetloc("* How caring^1, Kris!/%", "obj_dummyenemy_slash_Step_0_gml_711_0");
		if (plot == 5)
		{
			global.msg[0] = stringsetloc("* That's great^1, Kris^1!&* Just one hug is enough^1, though!/%", "obj_dummyenemy_slash_Step_0_gml_714_0");
			if (hugtime >= 1)
				global.msg[0] = stringsetloc("\\E8* Kris^1, you don't need to hug it anymore./%", "obj_dummyenemy_slash_Step_0_gml_715_0");
			hugtime += 1;
		}
		if (plot == 1)
		{
			global.fe = 3;
			global.msg[0] = stringsetloc("* Huh...^1? Kris^1, you'd rather hug it out than fight?/", "obj_dummyenemy_slash_Step_0_gml_722_0");
			global.msg[1] = stringsetloc("\\E1* .../", "obj_dummyenemy_slash_Step_0_gml_723_0");
			global.msg[2] = stringsetloc("\\E8* You know what^1, that's fine^1! We don't need to fight!/", "obj_dummyenemy_slash_Step_0_gml_724_0");
			global.msg[3] = stringsetloc("* OK, next let's try DEFENDING. (\\I1    )/", "obj_dummyenemy_slash_Step_0_gml_725_0");
			global.msg[4] = stringsetloc("* Simply (\\I1   )^1, and the enemy's attack will hurt you less.../", "obj_dummyenemy_slash_Step_0_gml_726_0");
			global.msg[5] = stringsetloc("* Not only that^1, but you'll also gather \\cYTP\\cW!/", "obj_dummyenemy_slash_Step_0_gml_727_0");
			global.msg[6] = stringsetloc("* (Watch the orange big bar on the left^1! I'll explain it next!/%", "obj_dummyenemy_slash_Step_0_gml_728_0");
			plot = 2;
			if (defendtime >= 1)
			{
				global.msg[3] = stringsetloc("* Kris^1, if you didn't notice^1, when you DEFENDED before -/", "obj_dummyenemy_slash_Step_0_gml_733_0");
				global.msg[4] = stringsetloc("* The big orange TP bar on the left filled up a bit!/", "obj_dummyenemy_slash_Step_0_gml_734_0");
				global.msg[5] = stringsetloc("* How about spending that TP on one of my \\cYSPELLs\\cW?/", "obj_dummyenemy_slash_Step_0_gml_735_0");
				global.msg[6] = stringsetloc("* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./", "obj_dummyenemy_slash_Step_0_gml_736_0");
				global.msg[7] = stringsetloc("* Now^1, if I use my \\cYPACIFY\\cW spell on it.../", "obj_dummyenemy_slash_Step_0_gml_737_0");
				global.msg[8] = stringsetloc("* It'll fall asleep^1, and we'll win peacefully!/%", "obj_dummyenemy_slash_Step_0_gml_738_0");
				plot = 3;
			}
		}
		if (plot == 4)
		{
			global.fe = 8;
			global.msg[0] = stringsetloc("* Aww^1, that's great^1, Kris!/", "obj_dummyenemy_slash_Step_0_gml_746_0");
			global.msg[1] = stringsetloc("\\E0* Each enemy has different ACTs that satisfy them./", "obj_dummyenemy_slash_Step_0_gml_747_0");
			global.msg[2] = stringsetloc("* When an enemy is satisfied^1, its name turns \\cYYELLOW\\cW./", "obj_dummyenemy_slash_Step_0_gml_748_0");
			global.msg[3] = stringsetloc("* When that happens^1, you can defeat it by SPARING (\\I4    ) it!/", "obj_dummyenemy_slash_Step_0_gml_749_0");
			global.msg[4] = stringsetloc("* If we \\cYSPARE\\cW all the enemies we meet^1, we'll never have to \\cYFIGHT\\cW!/%", "obj_dummyenemy_slash_Step_0_gml_750_0");
			plot = 5;
		}
		scr_battletext();
		actcon = 16;
	}
	if (actcon == 16 && !instance_exists(obj_writer))
	{
		with (myface)
			instance_destroy();
		with (k)
			image_speed = -0.25;
		actcon = 17;
		alarm[4] = 12;
	}
	if (actcon == 18)
	{
		with (k)
			image_speed = 0;
		with (k)
			scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15);
		actcon = 19;
		alarm[4] = 25;
	}
	if (actcon == 20)
	{
		with (k)
			instance_destroy();
		global.mercymod[0] = 100;
		global.mercymod[1] = 100;
		global.charinstance[0].visible = 1;
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		makekris = 0;
		with (obj_herokris)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		with (obj_heroralsei)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		actcon = 30;
		global.msg[0] = stringsetloc("* You hug RALSEI./%", "obj_dummyenemy_slash_Step_0_gml_808_0");
		scr_battletext_default();
	}
	if (actcon == 30)
	{
		makekris = 1;
		maker = 0;
		with (global.charinstance[0])
			visible = 0;
		k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug);
		with (k)
			scr_move_to_point_over_time(obj_heroralsei.x - 24, obj_heroralsei.y + 10, 15);
		actcon = 31;
		alarm[4] = 25;
	}
	if (actcon == 32)
	{
		maker = 1;
		with (obj_heroralsei)
			visible = 0;
		rb = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseil_blush);
		with (k)
			image_speed = 0.25;
		actcon = 33;
		alarm[4] = 12;
	}
	if (actcon == 34)
	{
		with (k)
			image_speed = 0;
		actcon = 35;
	}
	if (actcon == 35 && !instance_exists(obj_writer))
	{
		global.typer = 45;
		global.fc = 2;
		global.fe = 2;
		global.msg[0] = stringsetloc("* K..^1. Kris!?/%", "obj_dummyenemy_slash_Step_0_gml_846_0");
		if (r_hugtime == 0)
		{
			global.msg[0] = stringsetloc("* K..^1. Kris!?/", "obj_dummyenemy_slash_Step_0_gml_850_0");
			global.msg[1] = stringsetloc("\\E8* Ummm^1, I don't think^1, um.../", "obj_dummyenemy_slash_Step_0_gml_851_0");
			global.msg[2] = stringsetloc("* This is what you're supposed to be doing./", "obj_dummyenemy_slash_Step_0_gml_852_0");
			global.msg[3] = stringsetloc("\\E2* ... but.../%", "obj_dummyenemy_slash_Step_0_gml_853_0");
		}
		if (r_hugtime == 1)
		{
			global.msg[0] = stringsetloc("* Kris...?/", "obj_dummyenemy_slash_Step_0_gml_858_0");
			global.msg[1] = stringsetloc("\\E2* Are you trying^1, to^1, um.../", "obj_dummyenemy_slash_Step_0_gml_859_0");
			global.msg[2] = stringsetloc("\\E6* Ask me to give you a tutorial on hugging...?/%", "obj_dummyenemy_slash_Step_0_gml_860_0");
		}
		if (r_hugtime == 2)
		{
			global.msg[0] = stringsetloc("* Ummm^1, I've never hugged anyone before.../", "obj_dummyenemy_slash_Step_0_gml_868_0");
			global.msg[1] = stringsetloc("\\E1* (Besides the dummy^1, to test it out,)/", "obj_dummyenemy_slash_Step_0_gml_869_0");
			global.msg[2] = stringsetloc("\\E2* So I don't know anything about it^1, sorry.../", "obj_dummyenemy_slash_Step_0_gml_870_0");
			global.msg[3] = stringsetloc("\\E7* I suppose you're the one teaching me^1, haha!/%", "obj_dummyenemy_slash_Step_0_gml_871_0");
		}
		if (r_hugtime >= 3)
			global.msg[0] = stringsetloc("\\E2* .../%", "obj_dummyenemy_slash_Step_0_gml_876_0");
		r_hugtime += 1;
		scr_battletext();
		actcon = 36;
	}
	if (actcon == 36 && !instance_exists(obj_writer))
	{
		with (myface)
			instance_destroy();
		with (k)
			image_speed = -0.25;
		actcon = 37;
		alarm[4] = 12;
	}
	if (actcon == 38)
	{
		with (k)
			image_speed = 0;
		with (k)
			scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15);
		actcon = 39;
		alarm[4] = 25;
	}
	if (actcon == 40)
	{
		makekris = 0;
		maker = 0;
		with (rb)
			instance_destroy();
		with (obj_heroralsei)
			visible = 1;
		with (k)
			instance_destroy();
		global.charinstance[0].visible = 1;
		actcon = 1;
	}
	if (actcon >= 30 && actcon < 40)
	{
		if (makekris == 1)
		{
			with (k)
				scr_depth();
			with (k)
				depth -= 100000;
		}
		if (maker == 1)
		{
			with (rb)
				scr_depth();
			with (rb)
				depth -= 100000;
		}
	}
}
if (instance_exists(obj_battlecontroller) == false)
	instance_destroy();
