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
			msgset(0, "");
		if (rr == 1)
			msgset(0, "");
		if (rr == 2)
			msgset(0, "");
		if (rr == 3)
			msgset(0, "");
		scr_enemyblcon(x - 10, global.monstery[myself], 10);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		scr_blconskip(15);
		if (global.mnfight == 2)
			global.mnfight = 7;
	}
	if (global.mnfight == 7 && buildedblocks == 0)
	{
		buildedblockstimer++;
		if (buildedblockstimer > 60)
		{
			global.mnfight = 2;
			buildedblocks = 1;
			buildedblockstimer = 0;
		}
	}
	if (scr_isphase("bullets") && buildedblocks == 1)
	{
		buildedblocks = 2;
		if (!instance_exists(obj_moveheart))
			scr_moveheart();
		if (!instance_exists(obj_growtangle))
			instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
	}
	if (scr_isphase("bullets") && attacked == 0 && buildedblocks == 2)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			rr = (bulletoverride >= 0) ? bulletoverride : irandom(2);
			if (rr == 0)
			{
				global.monsterattackname[myself] = "ThrashHead";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 26;
			}
			else if (rr == 1)
			{
				global.monsterattackname[myself] = "ThrashFoot";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 27;
			}
			else
			{
				global.monsterattackname[myself] = "PuzzleBlocks";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 28;
			}
			scr_turntimer(200);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3);
			if (rr == 0)
				global.battlemsg[0] = "";
			if (rr == 1)
				global.battlemsg[0] = "";
			if (rr == 2)
				global.battlemsg[0] = "";
			if (rr == 3)
				global.battlemsg[0] = "";
			attacked = 1;
			buildedblocks = 0;
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
		msgset(0, "");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 1;
		if (global.automiss[myself] == 0)
		{
			msgset(0, "");
			global.monstercomment[myself] = "(Warned)";
			global.automiss[myself] = 1;
		}
		scr_battletext_default();
	}
	if (acting == 3 && actcon == 0)
	{
		msgset(0, "");
		scr_mercyadd(myself, 35);
		scr_battletext_default();
		actcon = 1;
	}
	if (acting == 4 && actcon == 0)
	{
		msgset(0, "");
		if (simultotal == 1)
			msgset(0, "");
		scr_mercyadd(myself, 35);
		scr_simultext("kris");
		if (simulorderkri == 0)
			actcon = 20;
		else
			actcon = -1;
	}
	if (acting == 5 && actcon == 0)
	{
		msgset(0, "");
		scr_battletext_default();
		actcon = 1;
	}
	if (acting == 6 && actcon == 0)
	{
		msgset(0, "");
		scr_monster_make_tired(myself);
		scr_battletext_default();
		actcon = 1;
	}
	if (actingsus == 1 && actconsus == 1)
	{
		msgset(0, "");
		scr_mercyadd(myself, 35);
		scr_battletext_default();
		actcon = 1;
		actconsus = 0;
	}
	if (actingsus == 2 && actconsus == 1)
	{
		msgset(0, "");
		scr_mercyadd(myself, 35);
		scr_simultext("susie");
		if (simulordersus == 0)
			actconsus = 20;
		else
			actconsus = 0;
	}
	if (actingral == 1 && actconral == 1)
	{
		msgset(0, "");
		scr_mercyadd(myself, 35);
		scr_battletext_default();
		actcon = 1;
		actconral = 0;
	}
	if (actingral == 2 && actconral == 1)
	{
		msgset(0, "");
		scr_mercyadd(myself, 35);
		scr_simultext("ralsei");
		if (simulorderral == 0)
			actconral = 20;
		else
			actconral = 0;
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
	if (actcon == 1 && !instance_exists(obj_writer))
		scr_nextact();
}
if (scr_debug())
{
	if (keyboard_check_pressed(189))
	{
		keytestmode = 1 - keytestmode;
		if (keytestmode == 1)
			keyboard_lastchar = "";
	}
	if (keytestmode && keyboard_lastchar != "")
		keyboard_lastchar = "";
	if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(ord("1")))
		bulletoverride = 0;
	if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord("2")))
		bulletoverride = 1;
	if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(ord("3")))
		bulletoverride = 2;
	if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(ord("4")))
		bulletoverride = -1;
	if (keyboard_check_pressed(ord("N")))
	{
		if (instance_exists(obj_power_up_fx))
		{
			instance_destroy(obj_power_up_fx);
			instance_destroy(obj_power_up_thrash);
		}
		else
		{
			d = scr_following_afterimage(obj_power_up_fx, self);
			d.depth -= 1;
			d = scr_following_afterimage(obj_power_up_thrash, obj_thrashmachine);
			d.depth -= 1;
		}
	}
	scr_music_mute();
}
