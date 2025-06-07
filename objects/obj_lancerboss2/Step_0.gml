if (firstskip == 1)
{
	global.acting[0] = 1;
	acting = 1;
	with (obj_writer)
		instance_destroy();
	with (obj_face)
		instance_destroy();
	with (obj_smallface)
		instance_destroy();
	if (global.charaction[0] == 1)
		global.attacking = 1;
	global.charturn = 3;
	global.myfight = 3;
}
if (global.monster[myself] == 1)
{
	global.flag[51 + myself] = 4;
	global.acting[0] = 1;
	acting = 1;
	if (global.mnfight == 1 && talked == 0)
	{
		actcon = 0;
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		rtimer = 0;
		scr_blconskip(-1);
		if (global.mnfight == 2)
		{
			if (!instance_exists(obj_moveheart) && hmake == 0)
			{
				scr_moveheart();
				hmake = 1;
			}
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			global.turntimer = 140;
			if (turns == 0 || turns == 2)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 20;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				if (global.hp[global.char[0]] <= 70)
					dc.damage = global.monsterat[myself] * 3;
				global.turntimer = 180;
			}
			if (turns == 1)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 21;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
				if (global.hp[global.char[0]] <= 70)
					dc.damage = global.monsterat[myself] * 3;
				global.turntimer = 180;
			}
			if (turns >= 3)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.difficulty = turns * 2;
				if (turns == 6)
					dc.difficulty = 30;
				if (turns == 7)
					dc.difficulty = 90;
				dc.type = 24;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
			}
			turns += 1;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_88_0");
		}
		else
		{
			global.turntimer = 150;
		}
	}
	if (global.mnfight == 2)
	{
		if (global.turntimer <= 10)
			hmake = 0;
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		firstskip = 0;
		global.typer = 53;
		rr = choose(0, 1, 2, 3);
		actcon = 1;
		if (turns == 0)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_120_0");
		if (turns == 1)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_121_0");
		if (turns == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_122_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_122_1");
		}
		if (turns == 3)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_123_0");
		if (turns == 4)
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_124_0");
		if (turns == 5)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_127_0");
			with (obj_herosusie)
			{
				idlesprite = spr_susieb_idle_serious;
				attacksprite = spr_susieb_attack_serious;
			}
		}
		if (turns == 6)
		{
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_135_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_136_0");
			global.msg[2] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_137_0");
			with (obj_herosusie)
			{
				idlesprite = spr_susieb_idle;
				attacksprite = spr_susieb_attack;
			}
		}
		if (turns == 7)
		{
			global.typer = 54;
			global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_145_0");
			global.msg[1] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_145_1");
			global.msg[2] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_145_2");
			actcon = 2;
		}
		global.monsterdf[myself] -= 5;
		scr_enemyblcon(obj_herosusie.x + 100, obj_herosusie.y, 7);
		with (obj_writer)
			skippable = 0;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
	if (actcon == 2 && !instance_exists(obj_writer))
	{
		snd_free_all();
		snd_play(snd_laz_c);
		black = scr_dark_marker(__view_get(e__VW.XView, 0) - 20, __view_get(e__VW.YView, 0) - 20, spr_pixel_white);
		with (black)
		{
			image_blend = c_black;
			depth = -10000;
			image_xscale = 900;
			image_yscale = 900;
		}
		actcon = 3;
		acttimer = 0;
		if (instance_exists(obj_lancerbattle2_event))
		{
			obj_lancerbattle2_event.black = black;
			with (obj_lancerbattle2_event)
			{
				con = 52;
				alarm[4] = 80;
			}
		}
	}
	if (actcon == 3)
	{
	}
}
