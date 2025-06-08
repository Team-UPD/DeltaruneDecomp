if (ambushed == 0)
{
	scr_ambush();
	ambushed = 1;
}
if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		global.typer = 50;
		if (checkreact == true)
		{
			checkreact = false;
			msgsetloc(0, "\\M2Boss^1! Don't listen to&that^1! That's the wrong&ACT!^1! The wrong ACT!^1!/%", "obj_dojo_spareenemy_slash_Step_0_gml_19_0");
		}
		else if (sparecon == 1)
		{
			msgsetloc(0, "Ohhhh, boss,&you're sparing&me!?/%", "obj_dojo_spareenemy_slash_Step_0_gml_23_0");
		}
		else if (pacifycon == 1)
		{
			msgsetloc(0, "You did it, Boss!^1&If you can manage to SPARE enemies right away.../", "obj_dojo_spareenemy_slash_Step_0_gml_27_0");
			msgnextloc("Battles will go&a lot faster!&That's all!/%", "obj_dojo_spareenemy_slash_Step_0_gml_28_0");
		}
		else if (battlestate == 0)
		{
			msgsetloc(0, "Boss!/", "obj_dojo_spareenemy_slash_Step_0_gml_32_0");
			msgnextloc("You can ACT&and SPARE on&the same turn!/", "obj_dojo_spareenemy_slash_Step_0_gml_33_0");
			msgnextloc("If you know Kris's&ACT will give an&enemy 100`% mercy.../", "obj_dojo_spareenemy_slash_Step_0_gml_34_0");
			msgnextloc("SPARE them on&the same turn&with Susie&or Ralsei!/%", "obj_dojo_spareenemy_slash_Step_0_gml_35_0");
			battlestate = 1;
		}
		else if (battlestate <= 1)
		{
			global.battlemsg[0] = stringsetloc("* Jigsaw Joe looks vulnerable to ACTING and SPARING on the same turn.", "obj_dojo_spareenemy_slash_Step_0_gml_40_0");
			if (sparecon == -1)
			{
				if (beardcount < 99)
					beardcount++;
				msgsetsubloc(0, "\\M2Ah!! It's my&~1 o'clock shadow!/%", string(beardcount), "obj_dojo_spareenemy_slash_Step_0_gml_44_0");
				sparecon = 0;
			}
			else if (global.mercymod[myself] > 0)
			{
				scr_mercyadd(myself, -global.mercymod[myself]);
				shaved = false;
				msgsetloc(0, "\\M1* Jigsaw Joe's stubble regrew!/%", "obj_dojo_spareenemy_slash_Step_0_gml_51_0");
				scr_battletext_default();
				sparecon = -1;
			}
			else
			{
				msgsetloc(0, "Boss^1!&You gotta ACT&and SPARE on&the same turn!/%", "obj_dojo_spareenemy_slash_Step_0_gml_56_0");
			}
		}
		else if (battlestate == 2)
		{
			global.battlemsg[0] = stringsetloc("* Jigsaw Joe looks like he could use a bedtime story.", "obj_dojo_spareenemy_slash_Step_0_gml_60_0");
			global.mercymod[myself] = 0;
			msgsetloc(0, "\\M2WAIT A SECOND!!!^1&I got something else&to remind you of!/", "obj_dojo_spareenemy_slash_Step_0_gml_63_0");
			msgnextloc("\\M0Boss!/", "obj_dojo_spareenemy_slash_Step_0_gml_64_0");
			msgnextloc("It works the&same with making&an enemy TIRED!/", "obj_dojo_spareenemy_slash_Step_0_gml_65_0");
			msgnextloc("If an ACT&will make an&enemy TIRED.../", "obj_dojo_spareenemy_slash_Step_0_gml_66_0");
			if (global.tension >= 40)
			{
				msgnextloc("Use Ralsei's PACIFY&right away!/%", "obj_dojo_spareenemy_slash_Step_0_gml_67_0");
			}
			else
			{
				msgnextloc("Use Ralsei's PACIFY&right away!/", "obj_dojo_spareenemy_slash_Step_0_gml_74_0");
				msgnextloc("Of course, PACIFY is MAGIC,&so you'll need TP./", "obj_dojo_spareenemy_slash_Step_0_gml_75_0");
				msgnextloc("Spend a turn&DEFENDING to gain TP&if you have to, boss!/%", "obj_dojo_spareenemy_slash_Step_0_gml_76_0");
			}
			battlestate = 3;
			global.actactor[myself][1] = 2;
			global.actname[myself][1] = stringsetloc("SleepyStory", "obj_dojo_spareenemy_slash_Step_0_gml_70_0");
			global.actdesc[myself][1] = " ";
			global.actsimul[myself][1] = 1;
		}
		else if (battlestate == 3)
		{
			if (global.monsterstatus[myself] == 1)
			{
				pacifycon = -1;
				global.monstercomment[myself] = stringsetloc("", "obj_dojo_spareenemy_slash_Step_0_gml_79_0");
				global.monsterstatus[myself] = 0;
				image_speed *= 2;
				msgsetloc(0, "* Jigsaw Joe drank coffee^1! Jigsaw Joe stopped being TIRED!/%", "obj_dojo_spareenemy_slash_Step_0_gml_82_0");
				scr_battletext_default();
			}
			else
			{
				pacifycon = 0;
				if (global.tension < 40 && pacifycon != -2)
					msgsetloc(0, "Boss^1! If you don't&have the TP to use&PACIFY^1, DEFENDing&will give you TP!/%", "obj_dojo_spareenemy_slash_Step_0_gml_89_0");
				else
					msgsetloc(0, "Boss^1! You're putting me&to SLEEP^1! I mean, you&AREN'T^1! Make me TIRED&and PACIFY me, boss!/%", "obj_dojo_spareenemy_slash_Step_0_gml_91_0");
			}
		}
		else
		{
			msgsetloc(0, "Boss!!/%", "obj_dojo_spareenemy_slash_Step_0_gml_95_0");
		}
		if (sparecon != -1 && pacifycon != -1)
			scr_enemyblcon(x - 10, y + 30, 10);
		if (pacifycon == -1)
			talked = -1;
		else
			talked = 1;
		talktimer = 0;
	}
	if (talked == -1 && scr_isphase("enemytalk"))
	{
		if (talktimer < 15)
			talktimer++;
		else if (!instance_exists(obj_writer))
			talked = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		if (talktimer < 15)
			talktimer++;
		if (!instance_exists(obj_writer) && talktimer >= 15)
		{
			global.flag[20] = 0;
			if (sparecon == -1)
			{
				talked = 0;
				exit;
			}
			if (sparecon == 1)
			{
				sparecon = 0;
				scr_fakespare();
				battlestate = 2;
				fakespare = 1;
				alarm[0] = 90;
				talked = 0;
				global.mnfight = 8;
				global.mercymod[myself] = 0;
			}
			else if (pacifycon == 1)
			{
				scr_spareanim();
				scr_recruit();
				scr_monsterdefeat();
				instance_destroy();
				scr_mnendturn();
				with (obj_darkener)
					darken = 0;
			}
			else
			{
				with (obj_darkener)
					darken = 0;
				scr_mnendturn();
			}
		}
	}
	if (global.mnfight == 8)
		exit;
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		msgsetloc(0, "* JIGSAW JOE - Beat him up to earn his life savings!/%", "obj_dojo_spareenemy_slash_Step_0_gml_177_0");
		checkreact = true;
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0 && battlestate < 2)
	{
		shavesprite = scr_act_charsprite("kris", spr_krisb_attackready, 0, 0);
		msgsetloc(0, "* (You shaved Jigsaw Joe's stubble!)/%", "obj_dojo_spareenemy_slash_Step_0_gml_187_0");
		scr_battletext_default();
		actcon = 2;
	}
	if (acting == 2 && actcon == 0 && battlestate >= 2)
	{
		msgsetloc(0, "* Susie told the enemy a bedtime story about beating them up!^1&* The enemy became TIRED!/%", "obj_dojo_spareenemy_slash_Step_0_gml_195_0");
		image_speed /= 2;
		snd_play(snd_hypnosis);
		scr_battletext_default();
		actcon = 1;
		scr_monster_make_tired(myself);
	}
	if (acting == 1 && actconsus == 1)
	{
		msgsetloc(0, "* Susie acted!/%", "obj_dojograzeenemy_slash_Step_0_gml_97_0");
		scr_battletext_default();
		actcon = 1;
		actconsus = 0;
	}
	if (acting == 1 && actconral == 1)
	{
		msgsetloc(0, "* Ralsei acted!/%", "obj_dojograzeenemy_slash_Step_0_gml_106_0");
		scr_battletext_default();
		actcon = 1;
		actconral = 0;
	}
	if (actcon == 2 && !instance_exists(obj_writer))
	{
		actcon = 3;
		with (shavesprite)
		{
			sprite_index = spr_krisb_attack;
			scr_animate(0, 0, 1);
		}
		alarm[2] = 20;
		snd_play_pitch(snd_laz_c, 1.5);
		image_speed = 0;
		var _cut = instance_create(x + 34, y + 38, obj_animation);
		_cut.sprite_index = spr_attack_cut1;
		_cut.image_xscale = 0.25;
		_cut.image_yscale = 0.25;
		_cut.depth = depth - 1;
		_cut.image_speed = 1/3;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
		scr_nextact();
}
