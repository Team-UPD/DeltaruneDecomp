if (global.monster[myself] == 1)
{
	if (scr_isphase("enemytalk") && talked == 0)
	{
		scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		instance_create(x - 102, y + 18, obj_werewire_zzt_balloon);
		snd_play(snd_electric_talk);
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && scr_isphase("enemytalk"))
	{
		rtimer = 0;
		if (!i_ex(obj_werewire_zzt_balloon))
			global.mnfight = 2;
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
		if (rtimer == 12)
		{
			rr = choose(0, 1);
			if (rr == 0)
			{
				scr_turntimer(210);
				shootcon = 0;
				shootmode = 1;
				shoottimer = 0;
				with (object_index)
					shootwait = random(5);
				werewire_count = scr_monsterpop();
			}
			else if (rr == 1)
			{
				d = instance_create(x - 8, y + 4, obj_dbulletcontroller);
				d.difficulty = (scr_monsterpop() - 1) * 1.4;
				d.damage = global.monsterat[myself] * 5;
				d.target = mytarget;
				d.type = 34;
			}
			scr_turntimer(140);
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			if (global.mercymod[myself] >= global.mercymax[myself])
			{
				global.battlemsg[0] = stringsetloc("* Werewerewire's wire is loose^1!&* ... well^1, it would be.", "obj_werewerewire_enemy_slash_Step_0_gml_97_0");
			}
			else
			{
				rr = choose(0, 1, 2, 3, 4);
				if (rr == 0)
					global.battlemsg[0] = stringsetloc("* Werewerewire crackles at a level too high for you to understand.", "obj_werewerewire_enemy_slash_Step_0_gml_101_0");
				if (rr == 1)
					global.battlemsg[0] = stringsetloc("* Werewerewire shuffles coolly.", "obj_werewerewire_enemy_slash_Step_0_gml_102_0");
				if (rr == 2)
					global.battlemsg[0] = stringsetloc("* Werewerewire looks strong just standing there.", "obj_werewerewire_enemy_slash_Step_0_gml_103_0");
				if (rr == 3)
					global.battlemsg[0] = stringsetloc("* Werewerewire pretends to ignore you.", "obj_werewerewire_enemy_slash_Step_0_gml_104_0");
				if (rr == 4)
					global.battlemsg[0] = stringsetloc("* Smells like a lightning strike.", "obj_werewerewire_enemy_slash_Step_0_gml_105_0");
			}
			attacked = 1;
		}
		else
		{
			scr_turntimer(120);
		}
	}
	if (shootcon == 0 && shootmode == 1)
	{
		if (global.turntimer >= 10)
			shootwait--;
		if (shootwait <= 0 && global.turntimer >= 40)
		{
			shootwait = ((werewire_count * 6) + random(7)) * werewire_count;
			shootwait = 0;
			shootcon = 1;
			shoottimer = 0;
		}
		else if (global.turntimer < 40)
		{
			shootmode = 0;
		}
	}
	if (shootcon == 1)
	{
		scr_randomtarget();
		shootcon = choose(2, 20);
		sprite_index = spr_werewerewire_attack_2;
		if (shootcon == 20)
			sprite_index = spr_werewerewire_attack_1;
		image_index = 0;
		image_speed = 0;
		siner = 0;
		siner_timer = 0;
		stop_anim = 1;
		anim_timer_2 = 0;
		shootcount = 0;
	}
	if (shootcon == 2)
	{
		anim_add = 0.5;
		if (image_index < 3)
			image_index += (anim_add * m);
		if (image_index >= 3)
		{
			shootcon = 3;
			shoottimer = 0;
			shootcount = 0;
		}
	}
	if (shootcon == 3)
	{
		shoottimer -= 1;
		if (shoottimer <= 0)
		{
			for (i = 0; i < 3; i += 1)
			{
				snd_play_x(snd_electric_talk, 0.8, 1.9);
				lasercircle = instance_create(x - 52, y + 18, obj_werewire_bullet_lasercircle);
				lasercircle.damage = global.monsterat[myself] * 5;
				lasercircle.target = mytarget;
				if (instance_exists(obj_heart))
					laser_angle = (point_direction(lasercircle.x, lasercircle.y, obj_heart.x + 8, obj_heart.y + 8) - 2) + random(4);
				lasercircle.my_angle = (laser_angle - 5) + (5 * i);
				lasercircle.my_angle_change = (-1 + i) * 0.8 * m;
				with (lasercircle)
				{
					my_speed = 4;
					my_accel = 0.2;
					my_length = 4;
				}
				lasercircle.my_accel = 0.4;
			}
			shoottimer = 10 / m;
			shootcount += 1;
		}
		if (shootcount >= 3)
		{
			shootcon = 4;
			shootimer = 0;
		}
	}
	if (shootcon == 4)
	{
		shoottimer += 1;
		threshold = 2 + ((scr_monsterpop() - 1) * 10);
		if (shoottimer >= (threshold / m))
		{
			image_index += (0.25 * m);
			if (image_index >= 9)
			{
				shootcon = 0;
				image_index = 0;
				sprite_index = spr_werewerewire_idle;
				image_speed = 0.16;
				stop_anim = 0;
			}
		}
	}
	if (shootcon == 20)
	{
		bx1[0] = -24;
		bx1[1] = -40;
		bx1[2] = -48;
		bx1[3] = -46;
		bx1[4] = -26;
		by1[0] = -54;
		by1[1] = -30;
		by1[2] = 6;
		by1[3] = 46;
		by1[4] = 72;
		bullet_angle = (point_direction(x + bx1[2], y + by1[2], obj_heart.x + 8, obj_heart.y + 8) - 10) + random(20);
		shootcon = 21;
	}
	if (shootcon == 21)
	{
		shoottimer += 1;
		if (shoottimer >= ((15 / m) + ((scr_monsterpop() - 1) * 10)))
		{
			image_index += (0.25 * m);
			if (image_index == 2)
				snd_play_x(motor_swing_down, 1, 1.2);
			if (image_index >= 2 && image_index <= 3)
			{
				repeat (2)
				{
					if (shootcount < 5)
					{
						bullet[shootcount] = instance_create(x + bx1[shootcount], y + by1[shootcount], obj_werewire_bullet_lasersquare);
						bullet[shootcount].damage = global.monsterat[myself] * 5;
						bullet[shootcount].target = mytarget;
						bullet[shootcount].sprite_index = spr_bullet_werewire_spark;
						bullet[shootcount].stretch = 0;
						bullet[shootcount].image_speed = 0.2;
						bullet[shootcount].image_xscale = 4;
						bullet[shootcount].image_yscale = 4;
						bullet[shootcount].direction = (bullet_angle - 28) + (shootcount * 14);
						bullet[shootcount].image_angle = bullet[shootcount].direction;
						bullet[shootcount].speed = 9;
						bullet[shootcount].friction = 1;
						shootcount += 1;
					}
				}
			}
			if (image_index >= 4)
			{
				for (i = 0; i < 5; i += 1)
				{
					with (bullet[i])
					{
						if (speed <= 0)
							speed = 0.2;
						friction = -0.25;
					}
				}
				shootcon = 0;
				image_index = 0;
				sprite_index = spr_werewerewire_idle;
				image_speed = 0.16;
				stop_anim = 0;
			}
		}
	}
	if (hangcon == 1)
	{
		hangvspeed -= (1 * m);
		hangy += hangvspeed;
		if ((y + hangy) <= (__view_get(e__VW.YView, 0) + 60))
		{
			hangcon = 2;
			hangtimer = 0;
		}
	}
	if (hangcon == 2)
	{
		hangy += hangvspeed;
		if (abs(hangvspeed) >= 0)
			hangvspeed *= 0.5;
		if (abs(hangvspeed) <= 1)
		{
			hangvspeed = 0;
			hangcon = 3;
		}
	}
	if (hangcon >= 1 && hangcon <= 3)
	{
		if (xmovement_finished == 0)
		{
			x -= ((x - targetx) / (6 * m));
			if (x <= (targetx + 2))
			{
				x = targetx;
				xmovement_finished = 1;
			}
		}
	}
	if (hangcon == 3)
	{
		if (xmovement_finished == 1)
			hangcon = 4;
	}
	if (hangcon >= 2 && hangcon < 5 && global.turntimer >= 30)
	{
		hangsparktimer++;
		if (hangsparktimer >= 20)
		{
			hangsparktimer = 0;
			shootcount = 0;
			d = instance_create(x + hangx, y + hangy + 80, obj_werewerewire_laserbullet_v);
			d.damage = global.monsterat[myself] * 5;
			d.target = mytarget;
			d.attackdirection = irandom(2);
		}
	}
	if (hangcon == 4)
	{
		hangsiner += (1 * m);
		x += (sin(hangsiner / 12) * 3);
		if (global.turntimer <= 20)
			hangcon = 5;
	}
	if (hangcon == 5)
	{
		hangy -= ((hangy - init_hangy) / (8 / m));
		if (hangy >= (init_hangy - 4))
			hangy = init_hangy;
		x -= (((x - remx) / (8 / m)) - 1);
		if (x >= (remx - 1))
			x = remx;
		if (hangy == init_hangy && x == remx)
		{
			hangcon = 0;
			sprite_index = spr_werewerewire_idle;
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
		msgsetloc(0, "* WEREWEREWIRE - It absorbed the wire and became stronger. Be careful!/%", "obj_werewerewire_enemy_slash_Step_0_gml_377_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		var mercy_amount = (simultotal == 1) ? 12 : 7;
		scr_mercyadd(myself, mercy_amount * mercy_act);
		var simultext = (simultotal == 1) ? stringsetloc("* You and Werewerewire locked eyes. The atmosphere is electric.../%", "obj_werewerewire_enemy_slash_Step_0_gml_383_0") : stringsetloc("* You watched coldly./%", "obj_werewerewire_enemy_slash_Step_0_gml_383_1");
		msgset(0, simultext);
		scr_simultext("kris");
		actcon = (simulorderkri == 0) ? 20 : 1;
	}
	if (acting == 3 && actcon == 0)
	{
		scr_mercyadd(myself, 16 * mercy_act);
		scr_speaker("no_name");
		msgsetloc(0, "* You and Susie told Werewerewire you'd beat them up!/", "obj_werewerewire_enemy_slash_Step_0_gml_393_0");
		msgnextloc("* The air crackles with fighting spirit!/%", "obj_werewerewire_enemy_slash_Step_0_gml_394_0");
		scr_battletext_default();
		actcon = 1;
	}
	if (acting == 4 && actcon == 0)
	{
		scr_mercyadd(myself, 5 * mercy_act);
		with (obj_werewerewire_enemy)
			mercy_act = clamp(mercy_act + 1, 1, 10);
		scr_speaker("no_name");
		msgsetloc(0, "* You and Ralsei whispered sweetly to Werewerewire!/", "obj_werewerewire_enemy_slash_Step_0_gml_408_0");
		msgnextloc("* It pretended not to care^1, but ACTs became more effective!/%", "obj_werewerewire_enemy_slash_Step_0_gml_409_0");
		scr_battletext_default();
		actcon = 1;
	}
	if (actingsus == 1 && actconsus == 1)
	{
		var mercy_amount = (simultotal == 1) ? 12 : 7;
		scr_mercyadd(myself, mercy_amount * mercy_act);
		var simultext = (choose(0, 1) == 0) ? stringsetloc("* Susie snorted \"tch!\"/%", "obj_werewerewire_enemy_slash_Step_0_gml_412_0") : stringsetloc("* Susie laughed \"heh!\"/%", "obj_werewerewire_enemy_slash_Step_0_gml_412_1");
		msgset(0, simultext);
		scr_simultext("susie");
		actconsus = (simulordersus == 0) ? 20 : 0;
	}
	if (actingral == 1 && actconral == 1)
	{
		var mercy_amount = (simultotal == 1) ? 12 : 7;
		scr_mercyadd(myself, mercy_amount * mercy_act);
		var simultext = (choose(0, 1) == 0) ? stringsetloc("* Ralsei winks demurely!/%", "obj_werewerewire_enemy_slash_Step_0_gml_424_0") : stringsetloc("* Ralsei smiled sweetly!/%", "obj_werewerewire_enemy_slash_Step_0_gml_424_1");
		msgset(0, simultext);
		scr_simultext("ralsei");
		actconral = (simulorderral == 0) ? 20 : 0;
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		scr_act_charsprite_end();
		scr_nextact();
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
