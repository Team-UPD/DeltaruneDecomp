if (type == 0)
{
	if (con == 1)
	{
		x = __view_get(e__VW.XView, 0) + 800;
		image_speed = 0.2;
		sprite_index = spr_smallchecker_front;
		global.interact = 1;
		s = scr_dark_marker(-100, global.cinstance[1].y, spr_susier_dark);
		r = scr_dark_marker(-50, global.cinstance[0].y, spr_ralseir);
		k = scr_dark_marker(0, obj_mainchara.y, spr_krisr_dark);
		with (obj_caterpillarchara)
			visible = 0;
		with (obj_mainchara)
			visible = 0;
		with (obj_marker)
		{
			hspeed = 5;
			image_speed = 0.2;
		}
		l = scr_dark_marker(500, obj_mainchara.y, spr_lancer_rt);
		con = -50;
		alarm[4] = 28;
	}
	if (con == -49)
	{
		snd_free_all();
		with (obj_marker)
			scr_halt();
		con = -48;
		alarm[4] = 15;
	}
	if (con == -47)
	{
		global.typer = 32;
		global.fc = 5;
		global.fe = 0;
		name = "Guys";
		if (global.flag[214] == 1)
			name = "(name I'm not allowed to say).";
		if (global.flag[214] == 2)
			name = "Lancer Fan Club.";
		if (global.flag[214] == 3)
			name = "Friendly Fun Gang.";
		global.msg[0] = stringsetloc("* Hohoho..^1.&* Well STEP on my BOOTS./", "obj_checker_animtest_slash_Step_0_gml_47_0");
		global.msg[1] = stringsetsubloc("* If it isn't the ~1/", name, "obj_checker_animtest_slash_Step_0_gml_48_0");
		global.msg[2] = stringsetloc("* You boys or girls had better turn back while you can./", "obj_checker_animtest_slash_Step_0_gml_49_0");
		scr_ralface(3, 3);
		global.msg[4] = stringsetloc("* Lancer!!!&* What is it this time!?/", "obj_checker_animtest_slash_Step_0_gml_51_0");
		scr_lanface(5, 1);
		global.msg[6] = stringsetloc("* Hohoho..^1.&* I'm simply warning you...!/%", "obj_checker_animtest_slash_Step_0_gml_53_0");
		instance_create(0, 0, obj_dialoguer);
		con = -46;
		warnpitch = 0;
	}
	if (con == -46 && !d_ex())
	{
		hitnoise = snd_play(snd_orchhit);
		snd_pitch(hitnoise, 1 + (warnpitch / 16));
		with (l)
		{
			sprite_index = spr_lancer_lt;
			hspeed = -10;
		}
		con = -45;
		alarm[4] = 3;
	}
	if (con == -44)
	{
		with (l)
			scr_halt();
		con = -43;
		alarm[4] = 15;
	}
	if (con == -42)
	{
		global.fe = 2;
		global.msg[0] = stringsetloc("* Something EXTREMELY dangerous is lying ahead!/%", "obj_checker_animtest_slash_Step_0_gml_82_0");
		if (warnpitch == 1)
		{
			global.fe = 1;
			global.msg[0] = stringsetloc("* Hohoho^1! It's actually really inconvenient!/%", "obj_checker_animtest_slash_Step_0_gml_87_0");
		}
		if (warnpitch == 2)
		{
			global.fe = 3;
			global.msg[0] = stringsetloc("* Ha^1! I can't go home at all because I'm so scared!/", "obj_checker_animtest_slash_Step_0_gml_92_0");
			scr_susface(1, 9);
			global.msg[2] = stringsetloc("* Wh..^1. What is it!?/%", "obj_checker_animtest_slash_Step_0_gml_94_0");
		}
		instance_create(0, 0, obj_dialoguer);
		if (warnpitch < 2)
		{
			con = -46;
			warnpitch += 1;
		}
		else
		{
			con = -40;
		}
	}
	if (con == -40 && !d_ex())
	{
		ltimer = 0;
		with (obj_marker)
		{
			if (sprite_index != spr_lancer_lt)
			{
				hspeed = 5;
				image_speed = 0.25;
			}
			else
			{
				sprite_index = spr_lancer_dt;
				vspeed = -2;
				depth = 100000;
			}
		}
		con = -10;
		alarm[4] = 96;
	}
	if (con == -10)
	{
		ltimer += 1;
		if (ltimer >= 20)
		{
			with (l)
				scr_halt();
		}
		if (k.x >= 140)
			obj_mainchara.x = k.x;
		global.interact = 1;
	}
	if (con == -9)
	{
		snd_free_all();
		global.facing = 1;
		con = -8;
		with (obj_marker)
			scr_halt();
		obj_mainchara.x = k.x;
		obj_mainchara.visible = 1;
		obj_mainchara.cutscene = 1;
		with (l)
			sprite_index = spr_lancer_rt;
		with (k)
			instance_destroy();
		alarm[4] = 16;
		scr_pan(5, 0, 16);
	}
	if (con == -7)
	{
		global.fc = 2;
		global.fe = 8;
		global.typer = 31;
		global.msg[0] = stringsetloc("* Oh^1, hey^1, little guy.../", "obj_checker_animtest_slash_Step_0_gml_178_0");
		scr_susface(1, 6);
		global.msg[2] = stringsetloc("* THAT??^1? THAT'S what you're afraid of???/", "obj_checker_animtest_slash_Step_0_gml_180_0");
		scr_lanface(3, 3);
		global.msg[4] = stringsetloc("* W..^1. Wow^1, purple girl^1!&* You aren't scared!?/", "obj_checker_animtest_slash_Step_0_gml_182_0");
		scr_susface(5, 2);
		global.msg[6] = stringsetloc("* Heh^1, why would I be^1? What's it gonna do?/", "obj_checker_animtest_slash_Step_0_gml_184_0");
		scr_lanface(7, 6);
		global.msg[8] = stringsetloc("* Hmm^1, well^1, normally.../%", "obj_checker_animtest_slash_Step_0_gml_186_0");
		con = -5.2;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == -5.2 && d_ex() == 0)
	{
		sprite_index = spr_smallchecker_idle;
		image_index = 0;
		x += 40;
		image_xscale = -2;
		hspeed = 2;
		con = 2;
	}
	if (con == 2)
	{
		if (x > (__view_get(e__VW.XView, 0) + 520))
		{
			image_index = 0;
			image_xscale = 2;
			sprite_index = spr_smallchecker_front;
			hspeed = 0;
			x = __view_get(e__VW.XView, 0) + 480;
			con = 1.1;
			alarm[4] = 30;
		}
	}
	if (con == 2.1)
	{
		snd_play(snd_boost);
		for (j = 0; j < 3; j += 1)
		{
			tile[j] = scr_marker((480 - (j * 40)) + 400, 240 + (j * 40), spr_checkertile_bullet);
			tile[j].image_alpha = 0;
			tile[j].depth = 700000;
		}
		ttimer = 0;
		con = 2.2;
	}
	if (con == 2.2)
	{
		for (j = 0; j < 3; j += 1)
			tile[j].image_alpha += 0.1;
		ttimer += 1;
		if (ttimer >= 10)
			con = 2.3;
	}
	if (con == 2.3)
	{
		for (j = 0; j < 3; j += 1)
			tile[j].image_alpha -= 0.1;
		ttimer += 1;
		if (ttimer >= 30)
			con = 3.1;
	}
	if (con == 3.1)
		con = 4;
	if (con == 4)
	{
		sprite_index = spr_smallchecker_front;
		image_speed = 0;
		image_index = 0;
		crown = instance_create(x + 8, __view_get(e__VW.YView, 0) - 40, obj_marker);
		crown.image_xscale = 2;
		crown.image_yscale = 2;
		crown.sprite_index = spr_smallchecker_crown;
		crown.vspeed = 4;
		crown.depth = depth - 1;
		con = 5;
	}
	if (con == 5)
	{
		if (crown.y >= (y - 10))
		{
			sprite_index = spr_smallchecker_transform;
			y += 2;
			snd_play(snd_shineselect);
			with (crown)
				instance_destroy();
			con = 6;
			alarm[4] = 50;
		}
	}
	if (con == 7)
	{
		snd_play(snd_crowngrowth);
		image_speed = 0.25;
		con = 8;
	}
	if (con == 8)
	{
		image_speed += 0.01;
		if (image_speed >= 0.5)
		{
			image_index = 1;
			image_speed = 0;
			con = 9;
			alarm[4] = 60;
		}
	}
	if (con == 10)
	{
		image_index = 0;
		sprite_index = spr_smallchecker_transform2;
		image_speed = 0.334;
		con = 11;
	}
	if (con == 11)
	{
		if (image_index >= 4)
		{
			image_index = 4;
			image_speed = 0;
			con = 12;
			alarm[4] = 40;
		}
	}
	if (con == 13)
	{
		x -= 18;
		y -= 90;
		snd_play(snd_impact);
		with (s)
			sprite_index = spr_susie_shock_r;
		with (r)
			sprite_index = spr_ralsei_shock_overworld;
		instance_create(0, 0, obj_shake);
		sprite_index = spr_checkers_idle;
		image_speed = 0;
		image_index = 0;
		con = 16;
		alarm[4] = 30;
	}
	if (con == 17)
	{
		with (r)
			sprite_index = spr_ralseir;
		with (s)
			sprite_index = spr_susier_dark;
		global.fe = 6;
		global.msg[0] = stringsetloc("* It crushes people to death^1, I think./%", "obj_checker_animtest_slash_Step_0_gml_356_0");
		con = 18;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 18 && !d_ex())
	{
		scr_unmarkify_caterpillar();
		global.facing = 1;
		scr_caterpillar_facing(global.facing);
		global.encounterno = 12;
		scr_encountersetup(global.encounterno);
		global.flag[9] = 1;
		global.batmusic[0] = snd_init("checkers.ogg");
		global.specialbattle = 3;
		instance_create(0, 0, obj_encounterbasic);
		instance_create(0, 0, obj_battleback);
		depth = 4000;
		scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 20);
		con = 19;
		alarm[4] = 20;
	}
	if (con == 20)
	{
		speed = 0;
		con = 21;
		alarm[4] = 10;
	}
	if (con == 22)
	{
		visible = 0;
		type = 2;
		con = 0;
		victimer = 0;
	}
}
if (type == 1)
{
	if (con == 1)
	{
		image_speed = 0;
		image_index = 0;
		crown = instance_create(x + 24, y + 10, obj_marker);
		crown.image_xscale = 2;
		crown.image_yscale = 2;
		crown.sprite_index = spr_smallchecker_crown;
		crown.depth = depth - 1;
		sprite_index = spr_smallchecker_transform3;
		con = 0.4;
		windsound = 0;
		alarm[4] = 30;
	}
	if (con == 1.4)
	{
		if (windsound == 0)
		{
			snd_play(snd_whistlebreath);
			windsound = 1;
		}
		if (secondtime == 0)
			crown.hspeed += 0.2;
		else
			crown.hspeed += 0.4;
		if (crown.hspeed >= 3)
			con = 1.5;
	}
	if (con == 1.5)
	{
		with (crown)
		{
			maxy = obj_checker_animtest.y + obj_checker_animtest.sprite_height;
			image_angle = -45;
			y -= 10;
			gravity = 0.5;
			hspeed = 5;
			friction = 0.2;
		}
		con = 1.6;
	}
	if (con == 1.6)
	{
		if (crown.y >= (crown.maxy - crown.sprite_height - 10))
		{
			crown.y += 10;
			crown.image_angle = 0;
			crown.gravity = 0;
			crown.vspeed = 0;
			crown.friction = 0;
			crown.hspeed = 1;
			con = 0.9;
			alarm[4] = 30;
			if (secondtime == 1)
			{
				alarm[4] = 10;
				interactcrown = instance_create(crown.x, crown.y, obj_readable_room1);
				interactcrown.hspeed = 1;
				interactcrown.image_xscale = 1.6;
				interactcrown.image_yscale = 1;
			}
		}
	}
	if (con == 1.9)
	{
		image_speed = 0.25;
		snd_play(snd_crownshrink);
		con = 2.1;
	}
	if (con == 2.1)
	{
		image_speed += 0.01;
		if (secondtime == 1)
			image_speed += 0.01;
		if (image_speed >= 0.5)
		{
			image_index = 1;
			image_speed = 0;
			con = 3;
			maxy = (y + sprite_height) - 30;
			alarm[4] = 30;
			if (secondtime == 1)
				alarm[4] = 10;
		}
	}
	if (con == 4)
	{
		x += 40;
		y += 46;
		sprite_index = spr_smallchecker_legtuck;
		image_index = 0;
		image_speed = 0.25;
		vspeed = -3;
		gravity = 1;
		if (secondtime == 1)
		{
			vspeed = -6;
			gravity = 2;
			image_speed = 0.5;
		}
		con = 5;
	}
	if (con == 5)
	{
		if (image_index >= 2)
			image_speed = 0;
		if (y >= (maxy - 4))
		{
			y = maxy;
			gravity = 0;
			vspeed = 0;
			con = 6;
			alarm[4] = 30;
			if (secondtime == 1)
				alarm[4] = 10;
		}
	}
	if (con == 7)
	{
		image_angle -= 5;
		hspeed = 3;
		if (secondtime == 1)
		{
			hspeed = 6;
			image_angle -= 5;
		}
		if (x >= (__view_get(e__VW.XView, 0) + 720))
		{
			con = 8;
			global.monster[0] = 0;
			global.monster[1] = 0;
			global.monster[2] = 0;
			scr_attackphase();
			with (obj_monsterparent)
				instance_destroy();
			instance_destroy();
		}
	}
}
if (type == 2)
{
	if (con == 0)
	{
		victimer += 1;
		if (victimer >= 60)
			con = 1;
	}
	if (con == 1)
	{
		if (global.fighting == 0)
		{
			victimer = 0;
			con = 2;
		}
	}
	if (con == 2)
	{
		victimer += 1;
		if (victimer >= 15)
		{
			global.typer = 30;
			global.fe = 6;
			global.fc = 1;
			global.msg[0] = stringsetloc("* We..^1. We did it!?/%", "obj_checker_animtest_slash_Step_0_gml_589_0");
			instance_create(0, 0, obj_dialoguer);
			con = 3;
		}
	}
	if (con == 3 && !d_ex())
	{
		with (l)
			hspeed = 18;
		con = 4;
		alarm[4] = 20;
	}
	if (con == 5)
	{
		with (l)
		{
			scr_halt();
			sprite_index = spr_lancer_lt;
		}
		con = 6;
		alarm[4] = 15;
	}
	if (con == 7)
	{
		global.typer = 32;
		global.fc = 5;
		global.fe = 3;
		global.msg[0] = stringsetloc("* Wow!^1! You clowns really ARE heroes!!/", "obj_checker_animtest_slash_Step_0_gml_624_0");
		global.msg[1] = stringsetloc("* You saved the next twenty minutes of my life!!/", "obj_checker_animtest_slash_Step_0_gml_625_0");
		scr_susface(2, 2);
		global.msg[3] = stringsetloc("* Yeah^1, yeah^1, I am pretty great^1, huh...?/%", "obj_checker_animtest_slash_Step_0_gml_627_0");
		instance_create(0, 0, obj_dialoguer);
		con = 7.2;
	}
	if (con == 7.1 && !d_ex())
	{
		snd_play(snd_suslaugh);
		with (s)
			image_speed = 0.2;
		con = 6.2;
		alarm[4] = 60;
	}
	if (con == 7.2 && !d_ex())
	{
		with (global.cinstance[0])
			visible = 0;
		with (global.cinstance[1])
			visible = 0;
		with (obj_mainchara)
			visible = 0;
		r = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_ralseil);
		s = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, spr_susier_dark);
		k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisl_dark);
		global.typer = 31;
		global.fc = 2;
		global.fe = 1;
		global.msg[0] = stringsetloc("\\E8* Ummm^1, Susie...?/", "obj_checker_animtest_slash_Step_0_gml_657_0");
		global.msg[1] = stringsetloc("\\E8* Not to downplay your contributions^1, but.../", "obj_checker_animtest_slash_Step_0_gml_658_0");
		global.msg[2] = stringsetloc("\\E1* You..^1. didn't actually help at all./", "obj_checker_animtest_slash_Step_0_gml_659_0");
		global.msg[3] = stringsetloc("\\EB* You only made everything WORSE by attacking it./", "obj_checker_animtest_slash_Step_0_gml_660_0");
		global.msg[4] = stringsetloc("\\E1* If you had just acted nice to it in the first place.../", "obj_checker_animtest_slash_Step_0_gml_661_0");
		global.msg[5] = stringsetloc("\\E6* We could have avoided that entire battle./", "obj_checker_animtest_slash_Step_0_gml_662_0");
		scr_susface(6, 6);
		global.msg[7] = stringsetloc("* Huh^1?&* Are you FOR REAL?/", "obj_checker_animtest_slash_Step_0_gml_664_0");
		global.msg[8] = stringsetloc("\\E7* That thing was BLOODTHIRSTY!!!/", "obj_checker_animtest_slash_Step_0_gml_665_0");
		global.msg[9] = stringsetloc("\\E2* The only thing keeping it at bay was MY AX!/%", "obj_checker_animtest_slash_Step_0_gml_666_0");
		con = 50;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 50 && !d_ex())
	{
		with (r)
			sprite_index = spr_ralseid;
		con = 51;
		alarm[4] = 30;
	}
	if (con == 52)
	{
		with (r)
			sprite_index = spr_ralseil;
		global.fc = 2;
		global.fe = 6;
		global.typer = 31;
		global.msg[0] = stringsetloc("* And^1, earlier^1, you terrorized those troops.../", "obj_checker_animtest_slash_Step_0_gml_685_0");
		scr_susface(1, 0);
		global.msg[2] = stringsetloc("* Those guys were ENEMIES^1. They're FOR terrorizing./", "obj_checker_animtest_slash_Step_0_gml_687_0");
		scr_lanface(3, 3);
		global.msg[4] = stringsetloc("* Yeah^1! She's right!!/", "obj_checker_animtest_slash_Step_0_gml_689_0");
		scr_ralface(5, 1);
		global.msg[6] = stringsetloc("* And before that^1, you ate an innocent person's cake.../%", "obj_checker_animtest_slash_Step_0_gml_691_0");
		con = 53;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 53 && !d_ex())
	{
		with (s)
			sprite_index = spr_susied_dark;
		con = 54;
		alarm[4] = 30;
	}
	if (con == 55)
	{
		with (s)
			sprite_index = spr_susier_dark;
		global.fc = 1;
		global.fe = 2;
		global.typer = 30;
		global.msg[0] = stringsetloc("* Cakes..^1. are also my enemy./", "obj_checker_animtest_slash_Step_0_gml_709_0");
		scr_ralface(1, "C");
		global.msg[2] = stringsetloc("* .../", "obj_checker_animtest_slash_Step_0_gml_711_0");
		global.msg[3] = stringsetloc("\\E1* Susie..^1. Whether you like it or not.../", "obj_checker_animtest_slash_Step_0_gml_712_0");
		global.msg[4] = stringsetloc("\\E6* You're a hero./", "obj_checker_animtest_slash_Step_0_gml_713_0");
		global.msg[5] = stringsetloc("\\E0* One with the power to bring peace to the future./", "obj_checker_animtest_slash_Step_0_gml_714_0");
		global.msg[6] = stringsetloc("\\E5* Could you please start..^1. acting like one?/%", "obj_checker_animtest_slash_Step_0_gml_715_0");
		con = 56;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 56 && !d_ex())
	{
		with (s)
			sprite_index = spr_susiel_dark_unhappy;
		con = 57;
		alarm[4] = 60;
	}
	if (con == 58)
	{
		global.fc = 1;
		global.fe = 0;
		global.typer = 30;
		global.msg[0] = stringsetloc("* Yeah^1, when you lay it out like that.../", "obj_checker_animtest_slash_Step_0_gml_732_0");
		global.msg[1] = stringsetloc("* I've been a pretty bad hero^1, haven't I?/", "obj_checker_animtest_slash_Step_0_gml_733_0");
		global.msg[2] = stringsetloc("* .../%", "obj_checker_animtest_slash_Step_0_gml_734_0");
		instance_create(0, 0, obj_dialoguer);
		con = 59;
	}
	if (con == 59 && !d_ex())
	{
		with (s)
		{
			vspeed = 2;
			image_speed = 0.2;
			sprite_index = spr_susied_dark_unhappy;
		}
		con = 60;
		alarm[4] = 10;
	}
	if (con == 61)
	{
		with (k)
			scr_depth();
		with (r)
			scr_depth();
		with (s)
		{
			scr_halt();
			scr_depth();
		}
		con = 62;
		alarm[4] = 30;
	}
	if (con == 63)
	{
		global.msg[0] = stringsetloc("* Alright^1, Ralsei^1.&* You got it^1.&* I'll change my ways./", "obj_checker_animtest_slash_Step_0_gml_762_0");
		global.msg[1] = stringsetloc("* From now on^1, I won't be such a rotten hero anymore./%", "obj_checker_animtest_slash_Step_0_gml_763_0");
		con = 64;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 64 && !d_ex())
	{
		with (s)
		{
			hspeed = 12;
			sprite_index = spr_susier_dark;
			image_speed = 0.5;
		}
		con = 65;
	}
	if (con == 65)
	{
		if (s.x >= (__view_get(e__VW.XView, 0) + 460))
		{
			with (s)
				scr_halt();
			with (s)
				sprite_index = spr_susiel_dark;
			with (k)
				sprite_index = spr_krisr_dark;
			with (r)
				sprite_index = spr_ralseir;
			con = 66;
		}
	}
	if (con == 66)
	{
		con = 67;
		global.fc = 1;
		global.fe = 3;
		global.typer = 30;
		global.msg[0] = stringsetloc("* I'll just be one of the BAD GUYS instead!/%", "obj_checker_animtest_slash_Step_0_gml_799_0");
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 67 && !d_ex())
	{
		with (r)
			sprite_index = spr_ralsei_shock_overworld;
		con = 68;
		alarm[4] = 20;
	}
	if (con == 69)
	{
		global.currentsong[0] = snd_init("lancer.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1);
		with (r)
			sprite_index = spr_ralseir;
		global.fc = 5;
		global.typer = 32;
		global.fe = 2;
		global.msg[0] = stringsetloc("* R... Really!?/", "obj_checker_animtest_slash_Step_0_gml_820_0");
		global.msg[1] = stringsetloc("\\E3* You're going to be on MY team?/", "obj_checker_animtest_slash_Step_0_gml_821_0");
		scr_susface(2, 2);
		global.msg[3] = stringsetloc("* Yeah^1, sounds way easier^1, honestly./", "obj_checker_animtest_slash_Step_0_gml_823_0");
		scr_ralface(4, 3);
		global.msg[5] = stringsetloc("* Susie^1, you can't just -/", "obj_checker_animtest_slash_Step_0_gml_825_0");
		scr_lanface(6, 1);
		global.msg[7] = stringsetloc("* Quiet^1, Toothpaste Boy^1! Susie is MY comrade now!/", "obj_checker_animtest_slash_Step_0_gml_827_0");
		scr_susface(8, 2);
		global.msg[9] = stringsetloc("* Hahaha^1, yeah^1, Toothpaste Boy!/", "obj_checker_animtest_slash_Step_0_gml_829_0");
		scr_lanface(10, 3);
		global.msg[11] = stringsetloc("* We're going to have monogrammed track jackets!/", "obj_checker_animtest_slash_Step_0_gml_831_0");
		scr_susface(12, 2);
		global.msg[13] = stringsetloc("* Yeah!/", "obj_checker_animtest_slash_Step_0_gml_833_0");
		scr_lanface(14, 1);
		global.msg[15] = stringsetloc("* And sleepovers^1! Where we tell each other secrets!/", "obj_checker_animtest_slash_Step_0_gml_835_0");
		scr_susface(16, 6);
		global.msg[17] = stringsetloc("* Ummm^1, yeah?/", "obj_checker_animtest_slash_Step_0_gml_837_0");
		global.msg[18] = stringsetloc("\\E2* Anyway^1, uhh^1, see you guys never./", "obj_checker_animtest_slash_Step_0_gml_838_0");
		scr_lanface(19, 3);
		global.msg[20] = stringsetloc("* Haha!^1! If you can even last that long!/%", "obj_checker_animtest_slash_Step_0_gml_840_0");
		instance_create(0, 0, obj_dialoguer);
		con = 70;
	}
	if (con == 70 && !d_ex())
	{
		snd_volume(global.currentsong[1], 0, 50);
		snd_play(snd_lancerlaugh);
		with (l)
		{
			sprite_index = spr_lancer_lt_laugh;
			image_speed = 0.2;
			hspeed = 12;
		}
		with (s)
		{
			sprite_index = spr_susier_dark;
			image_speed = 0.5;
			hspeed = 12;
		}
		con = 71;
		alarm[4] = 70;
	}
	if (con == 72)
		con = 22;
	if (con == 22 && !d_ex())
	{
		with (r)
		{
			hspeed = 6;
			image_speed = 0.25;
		}
		con = 23;
		alarm[4] = 20;
	}
	if (con == 24)
	{
		snd_free_all();
		global.facing = 2;
		with (r)
			scr_halt();
		global.fc = 2;
		global.typer = 31;
		global.fe = 1;
		global.msg[0] = stringsetloc("* Kris.../", "obj_checker_animtest_slash_Step_0_gml_893_0");
		global.msg[1] = stringsetloc("\\E6* Perhaps I shouldn't have been so hard on her./", "obj_checker_animtest_slash_Step_0_gml_894_0");
		global.msg[2] = stringsetloc("\\E1* .../", "obj_checker_animtest_slash_Step_0_gml_895_0");
		global.msg[3] = stringsetloc("* But^1, I just worry that if Susie is too eager to fight.../", "obj_checker_animtest_slash_Step_0_gml_896_0");
		global.msg[4] = stringsetloc("\\E4* Then.../", "obj_checker_animtest_slash_Step_0_gml_897_0");
		global.msg[5] = stringsetloc("\\E6* Well^1, let's just be kind to her^1, OK^1, Kris?/", "obj_checker_animtest_slash_Step_0_gml_898_0");
		global.msg[6] = stringsetloc("\\E8* I'm sure Susie'll come around soon!/%", "obj_checker_animtest_slash_Step_0_gml_899_0");
		con = 28;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 28 && !d_ex())
	{
		with (k)
		{
			hspeed = 8;
			image_speed = 0.25;
		}
		with (r)
		{
			hspeed = 8;
			image_speed = 0.25;
			sprite_index = spr_ralseir;
		}
		con = 29;
		alarm[4] = 10;
	}
	if (con == 30)
	{
		instance_create(0, 0, obj_fadeout);
		con = 31;
		alarm[4] = 30;
	}
	if (con == 32)
	{
		if (global.plot < 60)
		{
			global.plot = 60;
			if (global.flag[215] == 1)
				global.flag[251] = 1;
		}
		scr_losechar();
		scr_getchar(3);
		instance_create(0, 0, obj_persistentfadein);
		global.interact = 3;
		global.entrance = 1;
		room_goto_next();
	}
}
