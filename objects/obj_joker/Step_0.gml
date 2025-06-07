if (global.monster[myself] == 1)
{
	global.flag[51 + myself] = 4;
	if (global.mnfight == 1 && talked == 0)
	{
		if (pirouette != 2)
			global.invc = reminvc;
		mhpratio = global.monsterhp[myself] / global.monstermaxhp[myself];
		if (mhpratio <= 0.8 && jturn == 4)
		{
			jturn = 5;
			with (body)
				dancelv = 1;
		}
		if (mhpratio <= 0.6 && jturn == 9)
			jturn = 10;
		if (mhpratio <= 0.4 && jturn == 14)
		{
			jturn = 15;
			with (body)
				dancelv = 3;
		}
		if (mhpratio <= 0.15 && jturn < 17)
		{
			jturn = 17;
			with (body)
				dancelv = 2;
		}
		if (jturn >= 18)
		{
			with (body)
				dancelv = 3;
		}
		if (hypnosiscounter >= 2 && jturn == 4)
		{
			if (turns >= (5 - hypnosiscounter))
			{
				jturn = 5;
				with (body)
					dancelv = 1;
			}
		}
		if (hypnosiscounter >= 4 && jturn == 9)
		{
			if (turns >= (11 - hypnosiscounter))
			{
				jturn = 10;
				with (body)
					dancelv = 1;
			}
		}
		if (hypnosiscounter >= 6 && jturn == 14)
		{
			if (turns >= (17 - hypnosiscounter))
			{
				jturn = 15;
				with (body)
					dancelv = 1;
			}
		}
		if (jturn >= 19)
		{
			if (turns >= (29 - hypnosiscounter))
			{
				tired = 1;
				global.monsterstatus[myself] = 1;
				with (body)
					dancelv = 2;
			}
		}
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		if (jturn == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_35_0");
			snd_play(scr_84_get_sound("snd_joker_chaos"));
		}
		if (jturn == 1)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_36_0");
		if (jturn == 2)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_37_0");
		if (jturn == 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_38_0");
			with (body)
				condition = 5;
		}
		if (jturn == 5)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_39_0");
		if (jturn == 6)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_40_0");
		if (jturn == 7)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_41_0");
			snd_play(scr_84_get_sound("snd_joker_anything"));
		}
		if (jturn == 8)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_42_0");
		if (jturn == 10)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_43_0");
		if (jturn == 11)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_44_0");
		if (jturn == 12)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_45_0");
		if (jturn == 13)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_46_0");
			with (body)
				condition = 5;
		}
		if (jturn == 15)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_47_0");
		if (jturn == 16)
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_48_0");
		if (jturn == 17)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_49_0");
			with (body)
				dancelv = 2;
		}
		if (jturn == 18)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_50_0");
			with (body)
				condition = 5;
		}
		if (jturn == 4 || jturn == 9 || jturn == 14 || jturn == 19)
		{
			rr = choose(0, 1, 2, 3);
			if (rr == 0)
			{
				global.msg[0] = choose(scr_84_get_lang_string("obj_joker_slash_Step_0_gml_56_0"), scr_84_get_lang_string("obj_joker_slash_Step_0_gml_56_1"));
				snd_play(scr_84_get_sound("snd_joker_chaos"));
			}
			if (rr == 1)
			{
				global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_57_0");
				snd_play(scr_84_get_sound("snd_joker_anything"));
			}
			if (rr == 2)
				global.msg[0] = choose(scr_84_get_lang_string("obj_joker_slash_Step_0_gml_58_0"), scr_84_get_lang_string("obj_joker_slash_Step_0_gml_58_1"));
			if (rr == 3)
				global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_59_0");
		}
		scr_enemyblcon(x - 160, y - 20, 3);
		talked = 1;
		talktimer = 0;
		if (jturn >= 19)
		{
			if (global.monsterdf[myself] > -10)
				global.monsterdf[myself] -= 3;
			if (global.monsterat[myself] < 11)
				global.monsterat[myself] += 0.5;
			jattack = choose(0, 4, 7, 8, 10, 11, 12, 13, 13, 13);
		}
		if (jturn >= 15 && jturn <= 18)
		{
			jattack = jturn - 3;
			jturn += 1;
		}
		if (jturn == 14)
			jattack = choose(8, 9, 10, 11);
		if (jturn >= 10 && jturn <= 13)
		{
			jattack = jturn - 2;
			jturn += 1;
		}
		if (jturn == 9)
			jattack = choose(4, 5, 6, 7);
		if (jturn >= 5 && jturn <= 8)
		{
			jattack = jturn - 1;
			jturn += 1;
		}
		if (jturn == 4)
			jattack = choose(0, 1, 2, 3);
		if (jturn <= 3)
		{
			jattack = jturn;
			jturn += 1;
		}
		if (jattack == 2 || jattack == 5 || jattack == 9 || jattack == 13 || jattack == 15)
			scr_targetall();
		else
			scr_randomtarget();
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
			global.turntimer = 240;
			event_user(5);
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			if (rr == 0)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_158_0");
			if (rr == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_159_0");
			if (rr == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_160_0");
			if (rr == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_161_0");
			if (rr == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_162_0");
			if (body.dancelv == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_163_0");
			if (jturn == 16)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_164_0");
			if (jturn == 18)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_165_0");
			if (jturn >= 19)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_166_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_167_0");
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
if (con == 1)
{
	con = 2;
	alarm[4] = 10;
}
if (con == 3)
{
	global.typer = 50;
	global.mercymod[myself] = 999;
	global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_201_0");
	scr_enemyblcon(x - 160, y, 3);
	con = 4;
}
if (con == 4 && !instance_exists(obj_writer))
{
	hspeed = 15;
	con = 5;
	alarm[4] = 15;
	with (obj_battlecontroller)
		alarm[2] = 17;
}
if (con == 6)
{
	with (obj_battlecontroller)
		noreturn = 0;
	scr_monsterdefeat();
	instance_destroy();
	con = 7;
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_237_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 5;
		global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_247_0");
		snd_play(snd_pirouette);
		with (obj_herokris)
			visible = 0;
		dancekris = scr_dark_marker(obj_herokris.x, obj_herokris.y, spr_krisb_pirouette);
		with (dancekris)
		{
			image_speed = 0.3334;
			depth = obj_herokris.depth;
		}
		fx = instance_create(dancekris.x + 28, dancekris.y + 40, obj_afterimage_grow);
		fx.sprite_index = spr_pirouette_fx;
		fx.image_xscale = 2;
		fx.image_yscale = 2;
		scr_battletext_default();
	}
	if (actcon == 5 && !instance_exists(obj_writer))
	{
		with (dancekris)
			instance_destroy();
		with (obj_herokris)
			visible = 1;
		global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_272_0");
		if (chaosdance == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_276_0");
			ch = choose(0, 1, 2);
			if (ch == 0)
				snd_play(snd_badexplosion);
			if (ch == 1)
				snd_play(snd_carhonk);
			if (ch == 2)
				snd_play(snd_toilet);
		}
		if (chaosdance == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_284_0");
			if (global.monsterdf[myself] >= -16)
				global.monsterdf[myself] -= 4;
			snd_play(snd_weirdeffect);
		}
		if (chaosdance == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_290_0");
			snd_play(snd_awkward);
			global.invc = 0.4;
		}
		if (chaosdance == 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_296_0");
			pfactor = 0.7;
			snd_play(snd_shadowpendant);
		}
		if (chaosdance == 4)
		{
			with (obj_marker)
			{
				if (sprite_index == spr_uselessbird)
					instance_destroy();
			}
			bird = scr_dark_marker(__view_get(e__VW.XView, 0) - 40, __view_get(e__VW.YView, 0) + 60, spr_uselessbird);
			with (bird)
			{
				hspeed = 12;
				image_speed = 0.334;
			}
			snd_play(snd_birdtweet);
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_310_0");
		}
		if (chaosdance == 5)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_314_0");
			star = choose(0, 1, 2);
			scr_healitemspell(floor(random(31) + 25));
		}
		if (chaosdance == 6)
		{
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_320_0");
			swap1 = 1;
			swap2 = 1;
			swap1 = choose(2, 3);
			if (swap1 == 2)
				swap2 = 3;
			if (swap1 == 3)
				swap2 = 2;
			for (i = 0; i < 4; i += 1)
			{
				remhp[i] = global.hp[i];
				curmaxhp[i] = global.maxhp[i];
			}
			global.maxhp[1] = curmaxhp[swap1];
			global.maxhp[swap1] = curmaxhp[swap2];
			global.maxhp[swap2] = curmaxhp[1];
			global.hp[1] = remhp[swap1];
			global.hp[swap1] = remhp[swap2];
			global.hp[swap2] = remhp[1];
			remhpcolor[0] = obj_battlecontroller.hpcolor[0];
			remhpcolor[1] = obj_battlecontroller.hpcolor[1];
			remhpcolor[2] = obj_battlecontroller.hpcolor[2];
			obj_battlecontroller.hpcolor[0] = remhpcolor[swap1 - 1];
			obj_battlecontroller.hpcolor[swap1 - 1] = remhpcolor[swap2 - 1];
			obj_battlecontroller.hpcolor[swap2 - 1] = remhpcolor[0];
			for (i = 1; i <= 3; i += 1)
			{
				if (global.hp[i] < 1)
				{
					global.hp[1] += floor(global.hp[i] / 3);
					global.hp[2] += floor(global.hp[i] / 3);
					global.hp[3] += floor(global.hp[i] / 3);
					global.hp[i] = 1;
				}
			}
			if (global.hp[1] < 1)
				global.hp[1] = 1;
			if (global.hp[2] < 1)
				global.hp[2] = 1;
			if (global.hp[3] < 1)
				global.hp[3] = 1;
			scr_revive(0);
			scr_revive(1);
			scr_revive(2);
			snd_play(snd_weirdeffect);
		}
		if (chaosdance == 7)
		{
			snd_play(snd_boost);
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_373_0");
			pfactor = 1.25;
		}
		if (chaosdance == 8)
		{
			snd_play(snd_applause);
			global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_379_0");
			scr_healallitemspell(36 + floor(random(15)));
		}
		scr_battletext_default();
		hypnosiscounter += 0.5;
		if (hypnosiscounter >= 9)
		{
			txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_387_0");
			global.monsterstatus[myself] = 1;
		}
		pirouette = chaosdance;
		pirouettecounter += 1;
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		if (global.monsterat[myself] > 10)
			global.monsterat[myself] -= 0.5;
		hypnofx = instance_create(global.monsterx[myself], global.monstery[myself], obj_hypnofx);
		snd_play(snd_hypnosis);
		actcon = 1;
		aaa = choose(0, 1, 2);
		if (aaa == 0)
			txtpart1 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_400_0");
		if (aaa == 1)
			txtpart1 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_401_0");
		if (aaa == 2)
			txtpart1 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_402_0");
		txtpart2 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_403_0");
		txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_404_0");
		if (hypnosiscounter == 0)
			txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_405_0");
		if (hypnosiscounter >= 9)
		{
			txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_406_0");
			global.monsterstatus[myself] = 1;
		}
		global.msg[0] = txtpart1 + txtpart2 + txtpart3 + scr_84_get_lang_string("obj_joker_slash_Step_0_gml_407_0");
		pfactor = 0.7;
		hypnosis = 1;
		hypnosiscounter += 1;
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
}
if (global.myfight == 7)
	hspeed = 15;
beepbuffer -= 1;
if (beepnoise == 4 && beepbuffer < 0)
{
	snd_stop(snd_bombfall);
	snd_play(snd_bombfall);
	beepnoise = 0;
	beepbuffer = 5;
}
if (burstnoise == 1)
{
	snd_stop(snd_bomb);
	snd_play(snd_bomb);
	burstnoise = 0;
}
