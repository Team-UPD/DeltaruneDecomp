if (scr_debug())
{
	if (keyboard_check_pressed(ord("2")))
	{
		if (mergecon == 0 && cno < cmax)
		{
			mergecon = 1;
			newcno = cno + 1;
		}
	}
	if (keyboard_check_pressed(ord("0")))
	{
		if (global.interact == 0)
		{
			global.interact = 1;
			if (movecon == 0)
				movecon = 1;
			if (mergecon == 0 && cno > 0)
				newcno = cno - 1;
		}
	}
	if (keyboard_check_pressed(ord("1")))
	{
		if (movecon == 4)
			movecon = 2;
		if (movecon == 0)
		{
			movecon = 3;
			if (cno > 0)
				newcno = cno - 1;
		}
	}
}
if (movecon == 1)
{
	with (obj_mainchara)
		cutscene = 1;
	maxrectspeed = 14;
	movetimer = 0;
	movecon = 2;
	doorcon = 2;
	charadjustcon = 1;
	rectspacing = 120;
	shakecon = 1;
	rectcon = 1;
}
if (movecon == 2)
{
	movetimer += 1;
	if (movetimer == 10)
	{
		mergecon = 1;
		mergespeed = 0.05;
	}
	if (movetimer == 30)
	{
		if (charadjustcon >= 2)
			charadjustcon = 3;
		cno = newcno;
		doorcon = 1;
		shakecon = 3;
		rectcon = 3;
	}
	if (movetimer >= 40)
	{
		movecon = 0;
		if (global.interact == 1)
			global.interact = 0;
		charadjustcon = 0;
	}
}
if (movecon == 3)
{
	with (obj_mainchara)
		cutscene = 1;
	doorcon = 2;
	maxrectspeed = 10;
	movetimer = 0;
	movecon = 4;
	rectspacing = 240;
	shakecon = 1;
	rectcon = 1;
}
if (mergecon == 1)
{
	prev_bg_c = bg_c[cno];
	ideal_bg_c = bg_c[newcno];
	if (movecon == 0)
		cno = newcno;
	mergecon = 2;
	mergetimer = 0;
	merge_amt = 0;
}
if (mergecon == 2)
{
	merge_amt += mergespeed;
	if (merge_amt >= 1)
	{
		merge_amt = 1;
		mergecon = 3;
	}
	cur_bg_c = merge_color(prev_bg_c, ideal_bg_c, merge_amt);
}
if (mergecon == 3)
	mergecon = 0;
if (shakecon == 1)
{
	shakeamt = 0;
	shaketimer = 0;
	shakecon = 2;
}
if (shakecon == 2)
{
	if (abs(__view_get(e__VW.YView, 0)) < 4)
		__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) - (dir * 0.5));
}
if (shakecon == 3)
{
	snd_play(snd_screenshake);
	shakeamt = 4;
	shakecon = 4;
}
if (shakecon == 4)
{
	if (shakeamt >= 0)
	{
		__view_set(e__VW.XView, 0, (0 - random(shakeamt)) + random(shakeamt));
		__view_set(e__VW.YView, 0, (0 - random(shakeamt)) + random(shakeamt));
		shakeamt -= 0.5;
	}
	else
	{
		__view_set(e__VW.XView, 0, 0);
		__view_set(e__VW.YView, 0, 0);
		shakecon = 0;
	}
}
if (rectcon == 1)
{
	rectcon = 0;
	rectspeed = 0;
	rect_alpha = 0;
	recty = 0;
	rectcon = 2;
}
if (rectcon == 2)
{
	if (dir == 1)
	{
		if (rectspeed < maxrectspeed)
			rectspeed += 1;
	}
	if (dir == -1)
	{
		if (rectspeed > -maxrectspeed)
			rectspeed -= 1;
	}
	if (rect_alpha < 0.2)
		rect_alpha += 0.02;
	recty += rectspeed;
	if (recty >= rectspacing)
		recty -= rectspacing;
	if (recty <= -rectspacing)
		recty += rectspacing;
}
if (rectcon == 3)
{
	if (rectspeed >= 6)
		rectspeed = 6;
	if (rectspeed <= -6)
		rectspeed = -6;
	if (rectspeed > 0)
		rectspeed -= 0.5;
	if (rectspeed < 0)
		rectspeed += 0.5;
	if (rect_alpha > 0)
		rect_alpha -= 0.02;
	recty += rectspeed;
	if (recty >= rectspacing)
		recty -= rectspacing;
	if (recty <= -rectspacing)
		recty += rectspacing;
	if (rectspeed == 0 && rect_alpha == 0)
		rectcon = 0;
}
if (doorcon == 1)
{
	if (doorx <= 40)
		doorx += 5;
}
if (doorcon == 2)
{
	if (doorx >= 0)
		doorx -= 5;
	if (doorx <= 0)
	{
		doorx = 0;
		doorcon = 0;
	}
}
if (charadjustcon == 1)
{
	ccount = 0;
	exist[0] = 0;
	exist[1] = 0;
	charremy[0] = 0;
	charremy[1] = 0;
	if (instance_exists(global.cinstance[0]))
	{
		exist[0] = 1;
		charremy[0] = global.cinstance[0].y;
	}
	if (instance_exists(global.cinstance[1]))
	{
		exist[1] = 1;
		charremy[1] = global.cinstance[1].y;
	}
	charadjustcon = 2;
}
if (charadjustcon == 2)
{
	for (i = 0; i < 2; i += 1)
	{
		if (exist[i] == 1)
		{
			with (global.cinstance[i])
			{
				if (y >= 260)
					y -= 10;
			}
		}
	}
}
if (charadjustcon == 3)
{
	ok[0] = 0;
	ok[1] = 0;
	for (i = 0; i < 2; i += 1)
	{
		if (exist[i] == 1)
		{
			if (global.cinstance[i].y < charremy[i])
			{
				with (global.cinstance[i])
					y += 10;
			}
			if (global.cinstance[i].y >= charremy[i])
				ok[i] = 1;
		}
		else
		{
			ok[i] = 1;
		}
	}
	if (ok[0] == 1 && ok[1] == 1)
		charadjustcon = 0;
}
if (con >= 1)
{
	if (con == 1)
	{
		with (obj_caterpillarchara)
			instance_destroy();
		with (obj_mainchara)
			visible = 0;
		global.interact = 1;
		k = scr_dark_marker(300, 420, spr_krisu_dark);
		s = scr_dark_marker(300, 460, spr_susieu_dark);
		r = scr_dark_marker(300, 500, spr_ralseiu);
		cc[0] = k;
		cc[1] = s;
		cc[2] = r;
		for (i = 0; i < 3; i += 1)
		{
			with (cc[i])
			{
				scr_depth();
				vspeed = -4;
				image_speed = 0.25;
			}
		}
		con = 2;
	}
	if (con == 2)
	{
		global.interact = 1;
		if (k.y <= 200)
		{
			with (k)
			{
				scr_halt();
				sprite_index = spr_krisd_dark;
			}
		}
		if (s.y <= 200 && s.x == s.xstart)
		{
			with (s)
			{
				scr_halt();
				x -= 1;
				hspeed = -4;
				image_speed = 0.25;
				sprite_index = spr_susiel_dark;
			}
		}
		if (s.x <= 240)
		{
			with (s)
			{
				scr_halt();
				x = 240;
				sprite_index = spr_susier_dark;
			}
		}
		if (r.y <= 275 && r.x == r.xstart)
		{
			jup = 1;
			with (r)
			{
				hspeed = 1.25;
				vspeed = -2.25;
			}
		}
		if (jup == 1)
			a_timer += 1;
		if (a_timer >= 48)
		{
			with (r)
				scr_halt();
			con = 3;
		}
	}
	if (con == 3)
	{
		with (k)
			scr_halt();
		with (r)
			scr_halt();
		with (s)
			scr_halt();
		con = 4;
		alarm[4] = 30;
	}
	if (con == 5)
	{
		with (r)
			sprite_index = spr_ralseid;
		global.fc = 2;
		global.typer = 31;
		global.fe = 11;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_353_0");
		instance_create(0, 0, obj_dialoguer);
		con = 6;
	}
	if (con == 6 && !d_ex())
	{
		ele_noise = snd_init("elevator.ogg");
		ele_noise_ind = snd_loop(ele_noise);
		snd_volume(ele_noise_ind, 0.6, 0);
		with (r)
			sprite_index = spr_ralseiu;
		snd_play(snd_item);
		movecon = 3;
		newcno = 2;
		con = 7;
		pitchcount = 0.1;
		snd_pitch(ele_noise_ind, pitchcount);
		alarm[4] = 45;
	}
	if (con == 7)
	{
		pitchcount += 0.015;
		snd_pitch(ele_noise_ind, pitchcount);
	}
	if (con == 8)
	{
		with (r)
			sprite_index = spr_ralseid;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_384_0");
		instance_create(0, 0, obj_dialoguer);
		con = 9;
	}
	if (con == 9 && !d_ex())
	{
		with (r)
		{
			vspeed = 2;
			image_speed = 0.2;
		}
		con = 10;
		alarm[4] = 15;
	}
	if (con == 11)
	{
		with (r)
			scr_halt();
		with (r)
		{
			sprite_index = spr_ralsei_sit;
			image_speed = 0.25;
		}
		con = 12;
		snd_play(snd_wing);
		alarm[4] = 12;
	}
	if (con == 13)
	{
		with (r)
		{
			image_speed = 0;
			image_index = 2;
		}
		con = 15;
		alarm[4] = 20;
	}
	if (con == 16)
	{
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_419_0");
		con = 17;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 17 && !d_ex())
	{
		with (s)
		{
			hspeed = -4;
			image_speed = 0.2;
		}
		with (k)
			sprite_index = spr_kris_fallen_dark;
		snd_play(snd_wing);
		con = 18;
		alarm[4] = 10;
	}
	if (con == 19)
	{
		with (s)
		{
			scr_halt();
			sprite_index = spr_susier_wall;
		}
		con = 20;
		alarm[4] = 120;
	}
	if (con == 21)
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_448_0");
		global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_449_0");
		scr_ralface(2, "B");
		global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_451_0");
		scr_susface(4, 0);
		global.msg[5] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_453_0");
		global.msg[6] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_454_0");
		scr_ralface(7, "B");
		global.msg[8] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_456_0");
		scr_susface(9, 7);
		global.msg[10] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_458_0");
		global.msg[11] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_459_0");
		global.msg[12] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_460_0");
		instance_create(0, 0, obj_dialoguer);
		con = 22;
	}
	if (con == 22 && !d_ex())
	{
		con = 23;
		alarm[4] = 90;
	}
	if (con == 24)
	{
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_476_0");
		global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_477_0");
		scr_ralface(2, 3);
		global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_479_0");
		scr_susface(4, 6);
		global.msg[5] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_481_0");
		scr_ralface(6, 6);
		global.msg[7] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_483_0");
		global.msg[8] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_484_0");
		global.msg[9] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_485_0");
		scr_susface(10, 0);
		global.msg[11] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_487_0");
		global.msg[12] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_488_0");
		con = 25;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 25 && !d_ex())
	{
		con = 26;
		alarm[4] = 90;
	}
	if (con == 27)
	{
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_503_0");
		global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_504_0");
		scr_ralface(2, 0);
		global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_506_0");
		scr_susface(4, 0);
		global.msg[5] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_508_0");
		global.msg[6] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_509_0");
		scr_ralface(7, 6);
		global.msg[8] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_511_0");
		scr_susface(9, 0);
		global.msg[10] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_513_0");
		global.msg[11] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_514_0");
		scr_ralface(12, 8);
		global.msg[13] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_516_0");
		scr_susface(14, 2);
		global.msg[15] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_518_0");
		instance_create(0, 0, obj_dialoguer);
		con = 28;
	}
	if (con == 28 && !d_ex())
	{
		con = 29;
		alarm[4] = 45;
	}
	if (con == 30)
	{
		movecon = 2;
		con = 31;
		snd_volume(ele_noise_ind, 0, 60);
		alarm[4] = 60;
	}
	if (con == 31)
	{
		if (pitchcount > 0.1)
			pitchcount -= 0.015;
		snd_pitch(ele_noise_ind, pitchcount);
		global.interact = 1;
	}
	if (con == 32)
	{
		snd_free(ele_noise);
		with (r)
			image_speed = -0.25;
		con = 33;
		alarm[4] = 7;
	}
	if (con == 34)
	{
		with (r)
		{
			sprite_index = spr_ralseid;
			image_index = 0;
			vspeed = 4;
			image_speed = 0.25;
		}
		con = 35;
	}
	if (con == 35)
	{
		if (r.y >= 270)
		{
			with (r)
			{
				vspeed = 0;
				hspeed = -6;
				sprite_index = spr_ralseil;
			}
			con = 36;
		}
	}
	if (con == 36)
	{
		if (r.x <= 300)
		{
			with (r)
			{
				scr_halt();
				sprite_index = spr_ralseiu;
			}
			con = 37;
			alarm[4] = 20;
		}
	}
	if (con == 38)
	{
		global.fc = 2;
		global.typer = 31;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_605_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 0;
		con = 39;
	}
	if (con == 39 && !d_ex())
	{
		with (r)
		{
			sprite_index = spr_ralseid;
			vspeed = 4;
			image_speed = 0.25;
		}
		global.interact = 0;
		con = 40;
		kremx = k.x;
		kremy = k.y;
		snd_play(snd_wing);
		with (k)
			instance_destroy();
		obj_mainchara.x = kremx;
		obj_mainchara.y = kremy;
		global.facing = 0;
		with (obj_mainchara)
			visible = 1;
		movecounter = 0;
	}
	if (con == 40)
	{
		if (obj_mainchara.x != kremx || obj_mainchara.y != kremy)
			movecounter += 1;
		if (movecounter >= 3)
		{
			con = 41;
			global.interact = 1;
			global.fc = 1;
			global.typer = 30;
			global.fe = 0;
			global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_644_0");
			instance_create(0, 0, obj_dialoguer);
		}
	}
	if (con == 41 && !d_ex())
	{
		with (s)
		{
			sprite_index = spr_susier_dark_unhappy;
			image_speed = 0.1;
			hspeed = 2;
		}
		global.facing = 3;
		con = 43;
		alarm[4] = 15;
	}
	if (con == 44)
	{
		with (s)
			scr_halt();
		con = 45;
		alarm[4] = 30;
	}
	if (con == 46)
	{
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_674_0");
		global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_675_0");
		global.msg[2] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_676_0");
		global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_677_0");
		instance_create(0, 0, obj_dialoguer);
		con = 47;
	}
	if (con == 47 && !d_ex())
	{
		with (s)
			sprite_index = spr_susieu_dark;
		con = 48;
		alarm[4] = 30;
	}
	if (con == 49)
	{
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_691_0");
		instance_create(0, 0, obj_dialoguer);
		con = 50;
	}
	if (con == 50 && !d_ex())
	{
		with (s)
			sprite_index = spr_susiel_dark_unhappy;
		con = 51;
		alarm[4] = 60;
	}
	if (con == 52)
	{
		with (s)
			sprite_index = spr_susier_dark;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_709_0");
		global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_710_0");
		instance_create(0, 0, obj_dialoguer);
		con = 53;
	}
	if (con == 53 && !d_ex())
	{
		with (s)
		{
			sprite_index = spr_susied_dark;
			vspeed = 4;
			image_speed = 0.25;
		}
		con = 54;
	}
	if (con == 54)
	{
		if (s.y >= 260)
		{
			global.facing = 0;
			with (s)
			{
				scr_halt();
				hspeed = 4;
				sprite_index = spr_susier_dark;
				image_speed = 0.25;
			}
			con = 55;
		}
	}
	if (con == 55)
	{
		if (s.x >= 300)
		{
			with (s)
			{
				scr_halt();
				vspeed = 3;
				sprite_index = spr_susied_dark_unhappy;
				image_speed = 0.125;
			}
			con = 56;
		}
	}
	if (con == 56)
	{
		snd_free_all();
		if (s.y >= 320)
		{
			with (s)
				scr_halt();
			con = 57;
			alarm[4] = 30;
		}
	}
	if (con == 58)
	{
		global.currentsong[0] = snd_init("charjoined.ogg");
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_774_0");
		global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_775_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 0;
		con = 59;
	}
	if (con == 59 && !d_ex())
	{
		with (s)
		{
			vspeed = 6;
			image_speed = 0.25;
		}
		con = 60;
		alarm[4] = 50;
	}
	if (con == 61)
	{
		global.currentsong[1] = mus_play(global.currentsong[0]);
		snd_volume(global.currentsong[1], 0.8, 0);
		global.typer = 6;
		global.fc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_798_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 0;
		con = 62;
		alarm[4] = 110;
	}
	if (con == 63)
	{
		if (global.plot < 165)
			global.plot = 165;
		with (obj_dialoguer)
			instance_destroy();
		with (obj_writer)
			instance_destroy();
		snd_free_all();
		global.interact = 0;
		global.flag[239] = 1;
		con = 64;
	}
	if (con == 100)
	{
		global.interact = 1;
		if (movecon == 0)
			movecon = 1;
		con = 101;
		snd_play(snd_spearappear);
		ele_noise = snd_init("elevator.ogg");
		ele_noise_ind = snd_loop(ele_noise);
		pitchcount = 0.5;
		volcount = 0.7;
		snd_volume(ele_noise_ind, volcount, 0);
		snd_pitch(ele_noise_ind, pitchcount);
		pitchtimer = 0;
		alarm[4] = 40;
	}
	if (con == 101)
	{
		global.interact = 1;
		pitchtimer += 1;
		if (pitchtimer < 10)
			pitchcount += 0.04;
		if (pitchtimer >= 30)
		{
			if (pitchcount > 0)
				pitchcount -= 0.08;
			volcount -= 0.05;
		}
		snd_pitch(ele_noise_ind, pitchcount);
		snd_volume(ele_noise_ind, volcount, 0);
	}
	if (con == 102)
	{
		snd_free(ele_noise);
		con = 0;
		global.flag[239] = cno;
		global.interact = 0;
		global.facing = 0;
	}
}
