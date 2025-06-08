if (global.monstertype[myself] == 21)
	secondtime = 1;
if (global.monster[myself] == 1)
{
	global.flag[51 + myself] = 4;
	if (secondtime == 1)
		milk_counter = 99;
	if (secondtime == 1)
		ralsei_lecture = 99;
	if (global.mnfight == 1 && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		milkmax = 1000;
		if (milk_counter > 0)
			milkmax = 600;
		if (global.monsterhp[myself] > milkmax)
		{
			if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
		global.mnfight = 2;
		rtimer = 0;
		global.typer = 50;
		talked = 2;
		attacked = 0;
		talktimer = 0;
	}
	if (talked == 2)
		global.mnfight = 2;
	if (global.mnfight == 2 && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			talked = 0;
			milkmax = 1000;
			if (milk_counter > 0)
				milkmax = 600;
			if (global.monsterhp[myself] <= milkmax)
			{
				if (scon == 0)
					scon = 1;
			}
			else
			{
				if (!instance_exists(obj_checkers_leap))
				{
					if (attacktype == 0)
						rr = 0;
					if (attacktype == 1)
						rr = 3;
					if (attacktype == 2)
						rr = 1;
					if (attacktype == 3)
						rr = 2;
					dc = instance_create(x, y, obj_checkers_leap);
					dc.leapmode = rr;
					dc.target = mytarget;
					dc.damage = global.monsterat[myself] * 5;
					attacktype += 1;
					if (attacktype > 3)
						attacktype = 0;
				}
				siner = 0;
				visible = 0;
				turns += 1;
			}
			global.turntimer = 999;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0);
			global.battlemsg[0] = stringsetloc("* K.Round shuffles furiously.", "obj_checkers_enemy_slash_Step_0_gml_77_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = stringsetloc("* K.Round looks weak.", "obj_checkers_enemy_slash_Step_0_gml_79_0");
			if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				global.battlemsg[0] = stringsetloc("* K.Round's shuffle becomes lethargic.", "obj_checkers_enemy_slash_Step_0_gml_80_0");
			if (crown > 0)
				global.battlemsg[0] = stringsetsubloc("* The crown is \\cY~1-percent\\cW loose!", string(crown), "obj_checkers_enemy_slash_Step_0_gml_82_0");
		}
		else
		{
			global.turntimer = 120;
		}
	}
	if (global.mnfight == 2)
	{
		if (global.turntimer <= 1)
		{
			if (battlecancel == 1)
				global.mercymod[myself] = 999;
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
if (scon == 1)
{
	if (milk_counter > 0)
	{
		scon = 1.5;
	}
	else
	{
		with (obj_writer)
			instance_destroy();
		global.msg[0] = stringsetloc("* K. ROUND felt stressed out and attacked!/%", "obj_checkers_enemy_slash_Step_0_gml_119_0");
		scr_battletext_default();
		scon = 1.5;
	}
}
if (scon == 1.5 && !instance_exists(obj_writer))
{
	snd_play(snd_magicsprinkle);
	with (obj_writer)
		instance_destroy();
	global.msg[0] = stringsetloc("* K. ROUND practiced self-care!", "obj_checkers_enemy_slash_Step_0_gml_129_0");
	global.turntimer = 999;
	scr_battletext_default();
	milk = scr_dark_marker(x - 100, y + 60, spr_checkers_milk);
	with (milk)
	{
		image_speed = 0;
		image_xscale = 4;
		image_yscale = 4;
		image_alpha = 0;
	}
	milk.depth = depth - 1;
	scon = 2;
	milktimer = 0;
}
if (scon == 2)
{
	with (milk)
	{
		image_xscale -= 0.2;
		image_yscale -= 0.2;
		image_alpha += 0.1;
	}
	milktimer += 1;
	if (milktimer >= 10)
	{
		scon = 3;
		milktimer = 0;
		with (milk)
			image_alpha = 1.4;
	}
}
if (scon == 3)
{
	milktimer += 1;
	if (milktimer >= 25)
	{
		scon = 4;
		milktimer = 0;
	}
}
if (scon == 4)
{
	with (milk)
	{
		hspeed += 2;
		image_alpha -= 0.1;
	}
	milktimer += 1;
	if (milktimer == 10)
	{
		if (global.monsterat[myself] < 10)
			global.monsterat[myself] += 0.5;
		snd_play(snd_power);
		milkheal = 700;
		if (milk_counter == 0)
			milkheal = 300;
		global.monsterhp[myself] += milkheal;
		healamt = instance_create(global.monsterx[myself], global.monstery[myself], obj_dmgwriter);
		with (healamt)
		{
			delay = 8;
			type = 3;
			damage = 700;
		}
		healamt.damage = milkheal;
		hanim = instance_create(x, y, obj_healanim);
		hanim.target = id;
	}
	if (milktimer >= 15)
	{
		with (milk)
			instance_destroy();
		scon = 5;
		milktimer = 0;
	}
}
if (scon == 5)
{
	milktimer += 1;
	if (milktimer >= 30)
	{
		if (milk_counter > 0)
		{
			with (obj_writer)
				instance_destroy();
			scon = 0;
			milktimer = 0;
			global.turntimer = 0;
		}
		else
		{
			with (obj_writer)
				instance_destroy();
			scon = 6;
			global.msg[0] = stringsetloc("* K. ROUND's HP and ATTACK went up!/", "obj_checkers_enemy_slash_Step_0_gml_226_0");
			scr_ralface(1, 3);
			global.msg[2] = stringsetloc("* Susie^1! Stop attacking it^1! You're making it stronger!/", "obj_checkers_enemy_slash_Step_0_gml_228_0");
			scr_susface(3, 3);
			global.msg[4] = stringsetloc("* Pssh^1, and let it think I'm AFRAID^1? No way!/%", "obj_checkers_enemy_slash_Step_0_gml_230_0");
			scr_battletext_default();
		}
		milk_counter += 1;
	}
}
if (scon == 6)
{
	if (!instance_exists(obj_writer))
	{
		global.fc = 0;
		scon = 0;
		milktimer = 0;
		global.turntimer = 0;
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		if (secondtime == 0)
		{
			global.msg[0] = stringsetloc("* K.ROUND - AT 9 DF 3&* Check^1?&* That's chess^1, not checkers!/%", "obj_checkers_enemy_slash_Step_0_gml_263_0");
			global.actname[myself][0] = stringsetloc("Checkers", "obj_checkers_enemy_slash_Step_0_gml_264_0");
			global.flag[246] = 1;
			if (checked == 1)
				global.msg[0] = stringsetloc("* K.ROUND - AT 9 DF 3&* That's better./%", "obj_checkers_enemy_slash_Step_0_gml_268_0");
			checked = 1;
		}
		else
		{
			if (global.flag[246] == 1)
			{
				global.msg[0] = stringsetloc("* K.ROUND - AT 9 DF 3&* Watch out for its Flying King attack!/", "obj_checkers_enemy_slash_Step_0_gml_277_0");
				global.msg[1] = stringsetloc("* (Also^1, you need to get the CROWN off of its head.)/%", "obj_checkers_enemy_slash_Step_0_gml_278_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* K.ROUND - AT 9 DF 3&* It's being controlled into attacking...!/", "obj_checkers_enemy_slash_Step_0_gml_282_0");
				global.msg[1] = stringsetloc("* (Though^1, wouldn't it just attack anyway...?)/%", "obj_checkers_enemy_slash_Step_0_gml_283_0");
			}
			checked = 1;
		}
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		if (secondtime == 0)
			crown += 15;
		if (secondtime == 1)
			crown += 18;
		global.msg[0] = stringsetloc("* You bowed to K. ROUND./%", "obj_checkers_enemy_slash_Step_0_gml_296_0");
		with (obj_herokris)
			visible = 0;
		global.faceaction[0] = 0;
		global.charaction[0] = 0;
		bowkris = scr_dark_marker(obj_herokris.x, obj_herokris.y, spr_krisb_bow);
		with (bowkris)
		{
			scr_oflash();
			a = scr_afterimage();
			a.hspeed = 5;
			a.depth = depth + 1;
		}
		snd_play(snd_item);
		scr_battletext_default();
		actcon = 20;
	}
	if (actcon == 20 && !instance_exists(obj_writer))
	{
		visible = 0;
		bowcheck = scr_dark_marker(x, y, spr_checkers_bow);
		with (bowcheck)
			image_speed = 0.334;
		global.fc = 0;
		global.typer = 4;
		global.msg[0] = stringsetloc("* It bowed back^1.&* Its crown loosened a little./%", "obj_checkers_enemy_slash_Step_0_gml_327_0");
		if (ralsei_lecture == 0 && secondtime == 0)
		{
			global.msg[0] = stringsetloc("* It bowed back^1.&* Its crown loosened a little./", "obj_checkers_enemy_slash_Step_0_gml_330_0");
			scr_ralface(1, 0);
			global.msg[2] = stringsetloc("* That's it^1, Kris^1! If we can get its crown off.../", "obj_checkers_enemy_slash_Step_0_gml_332_0");
			global.msg[3] = stringsetloc("\\E8* It should turn back into a little guy...!/", "obj_checkers_enemy_slash_Step_0_gml_333_0");
			global.msg[4] = stringsetloc("\\E0* Susie^1! Help us bow at it!/", "obj_checkers_enemy_slash_Step_0_gml_334_0");
			scr_susface(5, 0);
			global.msg[6] = stringsetloc("* Nah^1, it's crown'll come off.../", "obj_checkers_enemy_slash_Step_0_gml_336_0");
			global.msg[7] = stringsetloc("\\E4* When I smash this guy into the GROUND!/", "obj_checkers_enemy_slash_Step_0_gml_337_0");
			scr_ralface(8, 1);
			global.msg[9] = stringsetloc("* .../%", "obj_checkers_enemy_slash_Step_0_gml_339_0");
			ralsei_lecture = 1;
		}
		if (thrown == 0 && secondtime == 1)
		{
			if (bowcounter == 0)
			{
				global.fc = 2;
				global.fe = 3;
				global.typer = 45;
				global.msg[0] = stringsetloc("* Huh!? That hardly did anything!/", "obj_checkers_enemy_slash_Step_0_gml_349_0");
				global.msg[1] = stringsetloc("\\E1* How can we push off that CROWN...?/", "obj_checkers_enemy_slash_Step_0_gml_350_0");
				scr_susface(2, 1);
				global.msg[3] = stringsetloc("* ... Hmm./%", "obj_checkers_enemy_slash_Step_0_gml_352_0");
			}
			if (bowcounter == 1)
			{
				global.fc = 2;
				global.fe = 3;
				global.typer = 45;
				global.msg[0] = stringsetloc("* It's still hardly working!/", "obj_checkers_enemy_slash_Step_0_gml_359_0");
				global.msg[1] = stringsetloc("\\E6* Whatever can we do^1, Kris...?/", "obj_checkers_enemy_slash_Step_0_gml_360_0");
				scr_susface(2, 2);
				global.msg[3] = stringsetloc("* ... Hey./%", "obj_checkers_enemy_slash_Step_0_gml_362_0");
			}
			if (bowcounter == 2)
			{
				global.fc = 2;
				global.fe = 8;
				global.typer = 45;
				global.msg[0] = stringsetloc("* Sometimes persistence is key^1, Kris!!/", "obj_checkers_enemy_slash_Step_0_gml_369_0");
				global.msg[1] = stringsetloc("\\E6* It'll be hard^1, but we can do it!!/", "obj_checkers_enemy_slash_Step_0_gml_370_0");
				scr_susface(2, 7);
				global.msg[3] = stringsetloc("* HEY YOU GUYS!!!/%", "obj_checkers_enemy_slash_Step_0_gml_372_0");
			}
		}
		bowcounter += 1;
		scr_battletext();
		actcon = 21;
	}
	if (actcon == 21 && !instance_exists(obj_writer))
	{
		with (bowkris)
			instance_destroy();
		with (bowcheck)
			instance_destroy();
		visible = 1;
		with (obj_herokris)
			visible = 1;
		actcon = 1;
	}
	if (secondtime == 0)
	{
		if (acting == 3 && actcon == 0)
		{
			crown += 20;
			global.msg[0] = stringsetloc("* You and Ralsei bowed./%", "obj_checkers_enemy_slash_Step_0_gml_398_0");
			with (obj_herokris)
				visible = 0;
			with (obj_heroralsei)
				visible = 0;
			global.faceaction[0] = 0;
			global.charaction[0] = 0;
			global.faceaction[1] = 0;
			global.charaction[1] = 0;
			bowkris = scr_dark_marker(obj_herokris.x, obj_herokris.y, spr_krisb_bow);
			with (bowkris)
			{
				scr_oflash();
				a = scr_afterimage();
				a.hspeed = 5;
				a.depth = depth + 1;
			}
			bowral = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_bow);
			with (bowral)
			{
				scr_oflash();
				a = scr_afterimage();
				a.hspeed = 5;
				a.depth = depth + 1;
			}
			snd_play(snd_item);
			scr_battletext_default();
			actcon = 30;
		}
	}
	if (actcon == 30 && !instance_exists(obj_writer))
	{
		visible = 0;
		bowcheck = scr_dark_marker(x, y, spr_checkers_bow);
		with (bowcheck)
			image_speed = 0.5;
		global.msg[0] = stringsetloc("* K. ROUND bowed back^1.&* Its crown loosened!/%", "obj_checkers_enemy_slash_Step_0_gml_442_0");
		if (ralsei_lecture == 0 && secondtime == 0)
		{
			global.msg[0] = stringsetloc("* K. ROUND bowed back^1.&* Its crown loosened!/", "obj_checkers_enemy_slash_Step_0_gml_445_0");
			scr_ralface(1, 0);
			global.msg[2] = stringsetloc("* That's it^1, Kris^1! If we can get its crown off.../", "obj_checkers_enemy_slash_Step_0_gml_447_0");
			global.msg[3] = stringsetloc("\\E8* It should turn back into a little guy...!/", "obj_checkers_enemy_slash_Step_0_gml_448_0");
			global.msg[4] = stringsetloc("\\E0* Susie^1! Help us bow at it!/", "obj_checkers_enemy_slash_Step_0_gml_449_0");
			scr_susface(5, 0);
			global.msg[6] = stringsetloc("* Nah^1, its crown'll come off.../", "obj_checkers_enemy_slash_Step_0_gml_451_0");
			global.msg[7] = stringsetloc("\\E4* When I smash this guy to the GROUND!/", "obj_checkers_enemy_slash_Step_0_gml_452_0");
			scr_ralface(8, 1);
			global.msg[9] = stringsetloc("* .../%", "obj_checkers_enemy_slash_Step_0_gml_454_0");
			ralsei_lecture = 1;
		}
		scr_battletext_default();
		actcon = 31;
	}
	if (actcon == 31 && !instance_exists(obj_writer))
	{
		with (bowral)
			instance_destroy();
		with (bowkris)
			instance_destroy();
		with (bowcheck)
			instance_destroy();
		visible = 1;
		with (obj_heroralsei)
			visible = 1;
		with (obj_herokris)
			visible = 1;
		actcon = 1;
	}
	if (secondtime == 1)
	{
		if (acting == 3 && actcon == 0)
		{
			if (thrown == 1)
			{
				with (trsus)
					instance_destroy();
				thrown = 2;
			}
			if (thrown > 0)
			{
				global.actname[myself][2] = stringsetloc("Throw", "obj_checkers_enemy_slash_Step_0_gml_487_0");
				global.msg[0] = stringsetsubloc("* Press ~1 to determine the ANGLE!", scr_get_input_name(6), "obj_checkers_enemy_slash_Step_0_gml_489_0");
				flash = 0;
				becomeflash = 0;
				scr_battletext_default();
				actcon = 90;
				instance_create(x, y, obj_throwtarget);
				throwsus = instance_create(obj_herosusie.x, obj_herosusie.y, obj_throwralsei);
				visible = 0;
				global.faceaction[1] = 0;
				global.charaction[1] = 0;
				global.faceaction[2] = 0;
				global.charaction[2] = 0;
				with (obj_herosusie)
					visible = 0;
				with (obj_heroralsei)
					visible = 0;
				snd_play(snd_grab);
			}
			else
			{
				global.typer = 31;
				global.fc = 2;
				global.fe = 6;
				global.msg[0] = stringsetloc("* Susie^1? You want to ACT^1? Aww, what's your idea?/", "obj_checkers_enemy_slash_Step_0_gml_510_0");
				scr_susface(1, 0);
				global.msg[2] = stringsetloc("* Umm..^1. well..^1. how do I say this./", "obj_checkers_enemy_slash_Step_0_gml_512_0");
				global.msg[3] = stringsetloc("* I kind of..^1.&* Need you for this one./", "obj_checkers_enemy_slash_Step_0_gml_513_0");
				scr_ralface(4, 8);
				global.msg[5] = stringsetloc("* That's fine^1, Susie^1!&* I'll help!/", "obj_checkers_enemy_slash_Step_0_gml_515_0");
				global.msg[6] = stringsetloc("\\E0* You want to apologize to it for earlier^1, right?/", "obj_checkers_enemy_slash_Step_0_gml_516_0");
				scr_susface(7, 2);
				global.msg[8] = stringsetloc("* Nah^1, I just need you to stay still./%", "obj_checkers_enemy_slash_Step_0_gml_518_0");
				actcon = 10;
				scr_battletext();
			}
		}
	}
	if (acting == 4 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = stringsetloc("* You explained to K. Round about the importance of dodging Susie's attacks./", "obj_checkers_enemy_slash_Step_0_gml_531_0");
		global.msg[1] = stringsetloc("* But it didn't seem to understand.../%", "obj_checkers_enemy_slash_Step_0_gml_532_0");
		if (warned == 1)
		{
			global.msg[0] = stringsetloc("* You started making siren noises with your mouth and looking at Susie./", "obj_checkers_enemy_slash_Step_0_gml_535_0");
			global.msg[1] = stringsetloc("* K. Round still didn't understand.../%", "obj_checkers_enemy_slash_Step_0_gml_536_0");
		}
		if (warned == 2)
		{
			global.msg[0] = stringsetloc("* You started explaining that Susie is really dangerous and strong./", "obj_checkers_enemy_slash_Step_0_gml_540_0");
			global.msg[1] = stringsetloc("* Susie got a large boost to her morale./", "obj_checkers_enemy_slash_Step_0_gml_541_0");
			global.msg[2] = stringsetloc("* Susie's ATTACK went up massively...!/%", "obj_checkers_enemy_slash_Step_0_gml_542_0");
			global.battleat[2] *= 1.5;
		}
		warned += 1;
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		if (crown >= 100)
		{
			global.mercymod[myself] = 999;
			actcon = 50;
		}
		else
		{
			scr_attackphase();
		}
	}
	if (actcon == 10 && !instance_exists(obj_writer))
	{
		actcon = 11;
		alarm[4] = 30;
		with (obj_herosusie)
			visible = 0;
		with (obj_heroralsei)
			visible = 0;
		thrown = 1;
		trsus = scr_dark_marker(obj_herosusie.x, obj_herosusie.y, spr_susieb_throwralseiready);
		snd_play(snd_grab);
	}
	if (actcon == 12)
	{
		global.fe = 7;
		global.msg[0] = stringsetloc("* Kris^1! We gotta get that CROWN off its head!/", "obj_checkers_enemy_slash_Step_0_gml_578_0");
		global.msg[1] = stringsetloc("* Help me throw Ralsei at it!/%", "obj_checkers_enemy_slash_Step_0_gml_579_0");
		scr_battletext();
		actcon = 13;
	}
	if (actcon == 13 && !instance_exists(obj_writer))
		actcon = 0;
	if (actcon == 50)
	{
		visible = 0;
		snd_free_all();
		animtest = instance_create(x, y, obj_checker_animtest);
		animtest.sprite_index = spr_smallchecker_transform3;
		animtest.image_xscale = 2;
		animtest.image_yscale = 2;
		animtest.type = 1;
		actcon = 51;
	}
}
if (global.myfight == 7)
	hspeed = 15;
