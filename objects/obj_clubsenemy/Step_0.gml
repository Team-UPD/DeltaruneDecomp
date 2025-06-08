if (global.monster[myself] == 1)
{
	if (global.mnfight == 1 && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		rr = choose(0, 1, 2);
		text1 = stringsetloc("Nice mouth", "obj_clubsenemy_slash_Step_0_gml_13_0");
		text2 = stringsetloc("Anger mouth", "obj_clubsenemy_slash_Step_0_gml_14_0");
		text3 = stringsetloc("Smart Mouth", "obj_clubsenemy_slash_Step_0_gml_15_0");
		if (rr == 0)
		{
			text1 = stringsetloc("Nice to&see you&again!", "obj_clubsenemy_slash_Step_0_gml_19_0");
			text2 = stringsetloc("This&time you&die!", "obj_clubsenemy_slash_Step_0_gml_20_0");
			text3 = stringsetloc("Please&ignore&them.", "obj_clubsenemy_slash_Step_0_gml_21_0");
		}
		if (rr == 1)
		{
			text1 = stringsetloc("How well&do you&know us?", "obj_clubsenemy_slash_Step_0_gml_26_0");
			text2 = stringsetloc("YOU KNOW&NOTHING,&IDIOT!", "obj_clubsenemy_slash_Step_0_gml_27_0");
			text3 = stringsetloc("Sorry&about&this...", "obj_clubsenemy_slash_Step_0_gml_28_0");
		}
		if (rr == 2)
		{
			text1 = stringsetloc("Nice&dojo&today.", "obj_clubsenemy_slash_Step_0_gml_33_0");
			text2 = stringsetloc("What?&It's just&awful!", "obj_clubsenemy_slash_Step_0_gml_34_0");
			text3 = stringsetloc("Please&stop, you&two...", "obj_clubsenemy_slash_Step_0_gml_35_0");
		}
		global.msg[0] = text1;
		scr_enemyblcon(x - 110, y - 10, 4);
		global.msg[0] = text2;
		scr_enemyblcon(x - 125, y + 70, 5);
		global.msg[0] = text3;
		scr_enemyblcon(x + 125, y - 10, 6);
		with (obj_monsterparent)
			talkmax = 210;
		talked = 1;
		talktimer = 0;
		manual = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		rtimer = 0;
		scr_blconskip(15);
		if (global.mnfight == 2)
		{
			if (!instance_exists(obj_moveheart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			rr = choose(0, 1, 2);
			if (rr == 0)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 30;
				dc.target = mytarget;
				dc.ratio = 0.7;
				dc.grazepoints = 5;
				dc.timepoints = 2;
				dc.damage = global.monsterat[myself] * 5;
			}
			else if (rr == 1)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 31;
				dc.ratio = 0.7;
				dc.target = mytarget;
				dc.grazepoints = 5;
				dc.timepoints = 1;
				dc.damage = global.monsterat[myself] * 5;
			}
			else
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 33;
				dc.target = mytarget;
				dc.grazepoints = 5;
				dc.timepoints = 2;
				dc.damage = global.monsterat[myself] * 5;
			}
			turns += 1;
			global.turntimer = 240;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4, 5);
			if (rr == 0)
				global.battlemsg[0] = stringsetloc("* Clover flashes a trio of terrible smiles.", "obj_clubsenemy_slash_Step_0_gml_139_0");
			if (rr == 1)
				global.battlemsg[0] = stringsetloc("* Clover is bickering with herselves.", "obj_clubsenemy_slash_Step_0_gml_140_0");
			if (rr == 2)
				global.battlemsg[0] = stringsetloc("* Clover is whispering about cute boys.", "obj_clubsenemy_slash_Step_0_gml_141_0");
			if (rr == 3)
				global.battlemsg[0] = stringsetloc("* Clover is arguing about whose toothbrush is whose.", "obj_clubsenemy_slash_Step_0_gml_142_0");
			if (rr == 4)
				global.battlemsg[0] = stringsetloc("* Clover hums like an out-of-tune choir.", "obj_clubsenemy_slash_Step_0_gml_143_0");
			if (rr == 5)
				global.battlemsg[0] = stringsetloc("* Smells like clover and dew.", "obj_clubsenemy_slash_Step_0_gml_144_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = stringsetloc("* Clover seems TIRED of discussing so much.", "obj_clubsenemy_slash_Step_0_gml_145_0");
			if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				global.battlemsg[0] = stringsetloc("* Clover starts to look wilted.", "obj_clubsenemy_slash_Step_0_gml_146_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				global.msg[0] = stringsetloc("* Clover seems to be getting along with herselves.", "obj_clubsenemy_slash_Step_0_gml_147_0");
			if (betray == 1)
				global.battlemsg[0] = stringsetloc("* Clover's harmony was shattered by violence.", "obj_clubsenemy_slash_Step_0_gml_148_0");
			betray = 0;
		}
		else
		{
			global.turntimer = 150;
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
		global.msg[0] = stringsetloc("* CLOVER - AT 8 DF 2&* Two heads are better than one^1!&* Three..^1. maybe not./%", "obj_clubsenemy_slash_Step_0_gml_168_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		topic_con = 1;
		topic_timer = 90;
		topic_timer_total = topic_timer;
		actcon = 15;
	}
	if (topic_con == 1)
	{
		topic_con = 2;
		topic_count++;
		ds_list_shuffle(likes_list);
		ds_list_shuffle(dislikes_list);
		var choice_amount = 3;
		for (var i = 0; i < choice_amount; i++)
		{
			prepend = (i == 2 || i == 3) ? "" : "#";
			global.choicemsg[i] = prepend + ds_list_find_value(dislikes_list, i);
		}
		right_answer = floor(random(choice_amount));
		var prepend = (string_pos("#", global.choicemsg[right_answer]) != 0) ? "#" : "";
		global.choicemsg[right_answer] = prepend + ds_list_find_value(likes_list, 0);
		msgsetloc(0, "* Choose a topic that Clover likes!/%", "obj_clubsenemy_slash_Step_0_gml_233_0");
		scr_battletext_default();
	}
	if (topic_con == 2 && !i_ex(obj_writer))
	{
		topic_con = 3;
		msgset(0, "\\C3 ");
		scr_battletext_default();
	}
	if (topic_con == 3)
	{
		if (!i_ex(obj_writer) && !i_ex(obj_choicer_neo))
		{
			topic_con = 4;
		}
		else
		{
			topic_timer--;
			if (topic_timer <= 0)
			{
				topic_con = 4;
				topic_timeup = true;
				if (i_ex(obj_writer))
					instance_destroy(obj_writer);
				if (i_ex(obj_choicer_neo))
					instance_destroy(obj_choicer_neo);
			}
		}
	}
	if (topic_con == 4 && !i_ex(obj_writer) && !i_ex(obj_choicer_neo))
	{
		topic_start = false;
		topic_con = 0;
		if (topic_timeup)
		{
			topic_timeup = false;
			snd_play(snd_error);
			scr_miniface_init_clover();
			msgsetloc(0, "\\m1*\t\tTime's up!&\\m2\tTOO SLOW!&\\m3\t(Sorry...)/%", "obj_clubsenemy_slash_Step_0_gml_286_0");
		}
		else if (global.choice == right_answer)
		{
			snd_play(snd_won);
			if (global.mercymod[myself] < global.mercymax[myself])
			{
				var mercytotal = clamp(20 + (turns * 5), 20, 50);
				scr_mercyadd(myself, mercytotal);
			}
			scr_miniface_init_clover();
			msgsetloc(0, "\\m1*\t\tThat's right^2!&\\m2\tNot bad^2!&\\m3\t(It's OK...^2)/%", "obj_clubsenemy_slash_Step_0_gml_293_0");
		}
		else
		{
			snd_play(snd_error);
			scr_miniface_init_clover();
			msgsetloc(0, "\\m1*\t\tNo thanks!&\\m2\tWRONG!&\\m3\t(Is it that bad?)/%", "obj_clubsenemy_slash_Step_0_gml_296_0_b");
		}
		actcon = 1;
		scr_battletext_default();
	}
	if (acting == 3 && actcon == 0)
	{
		topic_con = 1;
		topic_timer = 300;
		topic_timer_total = topic_timer;
		actcon = 15;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		if (argue >= 3)
		{
			global.monstercomment[myself] = stringsetloc("(Tired)", "obj_clubsenemy_slash_Step_0_gml_256_0");
			global.monsterstatus[myself] = 1;
		}
		actcon = 0;
		scr_act_charsprite_end();
		scr_nextact();
	}
	if (actingsus == 1 && actconsus == 1)
	{
		scr_mercyadd(myself, 5);
		msgsetloc(0, "* Susie stood there awkwardly!/%", "obj_clubsenemy_slash_Step_0_gml_459_0");
		scr_simultext("susie");
		actconsus = 20;
	}
	if (actingral == 1 && actconral == 1)
	{
		scr_mercyadd(myself, 25);
		msgsetloc(0, "* Ralsei stood there cutely!/%", "obj_clubsenemy_slash_Step_0_gml_469_0");
		scr_simultext("ralsei");
		actconral = 20;
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
}
