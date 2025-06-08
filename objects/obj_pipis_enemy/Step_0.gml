if (scr_debug())
{
}
if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		scr_blconskip(-1);
		if (scr_isphase("bullets"))
		{
			if (!instance_exists(obj_moveheart) && !i_ex(obj_heart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (scr_isphase("bullets") && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			rr = 0;
			if (rr == 0)
			{
				global.monsterattackname[myself] = "PipisExplosion";
				dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
				dc.type = 50;
				dc.damage = 50;
				dc.btimer = 35 - random(30);
				dc.creatorid = id;
			}
			scr_turntimer(90);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			if (scr_messagepriority(random(2)))
				global.battlemsg[0] = stringsetloc("* Pipis", "obj_pipis_enemy_slash_Step_0_gml_73_0");
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
		var randomnumber = irandom_range(42, 5555);
		var smallfacetext = stringsetsubloc("\f~1 liked this!  ", string(randomnumber), "obj_pipis_enemy_slash_Step_0_gml_97_0");
		scr_smallface(0, "empty", 0, "right", "bottom", smallfacetext);
		msgsetloc(0, "PIPIS - ''The Original'' An invasive species of freshwater clam. \\f0 /%", "obj_pipis_enemy_slash_Step_0_gml_100_0");
		scr_battletext_default();
	}
	if ((actingsus == 1 && actconsus == 1) || (actingral == 1 && actconral == 1))
	{
		msgsetloc(0, "* Nothing happened!/%", "obj_pipis_enemy_slash_Step_0_gml_110_0");
		scr_battletext_default();
		if (actingsus == 1 && actconsus == 1)
		{
			actcon = 1;
			actconsus = 0;
		}
		if (actingral == 1 && actconral == 1)
		{
			actcon = 1;
			actconral = 0;
		}
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
