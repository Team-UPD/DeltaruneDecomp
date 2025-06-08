if (global.monster[myself] == 1)
{
	if (global.monsterstatus[myself] == 0)
		scr_monster_make_tired(myself);
	if (scr_isphase("enemytalk") && talked == 0 && talkwait != 1)
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
		if (!talkwait && !instance_exists(obj_werewire_zzt_balloon) && !instance_exists(obj_writer) && global.mnfight == 1)
			global.mnfight = 2;
		if (scr_isphase("bullets"))
		{
			if (!instance_exists(obj_growtangle))
			{
				if (scr_monsterpop() > 1)
				{
					instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
				}
				else
				{
					battlebox = instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 240, obj_growtangle);
					battlebox.maxyscale = 1.33;
				}
			}
			if (!instance_exists(obj_moveheart))
				scr_moveheart();
		}
	}
	if (scr_isphase("bullets") && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 15)
		{
			rr = (scr_monsterpop() > 1) ? choose(0, 1) : 3;
			if (rr == 0 || rr == 1)
			{
				if (!instance_exists(obj_berdlyb2_enemy))
					scr_turntimer(210);
				shootcon = 0;
				shootmode = 1;
				shoottimer = 0;
				with (object_index)
					shootwait = (random(5) + (initid * 30)) - 30;
				werewire_count = scr_monsterpop();
			}
			else if (rr == 3)
			{
				global.turntimer = 170;
				hangsparktimer = 0;
				shootmode = 2;
				xmovement_finished = 0;
				targetx = __view_get(e__VW.XView, 0) + 260;
				hangvspeed = 0;
				hanghspeed = 0;
				hangcon = 1;
				hangsiner = 0;
				sprite_index = spr_werewire_hang;
			}
			turns += 1;
			global.typer = 6;
			global.fc = 0;
			if (global.mercymod[myself] >= global.mercymax[myself])
			{
				global.battlemsg[0] = stringsetloc("* Werewire's wire is loose!", "obj_werewire_enemy_slash_Step_0_gml_98_0");
			}
			else
			{
				rr = choose(0, 1, 2, 3, 4);
				if (rr == 0)
					global.battlemsg[0] = stringsetloc("* Werewire crackles incomprehensibly.", "obj_werewire_enemy_slash_Step_0_gml_102_0");
				if (rr == 1)
					global.battlemsg[0] = stringsetloc("* Werewire shuffles menacingly.", "obj_werewire_enemy_slash_Step_0_gml_103_0");
				if (rr == 2)
					global.battlemsg[0] = stringsetloc("* Werewire dusts sparks off its shoulders.", "obj_werewire_enemy_slash_Step_0_gml_104_0");
				if (rr == 3)
					global.battlemsg[0] = stringsetloc("* The atmosphere is electric.", "obj_werewire_enemy_slash_Step_0_gml_105_0");
				if (rr == 4)
					global.battlemsg[0] = stringsetloc("* Smells like ozone.", "obj_werewire_enemy_slash_Step_0_gml_106_0");
			}
			attacked = 1;
			var attackcheck = 0;
			var misscheck = 0;
			for (var i = 0; i < 3; i++)
			{
				if (global.charaction[i] == 1)
					attackcheck = 1;
			}
			if (attackcheck == 1)
			{
				for (var i = 0; i < 3; i++)
				{
					if (global.monsterhp[i] == global.monstermaxhp[i] && global.monster[i] == 1)
						misscheck++;
				}
			}
			if (misscheck == scr_monsterpop())
				global.battlemsg[0] = stringsetsubloc("* Try timing your attacks by pressing ~1!", scr_get_input_name(4), "obj_werewire_enemy_slash_Step_0_gml_122_0");
		}
		else if (!instance_exists(obj_berdlyb2_enemy))
		{
			scr_turntimer(60);
		}
	}
	if (shootcon == 0 && shootmode == 1)
	{
		if (global.turntimer >= 10)
			shootwait--;
		if (shootwait <= 0 && global.turntimer >= 40)
		{
			shootwait = ((werewire_count * 6) + random(7)) * werewire_count;
			if (easymode == 1)
				shootwait = ((werewire_count * 10) + random(4)) * werewire_count;
			if (werewire_count == 3)
				shootwait = ((werewire_count * 5) + random(7)) * werewire_count;
			if (werewerewire == 1)
				shootwait = 0;
			if (scr_monsterattacknamecount("Chirashi") > 0)
				shootwait += (10 * werewire_count);
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
		damage = global.monsterat[myself];
		shootcon = choose(2, 20);
		sprite_index = spr_werewire_attack_2;
		if (shootcon == 20)
			sprite_index = spr_werewire_attack_1;
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
		anim_add = 0.25;
		if (werewerewire == 1)
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
			snd_play_x(snd_electric_talk, 1, 1.5);
			for (var i = 0; i < 3; i += 1)
			{
				lasercircle = instance_create(x - 52, y + 18, obj_werewire_bullet_lasercircle);
				lasercircle.damage = global.monsterat[myself] * 5;
				lasercircle.target = mytarget;
				lasercircle.grazepoints = 1;
				if (i_ex(obj_heart))
					laser_angle = (point_direction(lasercircle.x, lasercircle.y, obj_heart.x + 8, obj_heart.y + 8) - 2) + random(4);
				else
					laser_angle += (-2 + random(4));
				lasercircle.my_angle = (laser_angle - 5) + (5 * i);
				lasercircle.my_angle_change = (-1 + i) * 0.8 * m;
				with (lasercircle)
				{
					my_speed = 4;
					my_accel = 0.2;
					my_length = 4;
				}
				lasercircle.my_accel = 0.2 + (werewerewire * 0.2);
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
		threshold = 10;
		if (werewerewire == 1)
			threshold = 2;
		if (shoottimer >= (threshold / m))
		{
			image_index += (0.25 * m);
			if (image_index >= 9)
			{
				shootcon = 0;
				image_index = 0;
				sprite_index = spr_werewire_idle;
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
		if (i_ex(obj_heart))
			bullet_angle = (point_direction(x + bx1[2], y + by1[2], obj_heart.x + 8, obj_heart.y + 8) - 10) + random(20);
		else
			bullet_angle += (-10 + random(20));
		shootcon = 21;
	}
	if (shootcon == 21)
	{
		shoottimer += 1;
		if (shoottimer >= (15 / m))
		{
			image_index += (0.25 * m);
			if (image_index == 2)
				snd_play_x(motor_swing_down, 1, 1);
			if (image_index >= 2 && image_index <= 3)
			{
				repeat (2)
				{
					if (shootcount < 5)
					{
						bullet[shootcount] = instance_create(x + bx1[shootcount], y + by1[shootcount], obj_werewire_bullet_lasersquare);
						bullet[shootcount].damage = global.monsterat[myself] * 5;
						bullet[shootcount].target = mytarget;
						bullet[shootcount].grazepoints = 5;
						bullet[shootcount].sprite_index = spr_bullet_werewire_spark;
						bullet[shootcount].stretch = 0;
						bullet[shootcount].image_speed = 0.2;
						bullet[shootcount].image_xscale = 4;
						bullet[shootcount].image_yscale = 4;
						bullet[shootcount].direction = (bullet_angle - 28) + (shootcount * 14);
						bullet[shootcount].image_angle = bullet[shootcount].direction;
						bullet[shootcount].speed = 9 - initid - werewerewire;
						bullet[shootcount].friction = 1;
						shootcount += 1;
					}
				}
			}
			if (image_index >= 4)
			{
				for (var i = 0; i < 5; i += 1)
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
				sprite_index = spr_werewire_idle;
				image_speed = 0.16;
				stop_anim = 0;
			}
		}
	}
	if (hangcon == 1)
	{
		scr_randomtarget();
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
		if (hangsparktimer >= 6)
		{
			hangsparktimer = 0;
			shootcount = 0;
			bullet[shootcount] = instance_create(x + hangx, y + hangy + 80, obj_werewire_bullet_lasersquare);
			bullet[shootcount].damage = global.monsterat[myself] * 5;
			bullet[shootcount].target = mytarget;
			bullet[shootcount].grazepoints = 6;
			bullet[shootcount].sprite_index = spr_bullet_werewire_spark;
			bullet[shootcount].stretch = 0;
			bullet[shootcount].image_speed = 0.2;
			bullet[shootcount].image_xscale = 4;
			bullet[shootcount].image_yscale = 4;
			bullet[shootcount].hspeed = -3 + random(6);
			bullet[shootcount].image_angle = bullet[shootcount].direction;
			bullet[shootcount].vspeed = -9 + random(2);
			bullet[shootcount].gravity = 0.5;
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
			sprite_index = spr_werewire_idle;
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
		msgsetloc(0, "* WEREWIRE - Controlled by the Queen's wire, it's sleepwalking through a nightmare!/%", "obj_werewire_enemy_slash_Step_0_gml_393_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		var simultext = (simultotal == 1) ? stringsetloc("* You jiggled your body. The wire loosened in turn!/%", "obj_werewire_enemy_slash_Step_0_gml_399_0") : stringsetloc("* You jiggled your body!/%", "obj_werewire_enemy_slash_Step_0_gml_399_1");
		scr_act_charsprite("kris", spr_krisb_wiggle, 0.25, 1);
		msgset(0, simultext);
		scr_mercyadd(myself, 50);
		scr_simultext("kris");
		actcon = (simulorderkri == 0) ? 20 : -1;
	}
	if (acting == 3 && actcon == 0)
	{
		actcon = 12;
		alarm[4] = 15;
		with (obj_monsterparent)
		{
			scr_rememberxy();
			if (global.monstertype[myself] == 33)
				scr_move_to_point_over_time((camerax() + 640) - (initid * 100), cameray() + 206, 15);
			else
				scr_move_to_point_over_time(740, y, 15);
		}
	}
	if (actcon == 13)
	{
		msgsetsubloc(0, "* Press ~1 to throw, aim for the weakpoint!", scr_get_input_name(6), "obj_werewire_enemy_slash_Step_0_gml_425_0");
		with (obj_werewire_enemy)
		{
			target = instance_create(x, y, obj_werewire_throwtarget);
			target.maker = id;
		}
		with (obj_herokris)
			visible = 0;
		with (obj_herosusie)
			visible = 0;
		throwsus = instance_create(obj_herosusie.x, obj_herosusie.y, obj_werewire_throwkris);
		scr_battletext_default();
		actcon = 14;
	}
	if (actcon == 15)
	{
		with (obj_monsterparent)
			scr_move_to_rememberxy(15);
		actcon = 16;
		alarm[4] = 15;
	}
	if (actcon == 17)
	{
		actcon = 1;
		with (obj_werewire_enemy)
		{
			scr_mercyadd(myself, mercyaccumulated);
			mercyaccumulated = 0;
		}
	}
	if (actingsus == 1 && actconsus == 1)
	{
		var simultext = (simultotal == 1) ? stringsetloc("* Susie yanked on the wire! It loosened a little bit./%", "obj_werewire_enemy_slash_Step_0_gml_457_0") : stringsetloc("* Susie yanked the wire!/%", "obj_werewire_enemy_slash_Step_0_gml_457_1");
		msgset(0, simultext);
		scr_mercyadd(myself, 25);
		scr_simultext("susie");
		actconsus = (simulordersus == 0) ? 20 : 0;
	}
	if (actingral == 1 && actconral == 1)
	{
		var simultext = (simultotal == 1) ? stringsetloc("* Ralsei sang a snake-charming song to the wire! It loosened a little bit./%", "obj_werewire_enemy_slash_Step_0_gml_469_0") : stringsetloc("* Ralsei charmed the wire!/%", "obj_werewire_enemy_slash_Step_0_gml_469_1");
		msgset(0, simultext);
		scr_mercyadd(myself, 25);
		scr_simultext("ralsei");
		actconral = (simulorderral == 0) ? 20 : 0;
	}
	if (actingnoe == 1 && actconnoe == 1)
	{
		var simultext = (simultotal == 1) ? stringsetloc("* Noelle pulled out the plug like a fairy light!/%", "obj_werewire_enemy_slash_Step_0_gml_481_0") : stringsetloc("* Noelle pulled on the plug!/%", "obj_werewire_enemy_slash_Step_0_gml_481_1");
		msgset(0, simultext);
		scr_mercyadd(myself, 50);
		scr_simultext("noelle");
		actconnoe = (simulordernoe == 0) ? 20 : 0;
	}
	if (actcon == 10 && !instance_exists(obj_writer))
	{
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		scr_act_charsprite_end();
		scr_nextact();
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
