if (con < 76)
{
	if (con == 0)
	{
		with (obj_npc_facing)
			instance_destroy();
		with (obj_npc_room)
			instance_destroy();
		snd_free_all();
		global.currentsong[0] = snd_init("wind.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 0.7);
		part = 1;
		with (obj_mainchara)
		{
			visible = 0;
			cutscene = 1;
		}
		with (obj_caterpillarchara)
			visible = 0;
		con = 1;
		k = scr_dark_marker(-20, 200, spr_krisr_dark);
		s = scr_dark_marker(-75, 180, spr_susier_dark);
		r = scr_dark_marker(-130, 190, spr_ralseir);
		with (obj_marker)
		{
			hspeed = 4;
			image_speed = 0.25;
		}
		alarm[4] = 50;
		if (global.tempflag[8] == 1)
		{
			with (obj_marker)
			{
				hspeed = 8;
				image_speed = 0.25;
			}
			alarm[4] = 25;
		}
		l = scr_dark_marker(512, 194, spr_lancer_rt);
	}
	if (con == 1)
		global.interact = 1;
	if (con == 2)
	{
		with (obj_marker)
			scr_halt();
		con = 3;
		alarm[4] = 15;
		if (global.tempflag[8] == 1)
			alarm[4] = 2;
	}
	if (con == 4)
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_72_0");
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 5;
	}
	if (con == 5 && !d_ex())
	{
		king = scr_dark_marker(820 + global.xoff, 120, spr_kingu_shadow);
		with (l)
			hspeed = 5;
		if (global.tempflag[8] == 0)
			scr_pan(8, 0, 90);
		con = 5.1;
		alarm[4] = 90;
		if (global.tempflag[8] == 1)
		{
			with (l)
				hspeed = 10;
			scr_pan(16, 0, 45);
			con = 5.1;
			alarm[4] = 45;
		}
	}
	if (con == 6.1)
	{
		with (l)
			hspeed = 0;
		con = 6;
		alarm[4] = 20;
	}
	if (con == 7)
	{
		with (l)
			hspeed = 0;
		global.fc = 5;
		global.typer = 32;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_110_0");
		scr_kingface(1, 0);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_112_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_113_0");
		scr_lanface(4, 7);
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_115_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_116_0");
		global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_117_0");
		global.msg[8] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_118_0");
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 8;
		if (global.tempflag[8] == 1)
			con = 9;
	}
	if (con == 8 && !d_ex())
	{
		with (king)
		{
			sprite_index = spr_kingl_shadow;
			snd_play(snd_impact);
			instance_create(0, 0, obj_shake);
			scr_shakeobj();
		}
		global.fc = 0;
		global.typer = 36;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_137_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_139_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_140_0");
		scr_kingface(4, 0);
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_142_0");
		scr_lanface(6, 4);
		global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_144_0");
		instance_create(0, 0, obj_dialoguer);
		con = 9;
	}
	if (con == 9 && !d_ex())
	{
		with (king)
			sprite_index = spr_kingl_shadow;
		with (k)
		{
			x = 440 + global.xoff;
			y = 50;
			scr_depth();
		}
		with (s)
		{
			x = 440 + global.xoff;
			y = 130;
			scr_depth();
		}
		with (r)
		{
			x = 440 + global.xoff;
			y = 210;
			scr_depth();
		}
		with (l)
			sprite_index = spr_lancer_lt;
		if (global.tempflag[8] == 0)
			scr_pan(-4, 0, 30);
		con = 10;
		alarm[4] = 60;
		if (global.tempflag[8] == 1)
		{
			scr_pan(-8, 0, 15);
			alarm[4] = 20;
		}
	}
	if (con == 11)
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_175_0");
		scr_ralface(1, 0);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_177_0");
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 12;
	}
	if (con == 12 && !d_ex())
	{
		with (l)
			sprite_index = spr_lancer_rt;
		global.typer = 36;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_187_0");
		scr_lanface(1, 7);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_189_0");
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 13;
	}
	if (con == 13 && !d_ex())
	{
		with (king)
		{
			hspeed = -2;
			image_speed = 0.1;
		}
		con = 14;
		alarm[4] = 30;
	}
	if (con == 15)
	{
		with (l)
			visible = 0;
		with (king)
		{
			hspeed = 0;
			sprite_index = spr_king_liftlancer;
			image_index = 0;
			image_speed = 0.2;
		}
		con = 16;
		alarm[4] = 15;
	}
	if (con == 17)
	{
		with (s)
			sprite_index = spr_susier_dark_unhappy;
		with (king)
		{
			image_index = 3;
			image_speed = 0;
		}
		global.typer = 36;
		global.fe = 0;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_223_0");
		scr_lanface(1, 5);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_225_0");
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 17.1;
	}
	if (con == 17.1 && !d_ex())
	{
		with (king)
		{
			image_index = 3;
			image_speed = 0.1;
		}
		con = 17.3;
		alarm[4] = 15;
	}
	if ((con >= 17.3 && con < 19) || (con == 19 && d_ex()))
	{
		if (king.image_index > 4.9)
		{
			king.image_speed = 0;
			king.image_index = 5;
		}
	}
	if (con == 18.3 && !d_ex())
	{
		global.typer = 36;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_251_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_252_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_253_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_254_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_255_0");
		scr_lanface(5, "A");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_257_0");
		con = 19;
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
	}
	if (con == 19 && !d_ex())
	{
		snd_free_all();
		snd_play(snd_grab);
		with (s)
			sprite_index = spr_susie_shock_r;
		with (r)
			sprite_index = spr_ralsei_shock_overworld;
		with (king)
		{
			image_index = 5;
			image_speed = 0.2;
		}
		con = 20;
		alarm[4] = 4;
	}
	if (con == 20)
	{
		with (king)
		{
			if (image_index > 5)
				image_index = 6;
		}
	}
	if (con == 21)
	{
		with (king)
		{
			if (image_index > 6)
			{
				image_speed = 0;
				image_index = 7;
			}
		}
		con = 22;
		alarm[4] = 20;
	}
	if (con == 23)
	{
		with (king)
		{
			image_speed = 0;
			image_index = 7;
		}
		global.typer = 36;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_285_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 24;
	}
	if (con == 24 && !d_ex())
	{
		snd_play(snd_weaponpull);
		with (r)
			sprite_index = spr_ralseir;
		with (s)
		{
			sprite_index = spr_susieb_attackready_unhappy;
			hspeed = 8;
		}
		con = 25;
		alarm[4] = 5;
	}
	if (con == 26)
	{
		with (s)
			scr_halt();
		con = 27;
		alarm[4] = 20;
	}
	if (con == 28)
	{
		global.currentsong[0] = snd_init("GALLERY.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 1);
		global.fc = 1;
		global.fe = 0;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_316_0");
		scr_noface(1);
		scr_kingface(2, 0);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_319_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_320_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_321_0");
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 30;
	}
	if (con == 30 && !d_ex())
	{
		snd_play(snd_noise);
		with (king)
			image_speed = 0.25;
		con = 31;
		alarm[4] = 8;
	}
	if (con == 32)
	{
		with (king)
		{
			image_index = 9;
			image_speed = 0;
		}
		con = 33;
		alarm[4] = 20;
		if (global.tempflag[8] == 1)
			alarm[4] = 2;
	}
	if (con == 34)
	{
		global.fc = 0;
		global.typer = 36;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_348_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_349_0");
		global.msg[2] = "%";
		con = 34.1;
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
	}
	if (con == 34.1 && !d_ex())
	{
		alarm[4] = 10;
		con = 34.2;
	}
	if (con == 35.2)
	{
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_363_0");
		global.msg[2] = "%";
		con = 35.3;
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
	}
	if (con == 35.3 && !d_ex())
	{
		con = 36;
		alarm[4] = 30;
		if (global.tempflag[8] == 1)
			alarm[4] = 2;
	}
	if (con == 37 && !d_ex())
	{
		with (s)
		{
			sprite_index = spr_susier_dark_unhappy;
			image_speed = 0.2;
			hspeed = -2;
		}
		con = 38;
		alarm[4] = 20;
	}
	if (con == 39)
	{
		with (s)
			scr_halt();
		con = 39.1;
		alarm[4] = 30;
		if (global.tempflag[8] == 1)
			alarm[4] = 2;
	}
	if (con == 40.1)
	{
		global.fe = 12;
		global.fc = 5;
		global.typer = 32;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_396_0");
		global.msg[1] = "%";
		con = 41;
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
	}
	if (con == 41 && !d_ex())
	{
		con = 40.2;
		alarm[4] = 30;
		if (global.tempflag[8] == 1)
			alarm[4] = 2;
	}
	if (con == 41.2 && !d_ex())
	{
		with (r)
			sprite_index = spr_ralseir_kneel;
		with (s)
			sprite_index = spr_susier_kneel;
		with (k)
			sprite_index = spr_krisr_kneel;
		con = 42;
		alarm[4] = 30;
		if (global.tempflag[8] == 1)
			alarm[4] = 2;
	}
	if (con == 43)
	{
		with (king)
			hspeed = -1;
		con = 44;
		alarm[4] = 15;
	}
	if (con == 45)
	{
		with (king)
			hspeed = 0;
		con = 46;
		alarm[4] = 15;
	}
	if (con == 47)
	{
		global.typer = 36;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_437_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 48;
	}
	if (con == 48 && !d_ex())
	{
		snd_play(snd_spearappear);
		c[0] = k;
		c[1] = s;
		c[2] = r;
		for (i = 0; i < 3; i += 1)
		{
			spadechunk[i] = scr_marker(c[i].x + 100, c[i].y + 50, spr_spadebullet_chunk);
			spadechunk[i].image_angle = 180;
			spadechunk[i].image_alpha = 0;
			spadechunk[i].hspeed = 2;
			spadechunk[i].friction = 0.1;
		}
		con = 49;
	}
	if (con == 49)
	{
		for (i = 0; i < 3; i += 1)
		{
			spadechunk[i].image_alpha += 0.1;
			if (spadechunk[i].image_alpha >= 3)
				con = 50;
		}
	}
	if (con == 50)
	{
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_471_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 51;
	}
	if (con == 51 && !d_ex())
	{
		snd_play(snd_spearrise);
		with (king)
		{
			image_speed = 0.25;
			image_index = 10;
		}
		alarm[4] = 16;
		con = 52;
	}
	if (con == 53)
	{
		with (king)
		{
			image_speed = 0;
			image_index = 13;
		}
		lspade = scr_marker(__view_get(e__VW.XView, 0) + 660, king.y + 60, spr_spadebullet);
		lspade.image_angle = 180;
		lspade.hspeed = -16;
		con = 54;
	}
	if (con == 54)
	{
		if (lspade.x <= (king.x + 70))
		{
			snd_play(snd_damage);
			snd_play(snd_dadblast);
			with (lspade)
				instance_destroy();
			with (king)
			{
				sprite_index = spr_king_droplancer;
				image_index = 0;
				scr_shakeobj();
			}
			with (l)
			{
				x += 24;
				y -= 60;
				sprite_index = spr_lancer_l_unhappy;
				vspeed = 10;
				hspeed = -4;
				visible = 1;
			}
			con = 55;
			alarm[4] = 6;
			spadechunk[0].image_alpha = 1;
			spadechunk[1].image_alpha = 1;
			spadechunk[2].image_alpha = 1;
		}
	}
	if (con == 55)
	{
		for (i = 0; i < 3; i += 1)
			spadechunk[i].image_alpha -= 0.18;
	}
	if (con == 56)
	{
		for (i = 0; i < 3; i += 1)
		{
			with (spadechunk[i])
				instance_destroy();
		}
		with (l)
			speed = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_529_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 57;
	}
	if (con == 57 && !d_ex())
	{
		with (l)
		{
			hspeed = -16;
			scr_depth();
		}
		with (r)
			sprite_index = spr_ralseir;
		with (s)
			sprite_index = spr_susier_dark_unhappy;
		with (k)
			sprite_index = spr_krisr_dark;
		con = 58;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_543_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		alarm[4] = 30;
	}
	if (con == 59 && !d_ex())
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_554_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 60;
	}
	if (con == 60 && !d_ex())
	{
		snd_play(snd_laz_c);
		with (k)
			scr_anim(455, 0.25);
		with (s)
			scr_anim(481, 0.25);
		with (r)
			scr_anim(496, 0.25);
		con = 61;
		alarm[4] = 30;
	}
	if (con == 62)
	{
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_573_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 64;
	}
	if (con == 64 && !d_ex())
	{
		with (king)
		{
			image_index = 1;
			hspeed = 3;
			friction = 0.1;
		}
		con = 65;
		alarm[4] = 20;
	}
	if (con == 66)
	{
		with (king)
		{
			hspeed = 0;
			scr_shakeobj();
		}
		global.typer = 36;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_592_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_593_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_594_0");
		global.msg[3] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 67;
	}
	if (con == 67 && !d_ex())
	{
		with (king)
		{
			sprite_index = spr_king_pullweapon;
			image_index = 0;
			image_speed = 0.5;
		}
		con = 66.1;
		alarm[4] = 10;
	}
	if (con == 67.1)
	{
		with (king)
		{
			image_index = 6;
			image_speed = 0;
		}
		shadowking = scr_dark_marker(king.x, king.y, spr_king_pullweapon);
		shadowking.image_speed = 0;
		shadowking.image_index = 5;
		shadowking.depth = king.depth - 1;
		con = 68.2;
		snd_free_all();
		snd_play(snd_shadowpendant);
		alarm[4] = 60;
	}
	if (con == 68.2)
	{
		with (shadowking)
			image_alpha -= 0.03;
	}
	if (con == 69.2)
	{
		global.plot = 235;
		with (shadowking)
			instance_destroy();
		global.typer = 33;
		global.fe = 4;
		global.fc = 20;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_636_0");
		global.msg[1] = "%";
		if (global.tempflag[8] == 0)
			instance_create(0, 0, obj_dialoguer);
		con = 68.1;
	}
	if (con == 68.1 && !d_ex())
	{
		king.sprite_index = spr_king_laugh;
		king.image_speed = 0.334;
		con = 69;
		snd_play(snd_dadlaugh);
		alarm[4] = 70;
	}
	if (con == 70 && !d_ex())
	{
		global.tempflag[8] = 1;
		obj_mainchara.x = k.x;
		obj_mainchara.y = k.y;
		global.cinstance[0].x = s.x;
		global.cinstance[0].y = s.y;
		global.cinstance[1].x = r.x;
		global.cinstance[1].y = r.y;
		with (global.cinstance[0])
			scr_caterpillar_interpolate();
		with (global.cinstance[1])
			scr_caterpillar_interpolate();
		scr_caterpillar_facing(1);
		with (obj_mainchara)
		{
			visible = 1;
			sprite_index = spr_krisb_idle;
			fun = 1;
		}
		with (global.cinstance[0])
		{
			visible = 1;
			sprite_index = spr_susieb_idle_serious;
			fun = 1;
		}
		with (global.cinstance[1])
		{
			visible = 1;
			sprite_index = spr_ralseib_idle;
			fun = 1;
		}
		with (k)
			visible = 0;
		with (r)
			visible = 0;
		with (s)
			visible = 0;
		global.flag[9] = 1;
		global.batmusic[0] = snd_init("kingboss.ogg");
		global.encounterno = 40;
		scr_encountersetup(global.encounterno);
		global.specialbattle = 3;
		remkingx = king.x;
		remkingy = king.y;
		instance_create(0, 0, obj_encounterbasic);
		con = 71;
		king.sprite_index = spr_chainking_idle;
		king.image_index = 0;
		king.image_speed = 0;
		with (king)
			scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 10);
		with (king)
			depth = 1000;
		alarm[4] = 25;
		bultimer = 0;
	}
	if (con == 72)
	{
		with (king)
			visible = 0;
		con = 73;
		alarm[4] = 15;
	}
	if (con == 74)
	{
		if (!instance_exists(obj_battlecontroller))
		{
			with (king)
				visible = 1;
			king.remkingx = remkingx;
			king.remkingy = remkingy;
			with (king)
				scr_move_to_point_over_time(remkingx, remkingy, 10);
			con = 75;
			alarm[4] = 30;
		}
	}
}
if (con >= 76 && con < 150)
{
	if (con == 76 && !d_ex())
	{
		if (part == 0)
		{
			__view_set(e__VW.XView, 0, 360 + global.xoff);
			k = scr_dark_marker(0, 0, spr_krisb_idle);
			s = scr_dark_marker(0, 0, spr_susieb_idle_serious);
			r = scr_dark_marker(0, 0, spr_ralseib_idle);
			king = scr_dark_marker(784 + global.xoff, 120, spr_king_kneeldown);
			with (k)
			{
				x = 440 + global.xoff;
				y = 50;
				scr_depth();
			}
			with (s)
			{
				x = 440 + global.xoff;
				y = 130;
				scr_depth();
			}
			with (r)
			{
				x = 440 + global.xoff;
				y = 210;
				scr_depth();
			}
			part = 1;
		}
		else
		{
			with (k)
				visible = 1;
			with (s)
				visible = 1;
			with (r)
				visible = 1;
			obj_mainchara.visible = 0;
			with (obj_caterpillarchara)
				visible = 0;
			k.sprite_index = spr_krisb_idle;
			s.sprite_index = spr_susieb_idle_serious;
			r.sprite_index = spr_ralseib_idle;
			king.sprite_index = spr_king_kneeldown;
		}
		con = 78;
		alarm[4] = 20;
	}
	if (con == 79)
	{
		global.fc = 20;
		global.typer = 33;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_762_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_763_0");
		if (global.flag[247] == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_766_0");
			global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_767_0");
			global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_768_0");
		}
		instance_create(0, 0, obj_dialoguer);
		con = 81;
	}
	if (con == 81 && !d_ex())
	{
		snd_play(snd_heavyswing);
		with (king)
			scr_anim(761, 0.1);
		con = 82;
		alarm[4] = 50;
	}
	if (con == 83)
	{
		snd_play(snd_whistlebreath);
		king.sprite_index = spr_king_kneel;
		king.image_index = 0;
		king.image_speed = 0;
		cape = scr_dark_marker(king.x, king.y, spr_kingcape);
		cape.image_speed = 0.25;
		cape.hspeed = 6;
		cape.vspeed = -1;
		cape.friction = 0.2;
		cape.gravity = -0.3;
		cape.depth = king.depth + 1;
		con = 84;
		alarm[4] = 50;
	}
	if (con == 85)
	{
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_802_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_803_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_804_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_805_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_806_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_807_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_808_0");
		global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_809_0");
		global.msg[8] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 86;
	}
	if (con == 86 && !d_ex())
	{
		with (king)
		{
			scr_shakeobj();
			image_index = 2;
		}
		snd_play(snd_break1);
		con = 87;
		alarm[4] = 60;
	}
	if (con == 88)
	{
		with (king)
			image_index = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_826_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_827_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_828_0");
		global.msg[3] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 88.1;
	}
	if (con == 88.1 && !d_ex())
	{
		con = 88.2;
		alarm[4] = 30;
	}
	if (con == 89.2 && !d_ex())
	{
		snd_play(snd_smallswing);
		with (r)
			sprite_index = spr_ralseir;
		con = 90;
		alarm[4] = 30;
	}
	if (con == 91)
	{
		snd_play(snd_smallswing);
		with (k)
			sprite_index = spr_krisr_dark;
		con = 92;
		alarm[4] = 45;
	}
	if (con == 93)
	{
		global.fc = 1;
		global.fe = 0;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_861_0");
		scr_ralface(1, 8);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_863_0");
		instance_create(0, 0, obj_dialoguer);
		con = 94;
	}
	if (con == 94 && !d_ex())
	{
		con = 95;
		alarm[4] = 30;
	}
	if (con == 96)
	{
		snd_play(snd_smallswing);
		with (s)
			sprite_index = spr_susier_dark_unhappy;
		con = 97;
		alarm[4] = 30;
	}
	if (con == 98)
	{
		with (s)
		{
			hspeed = 3;
			image_speed = 0.2;
		}
		with (k)
		{
			hspeed = 3;
			image_speed = 0.2;
		}
		with (r)
		{
			hspeed = 4;
			image_speed = 0.2;
		}
		con = 99;
		alarm[4] = 30;
	}
	if (con == 100)
	{
		with (k)
			scr_halt();
		with (s)
			scr_halt();
		with (r)
			scr_halt();
		con = 101;
		alarm[4] = 15;
	}
	if (con == 102)
	{
		global.fc = 2;
		global.fe = 8;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_919_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_920_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_921_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_922_0");
		scr_kingface(4, 2);
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_924_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_925_0");
		instance_create(0, 0, obj_dialoguer);
		con = 103;
	}
	if (con == 103 && !d_ex())
	{
		snd_play(snd_break1);
		with (king)
		{
			scr_shakeobj();
			image_index = 2;
		}
		con = 104;
		alarm[4] = 30;
	}
	if (con == 105)
	{
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_941_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_942_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_943_0");
		scr_ralface(3, 6);
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_945_0");
		global.msg[5] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 106;
	}
	if (con == 106 && !d_ex())
	{
		disto = point_distance(r.x, r.y, king.x - 90, king.y + 50) / 2;
		r.king = king;
		with (r)
		{
			image_speed = 0.25;
			move_towards_point(king.x - 90, king.y + 50, 2);
		}
		con = 107;
		alarm[4] = disto;
	}
	if (con == 108)
	{
		with (r)
			scr_halt();
		con = 109;
		alarm[4] = 10;
	}
	if (con == 110)
	{
		with (r)
		{
			scr_anim(503, 0.25);
			x -= 10;
			y -= 10;
		}
		snd_play(snd_spellcast);
		con = 111;
		alarm[4] = 15;
	}
	if (con == 112)
	{
		snd_play(snd_power);
		healanim = instance_create(king.x, king.y, obj_healanim);
		healanim.target = king;
		con = 115;
		alarm[4] = 60;
	}
	if (con == 116)
	{
		with (r)
		{
			sprite_index = spr_ralseir;
			x += 10;
			y += 10;
		}
		global.fe = 8;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_994_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_995_0");
		scr_kingface(2, 1);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_997_0");
		instance_create(0, 0, obj_dialoguer);
		con = 125;
	}
	if (con == 125 && !d_ex())
	{
		snd_play(snd_bigcut);
		snd_play(snd_spearrise);
		with (king)
			image_index = 4;
		deathhit0 = 0;
		deathhit1 = 0;
		deathhit2 = 0;
		for (i = 0; i < 15; i += 1)
		{
			deathwave[i][0] = scr_marker(k.x + 20, 500 + (i * 30), spr_spadebullet_chunk);
			deathwave[i][1] = scr_marker(r.x + 20, 500 + (i * 30), spr_spadebullet_chunk);
			for (j = 0; j < 2; j += 1)
			{
				with (deathwave[i][j])
				{
					vspeed = -40;
					image_angle = 90;
				}
			}
		}
		con = 126;
		alarm[4] = 80;
	}
	if (con == 126)
	{
		if (deathwave[0][0].y <= (s.y + 20) && deathhit0 == 0)
		{
			with (s)
			{
				sprite_index = spr_susie_fell;
				vspeed = 4;
				hspeed = -1;
				friction = 0.2;
				scr_shakeobj();
			}
			deathhit0 = 1;
			snd_play(snd_damage);
		}
		if (deathwave[0][0].y <= (k.y + 20) && deathhit1 == 0)
		{
			with (k)
			{
				sprite_index = spr_kris_fell;
				hspeed = 2;
				vspeed = 4;
				friction = 0.2;
				scr_shakeobj();
			}
			deathhit1 = 1;
			instance_create(0, 0, obj_shake);
			snd_play(snd_hurt1);
		}
		if (deathwave[0][1].y <= (r.y + 20) && deathhit2 == 0)
		{
			with (r)
			{
				sprite_index = spr_ralsei_fell;
				scr_shakeobj();
				hspeed = 2;
				vspeed = -6;
				friction = 0.2;
			}
			deathhit2 = 1;
			snd_play(snd_damage);
		}
	}
	if (con == 127)
	{
		snd_play(snd_smallswing);
		with (king)
			sprite_index = spr_kingl;
		con = 128;
		alarm[4] = 30;
	}
	if (con == 129)
	{
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1067_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 130;
	}
	if (con == 130 && !d_ex())
	{
		global.currentsong[0] = snd_init("GALLERY.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 1);
		snd_play(snd_break1);
		with (s)
		{
			sprite_index = spr_susier_kneel;
			scr_shakeobj();
		}
		with (k)
		{
			sprite_index = spr_krisr_kneel;
			scr_shakeobj();
		}
		con = 131;
		alarm[4] = 30;
	}
	if (con == 132)
	{
		global.fe = 9;
		global.fc = 1;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1090_0");
		global.msg[1] = "%";
		con = 133;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 133 && !d_ex())
	{
		snd_play(snd_spearappear);
		con = 134;
		spadechunk2 = scr_marker(s.x + 200, s.y + 50, spr_spadebullet_chunk);
		spadechunk2.image_angle = 180;
		spadechunk2.image_alpha = 0;
		spadechunk2.hspeed = 2;
		spadechunk2.friction = 0.1;
		for (i = 0; i < 15; i += 1)
		{
			for (j = 0; j < 2; j += 1)
			{
				with (deathwave[i][j])
					instance_destroy();
			}
		}
	}
	if (con == 134)
	{
		spadechunk2.image_alpha += 0.1;
		if (spadechunk2.image_alpha >= 2)
			con = 135;
	}
	if (con == 135)
	{
		global.typer = 33;
		global.fc = 20;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1137_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 136;
	}
	if (con == 136 && !d_ex())
	{
		snd_play(snd_spearrise);
		hdisto = ((s.x + 90) - spadechunk2.x) / 10;
		spadechunk2.hspeed = hdisto + 7;
		spadechunk2.friction = -1;
		disto = point_distance(k.x, k.y, s.x + 60, s.y + 10) / 10;
		k.s = s;
		k.disto = disto;
		with (k)
		{
			scr_anim(465, 0.5);
			move_towards_point(s.x + 60, s.y + 10, disto);
		}
		con = 137;
		alarm[4] = disto;
	}
	if (con == 138)
	{
		snd_play(snd_bell);
		with (k)
		{
			scr_halt();
			scr_shakeobj();
		}
		with (spadechunk2)
			instance_destroy();
		con = 139;
		alarm[4] = 30;
	}
	if (con == 140)
	{
		global.fe = 9;
		global.fc = 1;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1176_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 141;
	}
	if (con == 141 && !d_ex())
	{
		snd_play(snd_bigcut);
		snd_play(snd_spearrise);
		deathhit0 = 0;
		deathhit1 = 0;
		for (i = 0; i < 15; i += 1)
		{
			deathwave[i][0] = scr_marker(k.x, -30 - (i * 30), spr_spadebullet_chunk);
			with (deathwave[i][0])
			{
				vspeed = 40;
				image_angle = 270;
			}
		}
		con = 142;
		alarm[4] = 40;
	}
	if (con == 142)
	{
		if (deathwave[0][0].y >= (s.y + 20) && deathhit0 == 0)
		{
			snd_play(snd_damage);
			with (s)
			{
				sprite_index = spr_susie_fell;
				vspeed = 4;
				hspeed = 2;
				friction = 0.2;
				scr_shakeobj();
			}
			deathhit0 = 1;
		}
		if (deathwave[0][0].y >= (k.y + 20) && deathhit1 == 0)
		{
			instance_create(0, 0, obj_shake);
			snd_play(snd_damage);
			snd_play(snd_hurt1);
			with (k)
			{
				sprite_index = spr_krisr_kneel;
				hspeed = 1;
				vspeed = 2;
				friction = 0.2;
				scr_shakeobj();
			}
			deathhit1 = 1;
		}
	}
	if (con == 143)
	{
		global.fe = 0;
		global.typer = 33;
		global.fc = 20;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1227_0");
		global.msg[1] = "%";
		con = 143.1;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 143.1 && !d_ex())
	{
		snd_play(snd_spearrise);
		spadechunk3 = scr_marker(k.x + 30, -30, spr_spadebullet_chunk);
		spadechunk3.vspeed = 30;
		spadechunk3.image_angle = 270;
		deathhit1 = 0;
		con = 144;
	}
	if (con == 144)
	{
		if (spadechunk3.y >= (k.y + 20) && deathhit1 == 0)
		{
			snd_play(snd_hurt1);
			with (k)
			{
				sprite_index = spr_kris_fell;
				hspeed = -16;
				vspeed = 0;
				friction = 0.2;
				scr_shakeobj();
			}
			deathhit1 = 1;
			con = 145;
		}
	}
	if (con == 145)
	{
		if (__view_get(e__VW.XView, 0) > 0)
		{
			__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + (k.hspeed * 2));
			if (__view_get(e__VW.XView, 0) <= 0)
				__view_set(e__VW.XView, 0, 0);
		}
		if (abs(k.hspeed) < 0.2)
			con = 150;
	}
}
if (con >= 150 && con < 250)
{
	if (con == 150)
	{
		if (part == 0)
		{
			k = scr_dark_marker(266, 180, spr_kris_fell);
			part = 1;
		}
		else
		{
			with (king)
				instance_destroy();
			with (s)
				instance_destroy();
			with (r)
				instance_destroy();
			with (obj_marker)
				instance_destroy();
			k = scr_dark_marker(266, 180, spr_kris_fell);
		}
		con = 151;
		alarm[4] = 1;
	}
	if (con == 152)
	{
		king = scr_dark_marker(640, k.y - 80, spr_kingl);
		siner = 0;
		con = 153;
	}
	if (con == 153)
	{
		siner += 1;
		sinup = abs(sin(siner / 8) * 3);
		if (sinup >= 1)
			king.image_index = 1;
		else
			king.image_index = 0;
		king.x -= sinup;
		if (king.x <= (k.x + 47))
		{
			king.x = k.x + 46;
			with (king)
				scr_halt();
			con = 154;
			alarm[4] = 30;
		}
	}
	if (con == 155)
	{
		global.fe = 5;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1324_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1325_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1326_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1327_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1328_0");
		global.msg[5] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 156;
	}
	if (con == 156 && !d_ex())
	{
		k.visible = 0;
		with (king)
		{
			sprite_index = spr_king_liftkris;
			image_index = 1;
		}
		con = 157;
		alarm[4] = 30;
	}
	if (con == 158)
	{
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1345_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1346_0");
		global.msg[2] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 159;
		grabsounded = 0;
	}
	if (con == 159 && !d_ex())
	{
		if (grabsounded == 0)
		{
			snd_play(snd_grab);
			grabsounded = 1;
		}
		king.image_index += 0.25;
		if (king.image_index >= 4)
		{
			snd_play(snd_spearappear);
			spadechunk4 = scr_marker(k.x + 20, 100, spr_spadebullet_chunk);
			spadechunk4.image_alpha = 0;
			spadechunk4.vspeed = -2;
			spadechunk4.friction = 0.1;
			spadechunk4.image_angle = 270;
			con = 160;
			alarm[4] = 30;
		}
	}
	if (con == 160)
		spadechunk4.image_alpha += 0.1;
	if (con == 161)
	{
		global.fe = 4;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1379_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 162;
	}
	if (con == 162 && !d_ex())
	{
		snd_free_all();
		snd_play(snd_impact);
		snd_play(snd_damage);
		instance_create(0, 0, obj_shake);
		hitanim = instance_create(king.x + 52, king.y + 80, obj_animation);
		hitanim.depth = -100;
		hitanim.sprite_index = spr_attack_mash2;
		hitanim.image_xscale = 2;
		hitanim.image_yscale = 2;
		hitanim.image_speed = 0.5;
		spadechunk4.image_alpha = 1;
		k2 = scr_dark_marker(king.x - 30, king.y + 34, spr_kris_drop);
		k2.gravity = 1;
		k2.hspeed = -2;
		with (king)
		{
			scr_shakeobj();
			image_index = 5;
		}
		con = 163;
	}
	if (con == 163)
	{
		spadechunk4.image_alpha -= 0.2;
		if (k2.y >= (king.y + 80))
		{
			k.x = k2.x;
			with (k2)
				instance_destroy();
			k.visible = 1;
			con = 164;
			alarm[4] = 30;
		}
	}
	if (con == 165)
	{
		s = scr_dark_marker(640, king.y + 76, spr_susie_brave);
		scr_pan(4, 0, 50);
		con = 166;
		alarm[4] = 50;
	}
	if (con == 167)
	{
		con = 168;
		alarm[4] = 10;
	}
	if (con == 169)
	{
		global.currentsong[0] = snd_init("wind.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 0.7);
		global.flag[29] = 1;
		global.fc = 1;
		global.typer = 30;
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1442_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1443_0");
		global.msg[2] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 170;
	}
	if (con == 170 && !d_ex())
	{
		snd_play(snd_smallswing);
		with (king)
		{
			sprite_index = spr_kingr;
			hspeed = 4;
			friction = 0.5;
			image_index = 0;
		}
		con = 171;
		alarm[4] = 30;
	}
	if (con == 172)
	{
		global.fc = 20;
		global.typer = 33;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1470_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1471_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1472_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1473_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1474_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1475_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1476_0");
		global.msg[7] = "%";
		if (type == 1)
		{
			global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1480_0");
			global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1481_0");
			global.msg[3] = "%";
		}
		instance_create(0, 0, obj_dialoguer);
		con = 173;
	}
	if (con == 173 && !d_ex())
	{
		con = 174;
		alarm[4] = 7;
	}
	if (con == 175)
	{
		with (s)
			scr_halt();
		con = 176;
		alarm[4] = 10;
	}
	if (con == 177)
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1513_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 178;
		siner = 0;
		kingxnow = king.x;
	}
	if (con == 178 && !d_ex())
	{
		siner += 1;
		sinup = abs(sin(siner / 8) * 3);
		king.x += sinup;
		if (sinup >= 1.5)
			king.image_index = 1;
		else
			king.image_index = 0;
		if (king.x >= (s.x - 240))
		{
			king.x = s.x - 240;
			with (king)
				scr_halt();
			con = 179;
			alarm[4] = 30;
		}
	}
	if (con == 180)
	{
		with (king)
			image_index = 0;
		con = 181;
		alarm[4] = 20;
	}
	if (con == 182)
	{
		global.typer = 33;
		global.fe = 5;
		global.fc = 20;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1550_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1551_0");
		global.msg[2] = "%";
		if (type == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1555_0");
			global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1556_0");
			global.msg[2] = "%";
		}
		instance_create(0, 0, obj_dialoguer);
		con = 183;
		siner = 0;
		kx = king.x;
	}
	if (con == 183 && !d_ex())
	{
		siner += 1;
		sinup = abs(sin(siner / 8) * 2);
		king.x += sinup;
		if (sinup >= 1)
			king.image_index = 1;
		else
			king.image_index = 0;
		if (king.x >= (kx + 80))
			con = 187;
	}
	if (con == 187)
	{
		with (s)
			scr_halt();
		with (king)
			scr_halt();
		con = 188;
		alarm[4] = 30;
	}
	if (con == 189)
	{
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1590_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1591_0");
		if (type == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1594_0");
			global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1595_0");
			global.msg[2] = "%";
		}
		instance_create(0, 0, obj_dialoguer);
		con = 190;
	}
	if (con == 190 && !d_ex())
	{
		global.fe = 4;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1605_0");
		scr_susface(1, 4);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1607_0");
		scr_kingface(3, 5);
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1609_0");
		global.msg[5] = "%";
		if (type == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1613_0");
			global.msg[1] = "%";
		}
		instance_create(0, 0, obj_dialoguer);
		con = 191;
		snd_play(snd_spearappear);
		spadechunkf[0] = scr_marker(k.x + 30, k.y - 100, spr_spadebullet_chunk);
		spadechunkf[1] = scr_marker(s.x + 70, s.y - 100, spr_spadebullet_chunk);
		for (i = 0; i < 2; i += 1)
		{
			spadechunkf[i].image_angle = 270;
			spadechunkf[i].image_alpha = 0;
			spadechunkf[i].vspeed = -4;
			spadechunkf[i].friction = 0.5;
		}
	}
	if (con == 191)
	{
		for (i = 0; i < 2; i += 1)
		{
			spadechunkf[i].image_alpha += 0.1;
			if (spadechunkf[i].image_alpha >= 3)
				con = 192;
		}
		if (con == 192 && type == 1)
			con = 240;
	}
	if (con == 192 && !d_ex())
	{
		snd_free_all();
		with (king)
			sprite_index = spr_kingr_fallasleep;
		with (king)
		{
			o = scr_oflash();
			o.flashcolor = c_blue;
		}
		snd_play(snd_shadowpendant);
		king.image_index = 0;
		con = 193;
		spadetimer = 0;
		spadechunkf[0].image_alpha = 1;
		spadechunkf[1].image_alpha = 1;
	}
	if (con == 193)
	{
		spadetimer += 1;
		for (i = 0; i < 2; i += 1)
			spadechunkf[i].image_alpha -= 0.1;
		if (spadetimer >= 60)
		{
			with (spadechunkf[0])
				instance_destroy();
			with (spadechunkf[1])
				instance_destroy();
			con = 194;
		}
	}
	if (con == 194)
	{
		global.fe = 6;
		global.typer = 33;
		global.fc = 20;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1678_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1679_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1680_0");
		global.msg[3] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 195;
	}
	if (con == 195 && !d_ex())
	{
		with (king)
		{
			image_index = 1;
			scr_shakeobj();
			hspeed = -4;
			friction = 0.5;
		}
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1690_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1691_0");
		global.msg[2] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 196;
	}
	if (con == 196 && !d_ex())
	{
		with (king)
			image_index = 2;
		global.typer = 36;
		global.fe = 8;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1702_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 197;
	}
	if (con == 197 && !d_ex())
	{
		con = 201;
		with (king)
		{
			sprite_index = spr_kingr_asleep;
			image_speed = 0.1;
		}
		with (s)
		{
			x += 60;
			y -= 10;
			sprite_index = spr_susiel_eye_dark_unhappy;
		}
	}
	if (con == 200)
	{
		king = scr_dark_marker(480, 100, spr_kingr_asleep);
		with (king)
			scr_depth();
		k = scr_dark_marker(262, 180, spr_kris_fell);
		with (k)
			scr_depth();
		s = scr_dark_marker(700, 166, spr_susiel_eye_dark_unhappy);
		with (s)
			scr_depth();
		__view_set(e__VW.XView, 0, 200);
		con = 201;
	}
	if (con == 201)
	{
		with (s)
		{
			hspeed = -13;
			image_speed = 0.25;
			scr_depth();
		}
		with (k)
			scr_depth();
		with (king)
		{
			vspeed = -8;
			friction = 0.8;
			depth = 800000;
		}
		scr_pan(-7, 0, 28);
		con = 202;
		blend = c_black;
		alarm[4] = 28;
	}
	if (con == 202)
	{
		blend += 0.02;
		king.image_blend = merge_color(c_white, c_black, blend);
	}
	if (con == 203)
	{
		with (r)
			instance_destroy();
		with (s)
			scr_halt();
		con = 204;
		alarm[4] = 20;
	}
	if (con == 205)
	{
		with (k)
			sprite_index = spr_krisr_kneel;
		global.fe = 3;
		global.fc = 1;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1760_0");
		global.msg[1] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 206;
	}
	if (con == 206 && !d_ex())
	{
		r = scr_dark_marker(__view_get(e__VW.XView, 0) + 640, s.y + 10, spr_ralseil);
		with (r)
		{
			hspeed = -6;
			image_speed = 0.2;
		}
		r.depth = s.depth - 1000;
		con = 207;
		alarm[4] = 36;
	}
	if (con == 208)
	{
		with (r)
			scr_halt();
		with (s)
			sprite_index = spr_susier_eye_dark;
		with (k)
			sprite_index = spr_krisr_dark;
		global.fc = 2;
		global.fe = 1;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1785_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1786_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1788_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1789_0");
		instance_create(0, 0, obj_dialoguer);
		con = 209;
	}
	if (con == 209 && !d_ex())
	{
		with (r)
			sprite_index = spr_ralseir;
		con = 210;
		alarm[4] = 30;
	}
	if (con == 211)
	{
		global.fc = 2;
		global.fe = 4;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1806_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1807_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1808_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1809_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1810_0");
		instance_create(0, 0, obj_dialoguer);
		con = 212;
	}
	if (con == 212 && !d_ex())
	{
		with (s)
		{
		}
		with (r)
			sprite_index = spr_ralseil;
		con = 213;
		alarm[4] = 4;
	}
	if (con == 214)
	{
		with (s)
			scr_halt();
		global.fc = 1;
		global.typer = 30;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1828_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1829_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1830_0");
		global.msg[3] = "%";
		instance_create(0, 0, obj_dialoguer);
		con = 215;
	}
	if (con == 215 && !d_ex())
	{
		with (s)
			sprite_index = spr_susiel_eye_dark;
		con = 216;
	}
	if (con == 216 && !d_ex())
	{
		with (k)
			sprite_index = spr_krisl_dark;
		with (l)
			instance_destroy();
		l = scr_dark_marker(__view_get(e__VW.XView, 0) - 80, k.y, spr_lancer_rt);
		with (l)
			hspeed = 8;
		con = 217;
		alarm[4] = 20;
	}
	if (con == 218)
	{
		with (l)
			scr_halt();
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1856_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1858_0");
		scr_susface(3, 9);
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1860_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1861_0");
		scr_lanface(6, 2);
		global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1863_0");
		global.msg[8] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1864_0");
		global.msg[9] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1865_0");
		scr_susface(10, 9);
		global.msg[11] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1867_0");
		instance_create(0, 0, obj_dialoguer);
		con = 219;
	}
	if (con == 219 && !d_ex())
	{
		screen_noise = snd_loop(snd_rumble);
		with (l)
			sprite_index = spr_lancer_l_unhappy;
		with (s)
			sprite_index = spr_susie_shock;
		with (r)
			sprite_index = spr_ralsei_shock_overworld;
		shake = instance_create(0, 0, obj_shake);
		with (shake)
		{
			permashake = 1;
			shakex = 2;
			shakey = 2;
		}
		con = 220;
		alarm[4] = 60;
	}
	if (con == 221)
	{
		with (shake)
			permashake = 0;
		snd_stop(screen_noise);
		with (l)
			sprite_index = spr_lancer_r_unhappy;
		with (s)
			sprite_index = spr_susiel_eye_dark_unhappy;
		with (r)
			sprite_index = spr_ralseil;
		global.typer = 31;
		global.fc = 2;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1896_0");
		scr_lanface(1, 4);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1898_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1899_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1900_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1901_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1902_0");
		instance_create(0, 0, obj_dialoguer);
		con = 222;
	}
	if (con == 222 && !d_ex())
	{
		with (l)
			sprite_index = spr_lancer_l_unhappy;
		global.fe = 4;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1911_0");
		scr_susface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1913_0");
		instance_create(0, 0, obj_dialoguer);
		con = 223;
	}
	if (con == 223 && !d_ex())
	{
		with (l)
			sprite_index = spr_lancer_r_unhappy;
		with (r)
		{
			sprite_index = spr_ralseid;
			image_speed = 0.25;
			vspeed = 3;
		}
		con = 222.1;
		alarm[4] = 10;
	}
	if (con == 223.1)
	{
		with (r)
		{
			sprite_index = spr_ralseil;
			vspeed = 0;
			hspeed = -6;
		}
		con = 222.2;
		alarm[4] = 35;
	}
	if (con == 223.2)
	{
		with (r)
		{
			sprite_index = spr_ralseiu;
			vspeed = -3;
			hspeed = 0;
		}
		with (k)
		{
			hspeed = 3;
			image_speed = 0.25;
		}
		with (s)
		{
			hspeed = 3;
			image_speed = 0.25;
		}
		con = 224;
		alarm[4] = 10;
	}
	if (con == 225)
	{
		with (k)
			scr_halt();
		with (s)
			scr_halt();
		with (r)
			scr_halt();
		with (r)
			sprite_index = spr_ralseir;
		con = 226;
		alarm[4] = 30;
	}
	if (con == 227)
	{
		global.fc = 2;
		global.typer = 31;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1957_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1958_0");
		instance_create(0, 0, obj_dialoguer);
		con = 268;
	}
	if (con == 240 && !d_ex())
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 4;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1973_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1974_0");
		instance_create(0, 0, obj_dialoguer);
		con = 241;
	}
	if (con == 241 && !d_ex())
	{
		snd_free_all();
		with (s)
		{
			x += 60;
			y -= 10;
			sprite_index = spr_susiel_eye_dark;
		}
		with (king)
			sprite_index = spr_king_shock;
		king.image_index = 0;
		king.siner = 0;
		shake = instance_create(0, 0, obj_shake);
		with (shake)
		{
			permashake = 1;
			shakex = 2;
			shakey = 2;
		}
		rumble = snd_loop(snd_rumble);
		con = 242;
		alarm[4] = 30;
	}
	if (con == 242)
	{
		with (spadechunkf[0])
			image_alpha -= 0.1;
		with (spadechunkf[1])
			image_alpha -= 0.1;
	}
	if (con == 243)
		con = 250;
}
if (con >= 250 && con <= 265)
{
	if (con == 250)
	{
		if (part == 0)
		{
			k = scr_dark_marker(266, 180, spr_kris_fell);
			with (k)
				depth = 800000;
			__view_set(e__VW.XView, 0, 200);
			king = scr_dark_marker(439, 100, spr_king_kneel);
			king.siner = 0;
			part = 1;
		}
		with (k)
			depth = 800000;
		xmake = 8;
		ymake = 4;
		for (i = 0; i < xmake; i += 1)
		{
			for (j = 0; j < ymake; j += 1)
			{
				cwp[i][j] = scr_dark_marker(__view_get(e__VW.XView, 0) - 180 - (i * 90), 230 + (j * 30), spr_crowdpiece);
				with (cwp[i][j])
				{
					siner = 0;
					hspeed = 12;
					scr_depth();
				}
				cwp[i][j].siner = i + (j * 2);
			}
		}
		l = scr_dark_marker(__view_get(e__VW.XView, 0) - 180 - 280, 60, spr_lancer_rt);
		with (l)
		{
			hspeed = 12;
			siner = 0;
		}
		crowdshift = 1;
		con = 251;
		alarm[4] = 45;
		lifttimer = 0;
		liftking = 0;
	}
	if (crowdshift == 1)
	{
		for (i = 0; i < xmake; i += 1)
		{
			for (j = 0; j < ymake; j += 1)
			{
				with (cwp[i][j])
				{
					siner += 1;
					image_xscale = 2 + (sin(siner / 12) * 0.05);
					image_yscale = 2 + (sin(siner / 6) * 0.1);
				}
			}
		}
		with (l)
		{
			siner += 1;
			y += sin(siner / 6);
		}
	}
	if (liftking == 1)
	{
		with (king)
		{
			siner += 1;
			y += sin(siner / 6);
		}
	}
	if (con == 251)
	{
		lifttimer += 1;
		if (lifttimer == 18 || lifttimer == 35)
			snd_play(snd_wing);
		if (lifttimer >= 18)
		{
			with (k)
			{
				sprite_index = spr_krisr_kneel;
				x += 12;
			}
		}
		if (lifttimer >= 35)
		{
			with (king)
			{
				vspeed = -8;
				friction = 1;
				sprite_index = spr_king_fall;
				image_speed = 0.2;
			}
			liftking = 1;
		}
	}
	if (con == 252)
	{
		global.currentsong[0] = snd_init("lancer.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 1);
		with (obj_shake)
			permashake = 0;
		snd_stop(snd_rumble);
		with (l)
			scr_halt();
		for (i = 0; i < xmake; i += 1)
		{
			for (j = 0; j < ymake; j += 1)
			{
				with (cwp[i][j])
					scr_halt();
			}
		}
		con = 253;
		alarm[4] = 30;
	}
	if (con == 254)
	{
		global.typer = 33;
		global.fc = 20;
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2116_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2117_0");
		scr_lanface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2119_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2120_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2121_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2122_0");
		global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2123_0");
		global.msg[8] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2124_0");
		global.msg[9] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2125_0");
		scr_kingface(10, 6);
		global.msg[11] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2127_0");
		global.msg[12] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2128_0");
		scr_lanface(13, 2);
		global.msg[14] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2130_0");
		global.msg[15] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2131_0");
		instance_create(0, 0, obj_dialoguer);
		con = 255;
	}
	if (con == 255 && !d_ex())
	{
		mus_volume(global.currentsong[1], 0, 60);
		with (king)
		{
			hspeed = -12;
			friction = 0;
		}
		with (l)
			hspeed = -12;
		for (i = 0; i < xmake; i += 1)
		{
			for (j = 0; j < ymake; j += 1)
			{
				with (cwp[i][j])
					hspeed = -12;
			}
		}
		con = 256;
		alarm[4] = 60;
		global.fc = 20;
		global.fe = 6;
		global.typer = 33;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2155_0");
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 257 && !d_ex())
	{
		snd_free_all();
		con = 350;
	}
}
if (con >= 265 && con < 320)
{
	if (con == 268 && !d_ex())
	{
		with (s)
			sprite_index = spr_susier_eye_dark_lookup;
		con = 269;
		alarm[4] = 15;
	}
	if (con == 270)
	{
		global.fe = 0;
		global.typer = 30;
		global.fc = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2182_0");
		instance_create(0, 0, obj_dialoguer);
		con = 275;
	}
	if (con == 275 && !d_ex())
	{
		with (s)
			sprite_index = spr_susiel_eye_dark;
		with (l)
		{
			hspeed = 8;
			sprite_index = spr_lancer_rt;
		}
		with (r)
			sprite_index = spr_ralseil;
		with (k)
			sprite_index = spr_krisl_dark;
		con = 276;
		alarm[4] = 3;
	}
	if (con == 277 && !d_ex())
	{
		with (l)
			scr_halt();
		global.typer = 32;
		global.fc = 5;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2205_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2206_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2208_0");
		scr_lanface(4, 3);
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2210_0");
		instance_create(0, 0, obj_dialoguer);
		con = 280;
	}
	if (con == 280 && !d_ex())
	{
		with (s)
		{
			sprite_index = spr_susiel_dark_laugh;
			image_speed = 0.334;
		}
		with (l)
		{
			sprite_index = spr_lancer_rt_laugh;
			image_speed = 0.334;
		}
		ll = snd_play(snd_lancerlaugh);
		sl = snd_play(snd_suslaugh);
		snd_volume(ll, 0.8, 0);
		snd_volume(sl, 0.8, 0);
		con = 281;
		alarm[4] = 70;
	}
	if (con == 282)
	{
		with (s)
		{
			scr_halt();
			sprite_index = spr_susiel_dark_eyes;
		}
		with (l)
		{
			scr_halt();
			sprite_index = spr_lancer_lt;
		}
		global.typer = 32;
		global.fc = 5;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2235_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2237_0");
		instance_create(0, 0, obj_dialoguer);
		con = 283;
	}
	if (con == 283 && !d_ex())
	{
		with (l)
			hspeed = -8;
		with (k)
		{
			hspeed = 6;
			sprite_index = spr_krisr_dark;
			image_speed = 0.2;
		}
		with (s)
		{
			hspeed = 6;
			sprite_index = spr_susier_eye_dark;
			image_speed = 0.2;
		}
		with (r)
		{
			hspeed = 5.5;
			sprite_index = spr_ralseir;
			image_speed = 0.2;
		}
		scr_pan(6, 0, 160);
		con = 284;
		alarm[4] = 160;
	}
	if (con == 285)
	{
		with (r)
			scr_halt();
		with (s)
		{
			scr_halt();
			sprite_index = spr_susiel_eye_dark_unhappy;
		}
		with (k)
		{
			scr_halt();
			sprite_index = spr_krisl_dark;
		}
		global.fc = 2;
		global.fe = 4;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2262_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2263_0");
		instance_create(0, 0, obj_dialoguer);
		con = 286;
	}
	if (con == 286 && !d_ex())
	{
		with (r)
		{
			sprite_index = spr_ralsei_pullhat;
			image_speed = 0.1;
		}
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2272_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2273_0");
		instance_create(0, 0, obj_dialoguer);
		con = 287;
		rtimer = 0;
	}
	if (con == 287 && !d_ex())
	{
		with (r)
		{
			sprite_index = spr_ralsei_reveal;
			image_index = 0;
			image_speed = 0;
		}
		con = 288;
	}
	if (con == 288)
	{
		rtimer += 0.1;
		with (r)
			image_index += 0.1;
		if (rtimer >= 2)
		{
			con = 289;
			alarm[4] = 10;
		}
	}
	if (con == 290)
	{
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2294_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2295_0");
		scr_susface(2, 4);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2297_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2298_0");
		global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2299_0");
		global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2300_0");
		instance_create(0, 0, obj_dialoguer);
		con = 291;
		hatsounded = 0;
	}
	if (con == 291 && !d_ex())
	{
		if (hatsounded == 0)
		{
			snd_play(snd_wing);
			hatsounded = 1;
		}
		with (r)
			image_index += 0.1;
		rtimer += 0.1;
		if (rtimer >= 6)
		{
			con = 292;
			alarm[4] = 30;
			with (s)
			{
				sprite_index = spr_susie_shock;
				scr_shakeobj();
			}
		}
	}
	if (con == 293)
	{
		global.flag[30] = 2;
		global.fc = 2;
		global.typer = 31;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2320_0");
		instance_create(0, 0, obj_dialoguer);
		con = 294;
	}
	if (con == 294 && !d_ex())
	{
		with (r)
			image_index += 0.1;
		rtimer += 0.1;
		if (rtimer >= 11)
		{
			con = 295;
			alarm[4] = 30;
		}
	}
	if (con == 296)
	{
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2335_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2336_0");
		instance_create(0, 0, obj_dialoguer);
		con = 297;
	}
	if (con == 297 && !d_ex())
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2347_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2348_0");
		instance_create(0, 0, obj_dialoguer);
		con = 298;
	}
	if (con == 298 && !d_ex())
	{
		with (k)
			sprite_index = spr_krisr_dark;
		with (s)
		{
			sprite_index = spr_susier_eye_dark;
			image_index = 1;
			hspeed = 6;
		}
		if (global.plot >= 240)
		{
			with (s)
				hspeed = 0;
		}
		con = 299;
		alarm[4] = 4;
	}
	if (con == 300)
	{
		with (s)
			scr_halt();
		con = 301;
		alarm[4] = 30;
	}
	if (con == 302)
	{
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2372_0");
		instance_create(0, 0, obj_dialoguer);
		con = 303;
	}
	if (con == 303 && !d_ex())
	{
		with (s)
		{
			image_speed = 0.2;
			hspeed = 4;
		}
		with (k)
		{
			image_speed = 0.2;
			hspeed = 4;
		}
		con = 304;
		alarm[4] = 110;
		fade = instance_create(0, 0, obj_fadeout);
		with (fade)
			fadespeed = 0.01;
		if (global.plot < 240)
			scr_pan(3, 0, 999);
	}
	if (con == 305)
	{
		scr_losechar();
		scr_getchar(2);
		global.interact = 3;
		global.entrance = 1;
		if (global.plot < 240)
		{
			global.plot = 240;
			global.flag[248] = 1;
		}
		instance_create(0, 0, obj_persistentfadein);
		room_goto_next();
	}
}
if (con >= 350 && con < 700)
{
	if (con == 350 && !d_ex())
	{
		if (part == 0)
		{
			__view_set(e__VW.XView, 0, 200);
			k = scr_dark_marker(598, 180, spr_krisr_kneel);
			s = scr_dark_marker(700, 166, spr_susiel_eye_dark_unhappy);
			with (k)
				depth = 800000;
			with (s)
				scr_depth();
		}
		with (k)
			scr_depth();
		with (s)
			scr_depth();
		with (r)
			instance_destroy();
		with (s)
		{
			hspeed = -6;
			image_speed = 0.25;
		}
		con = 351;
		alarm[4] = 6;
	}
	if (con == 352)
	{
		with (s)
			scr_halt();
		global.fe = 3;
		global.typer = 30;
		global.fc = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2435_0");
		instance_create(0, 0, obj_dialoguer);
		con = 353;
	}
	if (con == 353 && !d_ex())
	{
		with (k)
			sprite_index = spr_krisr_dark;
		with (s)
			sprite_index = spr_susier_eye_dark;
		scr_pan(3, 0, 60);
		r = scr_dark_marker(__view_get(e__VW.XView, 0) + 800, s.y + 10, spr_ralseil);
		with (r)
		{
			hspeed = -4;
			image_speed = 0.2;
		}
		con = 354;
		alarm[4] = 60;
	}
	if (con == 355)
	{
		with (r)
			scr_halt();
		con = 356;
		alarm[4] = 30;
	}
	if (con == 357)
	{
		global.fc = 2;
		global.fe = 3;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2463_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2464_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2466_0");
		instance_create(0, 0, obj_dialoguer);
		con = 358;
	}
	if (con == 358 && !d_ex())
	{
		with (r)
			sprite_index = spr_ralseir;
		con = 359;
		alarm[4] = 30;
	}
	if (con == 360)
	{
		global.fe = 4;
		global.typer = 31;
		global.fc = 2;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2484_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2485_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2486_0");
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2487_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2488_0");
		instance_create(0, 0, obj_dialoguer);
		con = 361;
	}
	if (con == 361 && !d_ex())
	{
		with (s)
		{
		}
		with (r)
			sprite_index = spr_ralseil;
		con = 362;
		alarm[4] = 4;
	}
	if (con == 363)
	{
		with (s)
			scr_halt();
		global.typer = 30;
		global.fc = 1;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2506_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2507_0");
		global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2508_0");
		instance_create(0, 0, obj_dialoguer);
		con = 364;
	}
	if (con == 364 && !d_ex())
	{
		with (s)
			sprite_index = spr_susier_eye_dark_lookup;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2516_0");
		con = 365;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 365 && !d_ex())
	{
		with (s)
			sprite_index = spr_susier_eye_dark_unhappy;
		with (r)
			sprite_index = spr_ralseid_pleased;
		global.typer = 31;
		global.fc = 2;
		global.fe = 8;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2528_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2529_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2531_0");
		instance_create(0, 0, obj_dialoguer);
		con = 366;
	}
	if (con == 366 && !d_ex())
	{
		with (r)
			sprite_index = spr_ralseid;
		con = 367;
		alarm[4] = 30;
	}
	if (con == 368)
	{
		with (r)
			sprite_index = spr_ralseil;
		global.typer = 31;
		global.fc = 2;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2549_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2550_0");
		scr_susface(2, 1);
		global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2552_0");
		global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2553_0");
		instance_create(0, 0, obj_dialoguer);
		con = 369;
	}
	if (con == 369 && !d_ex())
	{
		with (r)
		{
			vspeed = -1;
			image_speed = 0.2;
			sprite_index = spr_ralseid;
		}
		with (s)
		{
			hspeed = 5;
			image_speed = 0.2;
		}
		with (k)
		{
			hspeed = 5;
			image_speed = 0.2;
		}
		with (r)
			depth = 900000;
		scr_pan(4, 0, 50);
		con = 370;
		alarm[4] = 50;
	}
	if (con == 371)
	{
		with (r)
			scr_halt();
		with (s)
			scr_halt();
		with (k)
			scr_halt();
		with (r)
			sprite_index = spr_ralseir;
		con = 372;
		alarm[4] = 45;
	}
	if (con == 373)
	{
		with (s)
			sprite_index = spr_susiel_eye_dark_unhappy;
		with (k)
			sprite_index = spr_krisl_dark;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2584_0");
		global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2585_0");
		instance_create(0, 0, obj_dialoguer);
		con = 374;
	}
	if (con == 374 && !d_ex())
	{
		with (k)
		{
			sprite_index = spr_krisr_dark;
			image_speed = 0.2;
			hspeed = 6;
		}
		with (s)
		{
			sprite_index = spr_susier_eye_dark_unhappy;
			image_speed = 0.2;
			hspeed = 6;
		}
		scr_pan(5, 0, 999);
		con = 375;
		alarm[4] = 60;
	}
	if (con == 376)
	{
		fade = instance_create(0, 0, obj_fadeout);
		with (fade)
			fadespeed = 0.02;
		con = 377;
		alarm[4] = 60;
	}
	if (con == 378)
	{
		scr_losechar();
		scr_getchar(2);
		global.plot = 240;
		global.entrance = 1;
		global.interact = 3;
		instance_create(0, 0, obj_persistentfadein);
		room_goto_next();
	}
}
if (con >= 700)
{
	if (con == 700 && global.plot >= 243 && global.interact == 0 && obj_mainchara.x >= 1900)
	{
		global.interact = 1;
		con = 701;
		with (obj_caterpillarchara)
			visible = 0;
		with (obj_mainchara)
			visible = 0;
		with (obj_npc_facing)
			visible = 0;
		s = scr_dark_marker(obj_caterpillarchara.x, obj_caterpillarchara.y, spr_susiel_dark_eyes);
		with (s)
			scr_depth();
		k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisl_dark);
		with (k)
			scr_depth();
		r = scr_dark_marker(obj_npc_facing.x, obj_npc_facing.y, spr_ralseir);
		with (r)
			scr_depth();
		global.typer = 31;
		global.fc = 2;
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2648_0");
		mus_volume(global.currentsong[1], 0, 80);
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 701 && !d_ex())
	{
		with (r)
		{
			sprite_index = spr_ralseid;
			image_speed = 0.1;
			vspeed = 1;
		}
		con = 702;
		alarm[4] = 60;
	}
	if (con == 703)
	{
		with (r)
			scr_halt();
		con = 704;
		alarm[4] = 20;
	}
	if (con == 705)
	{
		global.plot = 244;
		snd_free_all();
		con = 286;
	}
}
