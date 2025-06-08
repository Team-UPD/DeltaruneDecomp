if (global.monster[myself] == 1)
{
	talkOrder = myself;
	if (!color_init)
	{
		var color_index = 0;
		with (obj_swatchling_enemy)
		{
			if (!color_init)
			{
				color_init = true;
				new_color = color_index;
				currentcolor = base_colors[new_color];
				previouscolor = base_colors[new_color];
				color_index++;
			}
		}
	}
	if (!loaded_color)
	{
		if (currentcolor != current_pal)
			current_pal = (current_pal > currentcolor) ? clamp(current_pal - 0.1, currentcolor, 255) : clamp(current_pal + 0.1, 0, currentcolor);
		else
			loaded_color = true;
	}
	if (scr_monsterpop() == 1 && global.monsterstatus[myself] == 0)
		scr_monster_make_tired(myself);
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		var changedcolor = currentcolor != previouscolor;
		var justchanged = false;
		var allprimary = true;
		var mismatch_check = 0;
		with (obj_swatchling_enemy)
		{
			if (currentcolor != other.currentcolor)
				mismatch_check++;
			if (currentcolor != previouscolor)
				justchanged = true;
			if (currentcolor != blue && currentcolor != red && currentcolor != yellow)
				allprimary = false;
		}
		coordinated = mismatch_check == 0;
		var justcoordinated = coordinated && justchanged;
		msgsetloc(0, "Welcome,&young masters.", "obj_swatchling_enemy_slash_Step_0_gml_54_0");
		if (talkOrder == 1)
			msgsetloc(0, "We have prepared several&attack patterns for&your enjoyment.", "obj_swatchling_enemy_slash_Step_0_gml_57_0");
		else if (talkOrder == 2)
			msgsetloc(0, "Please enjoy them&at your convenience.", "obj_swatchling_enemy_slash_Step_0_gml_60_0");
		if (turns >= 1)
		{
			msgsetloc(0, "Tut, tut.&It looks like pain.", "obj_swatchling_enemy_slash_Step_0_gml_157_0");
			if (!setmessage)
			{
				var myRandom = choose(0, 1, 2);
				with (obj_swatchling_enemy)
				{
					randomMessage = myRandom;
					setmessage = true;
				}
			}
			if (randomMessage < 2)
			{
				if (currentcolor == blue)
					msgsetloc(0, "We'll shine your shoes&'til they're black and blue.", "obj_swatchling_enemy_slash_Step_0_gml_162_0");
				else if (currentcolor == red)
					msgsetloc(0, "We'll make your bed&with sheets blood red.", "obj_swatchling_enemy_slash_Step_0_gml_165_0");
				else if (currentcolor == yellow)
					msgsetloc(0, "We'll make yellow sweets&for you, just try&not to hurt your tooth.", "obj_swatchling_enemy_slash_Step_0_gml_168_0");
				else if (currentcolor == orange)
					msgsetloc(0, "Please enjoy these&complimentary birds.", "obj_swatchling_enemy_slash_Step_0_gml_178_0");
				else if (currentcolor == green)
					msgsetloc(0, "Would you like&some horse'dovours?", "obj_swatchling_enemy_slash_Step_0_gml_181_0");
			}
			else if (randomMessage == 2)
			{
				if (currentcolor == blue)
				{
					var blueText = (random(100) >= 95) ? stringsetloc("What? The lasagna&has some kind of&explosive in it?", "obj_swatchling_enemy_slash_Step_0_gml_174_0") : stringsetloc("Please enjoy this&complimentary body slam.", "obj_swatchling_enemy_slash_Step_0_gml_174_1");
					msgset(0, blueText);
				}
			}
			if (changedcolor)
			{
				if (currentcolor == blue)
					msgsetloc(0, "I'm feeling&blue.", "obj_swatchling_enemy_slash_Step_0_gml_119_0");
				else if (currentcolor == red)
					msgsetloc(0, "I'm seeing&red.", "obj_swatchling_enemy_slash_Step_0_gml_122_0");
				else if (currentcolor == yellow)
					msgsetloc(0, "I'm a yellow&fellow.", "obj_swatchling_enemy_slash_Step_0_gml_125_0");
				else if (currentcolor == orange)
					msgsetloc(0, "How about some&orange peel.", "obj_swatchling_enemy_slash_Step_0_gml_160_0");
				else if (currentcolor == green)
					msgsetloc(0, "A green lime&for your drink?", "obj_swatchling_enemy_slash_Step_0_gml_164_0");
			}
		}
		if (justcoordinated)
		{
			if (talkOrder == 0)
				msgsetloc(0, "We feel so&coordinated.", "obj_swatchling_enemy_slash_Step_0_gml_106_0");
			else if (talkOrder == 1)
				msgsetloc(0, "Thank you,&young masters.", "obj_swatchling_enemy_slash_Step_0_gml_109_0");
			else if (talkOrder == 2)
				msgsetloc(0, "Thank you.", "obj_swatchling_enemy_slash_Step_0_gml_112_0");
		}
		if (scr_monsterpop() == 1 && !becameAlone)
		{
			becameAlone = true;
			msgsetloc(0, "My outfit is coordinated now.&With myself.", "obj_swatchling_enemy_slash_Step_0_gml_46_0");
		}
		if (myself == (scr_monsterpop() - 1))
		{
			with (obj_swatchling_enemy)
				previouscolor = currentcolor;
		}
		global.typer = 50;
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
		rtimer += 1;
		if (rtimer == 1)
		{
			if (!instance_exists(obj_swatchling_battle_controller))
				instance_create(0, 0, obj_swatchling_battle_controller);
			if (currentcolor == blue)
				obj_swatchling_battle_controller.blue_count++;
			else if (currentcolor == red || currentcolor == orange)
				obj_swatchling_battle_controller.red_count++;
			else
				obj_swatchling_battle_controller.yellow_count++;
		}
		if (currentcolor == blue && rtimer == 2)
		{
			global.monsterattackname[myself] = "Bounce";
			dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
			dc.type = 7;
			dc.creator = myself;
		}
		if (rtimer == 16)
		{
			if (!instance_exists(obj_swatchling_battle_controller))
				instance_create(0, 0, obj_swatchling_battle_controller);
			if (currentcolor == red || currentcolor == orange)
			{
				global.monsterattackname[myself] = "Shockwave";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 5;
				if (currentcolor == orange)
					dc.special = 1;
				dc.creator = myself;
			}
			else if (currentcolor == yellow || currentcolor == green)
			{
				global.monsterattackname[myself] = "Platter";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 6;
				if (currentcolor == green)
					dc.special = 1;
				dc.creator = myself;
			}
			else
			{
				global.monsterattackname[myself] = "Bounce";
			}
			scr_turntimer(180);
			setmessage = false;
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			var battleText = "";
			var monsterPop = scr_monsterpop();
			rr = choose(0, 1, 2, 3, 4);
			if (rr == 0)
				battleText = (monsterPop > 1) ? stringsetloc("* The Swatchlings are cleaning each other off with feather dusters.", "obj_swatchling_enemy_slash_Step_0_gml_284_0") : stringsetloc("* Swatchling feather dusts itself.", "obj_swatchling_enemy_slash_Step_0_gml_284_1");
			if (rr == 1)
				battleText = (monsterPop > 1) ? stringsetloc("* Swatchlings flex their backs while bending over to inspect a teacup.", "obj_swatchling_enemy_slash_Step_0_gml_285_0") : stringsetloc("* Swatchling flexes all of its back muscles while inspecting a teacup.", "obj_swatchling_enemy_slash_Step_0_gml_285_1");
			if (rr == 2)
				battleText = stringsetloc("* The Swatchlings wipe at the face of their chained pocketwatch, which is digital.", "obj_swatchling_enemy_slash_Step_0_gml_286_0");
			if (rr == 3)
				battleText = stringsetloc("* The Swatchlings are adjusting their hue and saturation.", "obj_swatchling_enemy_slash_Step_0_gml_287_0");
			if (rr == 4)
				battleText = stringsetloc("* Smells like paint and feathers.", "obj_swatchling_enemy_slash_Step_0_gml_288_0");
			if (coordinated)
				battleText = stringsetloc("* The Swatchlings are relieved their wardrobe has been coordinated.", "obj_swatchling_enemy_slash_Step_0_gml_302_0");
			if (global.monsterstatus[myself] == 1)
				battleText = stringsetloc("* The Swatchling is dreading doing all of the work by itself.", "obj_swatchling_enemy_slash_Step_0_gml_307_0");
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
		msgsetloc(0, "* SWATCHLING - Happiest when their outfits are color-coordinated./%", "obj_swatchling_enemy_slash_Step_0_gml_328_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		rr = choose(0, 1, 2);
		if (rr == 0)
			msgsetloc(0, "* Talked about the color of the summer sun shining on a beach ball./%", "obj_swatchling_enemy_slash_Step_0_gml_336_0");
		if (rr == 1)
			msgsetloc(0, "* Talked about the steam of a fresh hot chocolate./%", "obj_swatchling_enemy_slash_Step_0_gml_337_0");
		if (rr == 2)
			msgsetloc(0, "* Talked about the warmth of a loving embrace./%", "obj_swatchling_enemy_slash_Step_0_gml_338_0");
		scr_battletext_default();
		actcon = 5;
	}
	if (acting == 3 && actcon == 0)
	{
		rr = choose(0, 1, 2);
		if (rr == 0)
			msgsetloc(0, "* Talked about the crunch of the last pickle in the refrigerator./%", "obj_swatchling_enemy_slash_Step_0_gml_348_0");
		if (rr == 1)
			msgsetloc(0, "* Talked about the chill of the wind on the ice skating pond./%", "obj_swatchling_enemy_slash_Step_0_gml_349_0");
		if (rr == 2)
			msgsetloc(0, "* Talked about the snow matted on your brother's nose./%", "obj_swatchling_enemy_slash_Step_0_gml_350_0");
		scr_battletext_default();
		actcon = 5;
	}
	if (actcon == 5)
	{
		previouscolor = currentcolor;
		var warmify = acting == 2 || actconsus == 2;
		var extreme = (actconsus == 2 || actconral == 2) ? 1 : 2;
		if (extreme == 2 && instance_number(obj_swatchling_enemy) != 1)
		{
			var a = 0;
			if (currentcolor == blue || currentcolor == yellow)
			{
				for (i = 0; i < instance_number(obj_swatchling_enemy); i += 1)
				{
					enemy[i] = instance_find(obj_swatchling_enemy, i);
					if (enemy[i].currentcolor == green)
						a++;
				}
			}
			if (currentcolor == red || currentcolor == yellow)
			{
				for (i = 0; i < instance_number(obj_swatchling_enemy); i += 1)
				{
					enemy[i] = instance_find(obj_swatchling_enemy, i);
					if (enemy[i].currentcolor == orange)
						a++;
				}
			}
			if (currentcolor == orange || currentcolor == green)
			{
				for (i = 0; i < instance_number(obj_swatchling_enemy); i += 1)
				{
					enemy[i] = instance_find(obj_swatchling_enemy, i);
					if (enemy[i].currentcolor == yellow)
						a++;
				}
			}
			if (a == (instance_number(obj_swatchling_enemy) - 1))
				extreme = 1;
		}
		if (warmify)
			currentcolor = clamp(currentcolor + extreme, blue, red);
		else
			currentcolor = clamp(currentcolor - extreme, blue, red);
		actcon = 10;
		scr_battletext_default();
	}
	if (actcon == 10 && !instance_exists(obj_writer))
	{
		if (currentcolor != current_pal)
			current_pal = (current_pal > currentcolor) ? clamp(current_pal - 0.1, currentcolor, 255) : clamp(current_pal + 0.1, 0, currentcolor);
		else
			actcon = 20;
	}
	if (actcon == 20 && !instance_exists(obj_writer))
	{
		var changedcolor = currentcolor != previouscolor;
		if (changedcolor == false)
		{
			var temp = (currentcolor == blue) ? stringsetloc("cold", "obj_swatchling_enemy_slash_Step_0_gml_383_0") : stringsetloc("warm", "obj_swatchling_enemy_slash_Step_0_gml_383_1");
			msgsetsubloc(0, "* But Swatchling is already as ~1 as can be!/%", temp, "obj_swatchling_enemy_slash_Step_0_gml_395_0");
		}
		else
		{
			var warmify = currentcolor > previouscolor;
			var colorText = stringsetloc("blue", "obj_swatchling_enemy_slash_Step_0_gml_422_0_b");
			if (currentcolor == red)
				colorText = stringsetloc("red", "obj_swatchling_enemy_slash_Step_0_gml_425_0");
			else if (currentcolor == yellow)
				colorText = stringsetloc("yellow", "obj_swatchling_enemy_slash_Step_0_gml_428_0");
			if (currentcolor == green)
				colorText = stringsetloc("green", "obj_swatchling_enemy_slash_Step_0_gml_431_0");
			if (currentcolor == orange)
				colorText = stringsetloc("orange", "obj_swatchling_enemy_slash_Step_0_gml_434_0");
			var extreme = (actconsus == 2 || actconral == 2) ? stringsetloc("a little bit", "obj_swatchling_enemy_slash_Step_0_gml_404_0") : stringsetloc("a lot", "obj_swatchling_enemy_slash_Step_0_gml_404_1");
			if (warmify)
				msgsetsubloc(0, "* Swatchling's color got ~1 warmer...! It's now ~2!/%", extreme, colorText, "obj_swatchling_enemy_slash_Step_0_gml_419_0");
			else
				msgsetsubloc(0, "* Swatchling's color turned ~1 colder...! It's now ~2!/%", extreme, colorText, "obj_swatchling_enemy_slash_Step_0_gml_422_0");
		}
		var mismatch_check = 0;
		with (obj_swatchling_enemy)
		{
			if (currentcolor != other.currentcolor)
				mismatch_check++;
		}
		var newly_coordinated = mismatch_check == 0;
		if (newly_coordinated)
		{
			with (obj_swatchling_enemy)
			{
				if (global.mercymod[myself] < global.mercymax[myself])
					scr_mercyadd(myself, 100);
			}
		}
		actcon = 1;
		actconral = 0;
		actconsus = 0;
		scr_battletext_default();
	}
	if (actingsus == 1 && actconsus == 1)
	{
		var sentenceEnd = (currentcolor == red) ? "/" : "/%";
		var random_text = choose(0, 1, 2);
		if (random_text == 0)
			msgsetsubloc(0, "* Susie mentions explosions.~1", sentenceEnd, "obj_swatchling_enemy_slash_Step_0_gml_444_0");
		if (random_text == 1)
			msgsetsubloc(0, "* Susie mentions lava.~1", sentenceEnd, "obj_swatchling_enemy_slash_Step_0_gml_432_0");
		if (random_text == 2)
			msgsetsubloc(0, "* Susie mentions hot peppers.~1", sentenceEnd, "obj_swatchling_enemy_slash_Step_0_gml_436_0");
		if (currentcolor == red)
		{
			msgnextloc("* But nothing happened!/%", "obj_swatchling_enemy_slash_Step_0_gml_437_0");
			actcon = 1;
			actconsus = 0;
		}
		else
		{
			actcon = 5;
			actconsus = 2;
		}
		scr_battletext_default();
	}
	if (actingral == 1 && actconral == 1)
	{
		var sentenceEnd = (currentcolor == blue) ? "/" : "/%";
		var random_text = choose(0, 1, 2);
		if (random_text == 0)
			msgsetsubloc(0, "* Ralsei mentions mint tea.~1", sentenceEnd, "obj_swatchling_enemy_slash_Step_0_gml_456_0");
		if (random_text == 1)
			msgsetsubloc(0, "* Ralsei mentions icy scarves.~1", sentenceEnd, "obj_swatchling_enemy_slash_Step_0_gml_465_0");
		if (random_text == 2)
			msgsetsubloc(0, "* Ralsei mentions ice cream.~1", sentenceEnd, "obj_swatchling_enemy_slash_Step_0_gml_469_0");
		if (currentcolor == blue)
		{
			msgnextloc("* But nothing happened!/%", "obj_swatchling_enemy_slash_Step_0_gml_460_0");
			actcon = 1;
			actconral = 0;
		}
		else
		{
			actcon = 5;
			actconral = 2;
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
		scr_nextact();
}
