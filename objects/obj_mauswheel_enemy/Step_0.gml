if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		rr = choose(0, 1, 2, 3);
		if (rr == 0)
			msgsetloc(0, "(I'm no cheater!&It's just cheese...)", "obj_mauswheel_enemy_slash_Step_0_gml_18_0");
		if (rr == 1)
			msgsetloc(0, "(We are grippable.&We are many.)", "obj_mauswheel_enemy_slash_Step_0_gml_23_0");
		if (rr == 2)
			msgsetloc(0, "(Rolling around at&the speed of mouse...)", "obj_mauswheel_enemy_slash_Step_0_gml_27_0");
		if (rr == 3)
			msgsetloc(0, "(Wired is FASTER!)", "obj_mauswheel_enemy_slash_Step_0_gml_31_0");
		if (global.mercymod[myself] >= global.mercymax[myself])
			msgsetloc(0, "(Well, everyone's captured.)&(What does that make me?)", "obj_mauswheel_enemy_slash_Step_0_gml_36_0");
		scr_enemyblcon(x - 20, global.monstery[myself], 10);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		scr_blconskip(15);
		if (scr_isphase("bullets"))
		{
			if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (scr_isphase("bullets") && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 16)
		{
			rr = 0;
			if (rr == 0)
			{
				event_user(9);
			}
			else
			{
				global.monsterattackname[myself] = "MausTrail";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 19;
				dc.target = mytarget;
			}
			scr_turntimer(140);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			if (global.monsterstatus[myself] == 1)
			{
				global.battlemsg[0] = stringsetloc("* Mauswheel's DPI is lowering.", "obj_mauswheel_enemy_slash_Step_0_gml_112_0");
			}
			else if (global.mercymod[myself] >= global.mercymax[myself])
			{
				global.battlemsg[0] = stringsetloc("* Mauswheel is just a spareable husk now.", "obj_mauswheel_enemy_slash_Step_0_gml_115_0");
			}
			else
			{
				rr = choose(0, 1, 2, 3);
				if (rr == 0)
					global.battlemsg[0] = stringsetloc("* Mauswheel is rolling around with an annoying wheel sound.", "obj_mauswheel_enemy_slash_Step_0_gml_130_0");
				if (rr == 1)
					global.battlemsg[0] = stringsetloc("* Mauswheel might make a good wreath, as a prank.", "obj_mauswheel_enemy_slash_Step_0_gml_131_0");
				if (rr == 2)
					global.battlemsg[0] = stringsetloc("* It's a cacophony of clicks.", "obj_mauswheel_enemy_slash_Step_0_gml_132_0");
				if (rr == 3)
					global.battlemsg[0] = stringsetloc("* Smells like a three-cheese pizza.", "obj_mauswheel_enemy_slash_Step_0_gml_133_0");
			}
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
	xx = camerax();
	yy = cameray();
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		msgsetloc(0, "* MAUSWHEEL - Two mice are better than one! ... Three^1, maybe not./", "obj_mauswheel_enemy_slash_Step_0_gml_157_0");
		msgnextloc("* The cursor will follow you everywhere^1. Keep moving!/%", "obj_mauswheel_enemy_slash_Step_0_gml_132_0_b");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		msgsetsubloc(0, "* Press ~1 To Trap!!!", scr_get_input_name(6), "obj_mauswheel_enemy_slash_Step_0_gml_163_0");
		scr_battletext_default();
		actfailure = 1;
		actcon = 15;
		basket_size = 0;
		alarm[4] = 10;
	}
	if (acting == 3 && actcon == 0)
	{
		msgsetsubloc(0, "* Press ~1 To Trap!!!", scr_get_input_name(6), "obj_mauswheel_enemy_slash_Step_0_gml_173_0");
		scr_battletext_default();
		actfailure = 1;
		actcon = 15;
		basket_size = 1;
		alarm[4] = 10;
	}
	if (actingsus == 1 && actconsus == 1)
	{
		msgsetloc(0, "* Susie got on all fours and chased the mouse around the room like an animal!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_183_0");
		scr_battletext_default();
		scr_mercyadd(myself, 5);
		actingsus = 0;
		actconsus = 0;
		actcon = 1;
	}
	if (actingral == 1 && actconral == 1 && !i_ex(obj_writer))
	{
		if (!trappedText)
		{
			trappedText = true;
			global.actsimulral[myself][0] = 1;
			msgsetloc(0, "* Ralsei started putting peanut butter on a spoon and put it in a trap!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_202_0");
			scr_mercyadd(myself, 5);
			actconral = 2;
			scr_battletext_default();
		}
		else
		{
			var simultext = (simultotal == 1) ? stringsetloc("* Ralsei sang a song about mice!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_212_0") : stringsetloc("* Ralsei sang a mouse song!/%", "obj_mauswheel_enemy_slash_Step_0_gml_212_1");
			msgset(0, simultext);
			scr_mercyadd(myself, 5);
			scr_battletext_default();
			actingral = 0;
			actconral = 0;
			actcon = 1;
		}
	}
	if (actconral == 2 && !instance_exists(obj_writer))
	{
		actconral = 2.5;
		basket = instance_create(obj_herosusie.x - 5, cameray() - 100, obj_maus_basket_susie);
		with (obj_herosusie)
			visible = 0;
		nise_susie = scr_dark_marker(obj_herosusie.x + 16, obj_herosusie.y - 1, spr_susie_shock_r);
		nise_susie.depth = obj_herosusie.depth;
		scr_speaker("no_name");
		msgsetloc(0, "* Susie was captured!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_209_0");
		scr_battletext_default();
	}
	if (actconral == 2.5 && basket.gravity == 0)
	{
		actconral = 3;
		with (nise_susie)
			scr_shakeobj();
		with (basket)
			scr_shakeobj();
		snd_play(snd_impact);
	}
	if (actconral == 3 && !instance_exists(obj_writer))
	{
		actcon = 1;
		actconral = 0;
		scr_speaker("ralsei");
		msgsetloc(0, "\\EN* Susie!!!/", "obj_mauswheel_enemy_slash_Step_0_gml_230_0");
		scr_anyface_next("susie", "5");
		msgnextloc("\\E5* The hell you blaming ME for!^1! YOU made the trap!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_243_0");
		scr_battletext();
	}
	if (actcon == 10)
	{
		basket = instance_create(x, y, obj_maus_basket);
		basket.maker = id;
		actcon = 11;
		actfailure = 1;
		basket.cancatch[myself] = 1;
		caught[0] = 0;
		caught[1] = 0;
		caught[2] = 0;
	}
	if (actcon == 12)
	{
		trappingX = false;
		with (obj_writer)
			instance_destroy();
		if (actfailure == 1)
			msgsetloc(0, "* You missed!/%", "obj_mauswheel_enemy_slash_Step_0_gml_269_0");
		else
			msgsetloc(0, "* You caught them!/%", "obj_mauswheel_enemy_slash_Step_0_gml_270_0");
		scr_battletext_default();
		actcon = 13;
		alarm[4] = 20;
	}
	if (actcon == 14 && !instance_exists(obj_writer))
		actcon = 1;
	if (actcon == 16)
	{
		instance_create(x + 60, y + 64, obj_maus_split);
		actcon = 17;
	}
	if (actcon == 18)
	{
		with (obj_writer)
			instance_destroy();
		if (actfailure == 1)
			msgsetloc(0, "* You missed!/%", "obj_mauswheel_enemy_slash_Step_0_gml_296_0");
		else
			msgsetloc(0, "* You caught them!/%", "obj_mauswheel_enemy_slash_Step_0_gml_297_0");
		scr_battletext_default();
		actcon = 13;
		alarm[4] = 20;
	}
	if (actcon == 19)
	{
		with (obj_writer)
			instance_destroy();
		if (global.flag[642] == 1)
		{
			actcon = 22.1;
		}
		else
		{
			msgsetloc(0, "* Mauswheel ran out of maice!/%", "obj_mauswheel_enemy_slash_Step_0_gml_312_0");
			scr_battletext_default();
			actcon = 21;
			alarm[4] = 20;
		}
	}
	if (actcon == 22)
		scr_spare(myself);
	if (actcon == 22.1)
	{
		msgsetloc(0, "* Mauswheel reached 100`% mercy!/%", "obj_mauswheel_enemy_slash_Step_0_gml_317_0");
		scr_battletext_default();
		actcon = 22.2;
	}
	if (actcon == 22.2 && !i_ex(obj_writer))
	{
		msgsetloc(0, "* But, it's still rolling out of control.../%", "obj_mauswheel_enemy_slash_Step_0_gml_324_0");
		scr_battletext_default();
		actcon = 22.3;
	}
	if (actcon == 22.3 && !i_ex(obj_writer))
	{
		msgsetloc(0, "* Suddenly...!/%", "obj_mauswheel_enemy_slash_Step_0_gml_331_0");
		scr_battletext_default();
		actcon = 23;
	}
	if (actcon > 22 && actcon < 23 && image_speed < 2)
		image_speed += 0.02;
	if (actcon == 23 && !i_ex(obj_writer))
	{
		instance_create((camerax() + 315) - 76, cameray() - 138, obj_mauswheel_tasquemanager);
		instance_create((camerax() + 435) - 74, cameray() - 80, obj_mauswheel_tasque);
		actcon = 25;
		alarm[4] = 25;
	}
	if (actcon == 26)
	{
		msgsetloc(0, "* We'll take it from here!/%", "obj_mauswheel_enemy_slash_Step_0_gml_337_0");
		scr_battletext_default();
		actcon = 27;
		alarm[4] = 12;
	}
	if (actcon == 28 && !instance_exists(obj_writer))
	{
		with (obj_mauswheel_tasquemanager)
			alarm[0] = 30;
		with (obj_mauswheel_tasque)
			alarm[0] = 30;
		scr_spareanim();
		scr_recruit();
		visible = false;
		actcon = 29;
		alarm[4] = 60;
	}
	if (actcon == 30 && !instance_exists(obj_mauswheel_tasquemanager))
	{
		scr_wincombat();
		instance_destroy();
	}
	if (actingnoe == 1 && actconnoe == 1)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Noelle screamed quietly!/%", "obj_mauswheel_enemy_slash_Step_0_gml_360_0");
		scr_mercyadd(myself, 50);
		scr_simultext("noelle");
		actconnoe = (simulordernoe == 0) ? 20 : 0;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		scr_act_charsprite_end();
		scr_nextact();
		if (remove)
		{
			if (i_ex(obj_maus_enemy))
			{
				with (obj_maus_enemy)
					tasque_joined = true;
			}
			global.monstermakey[myself] = y - 15;
			global.monstermakex[myself] = tasquemarker.x;
			newtasque = scr_monster_change(myself, 32, 452);
			with (tasquemarker)
				instance_destroy();
			instance_destroy();
		}
		if (basket != -4)
		{
			with (nise_susie)
				instance_destroy();
			with (basket)
				instance_destroy();
			with (obj_herosusie)
				visible = 1;
		}
	}
	if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
	{
		if (scr_terminate_writer())
		{
			actconsus = -1;
			actconral = -1;
			actconnoe = -1;
			actcon = 1;
		}
	}
}
