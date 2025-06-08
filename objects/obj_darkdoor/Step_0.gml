if (con > 0 && con < 40)
{
	if (con == 1)
		global.interact = 1;
	if (con == 2)
	{
		with (k)
			scr_halt();
		with (s)
			scr_halt();
		con = 3;
		alarm[4] = 30;
	}
	if (con == 4)
	{
		global.typer = 10;
		global.fc = 1;
		global.fe = 0;
		global.msg[0] = stringsetloc("* Well^1, here's the closet^1.&* Too bad.../", "obj_darkdoor_slash_Step_0_gml_21_0");
		global.msg[1] = stringsetloc("\\E2* We were just starting to have fun./%", "obj_darkdoor_slash_Step_0_gml_22_0");
		instance_create(0, 0, obj_dialoguer);
		con = 4.5;
	}
	if (con == 4.5 && instance_exists(obj_dialoguer) == false)
	{
		snd_play(snd_locker);
		image_index = 1;
		con = 5.5;
		alarm[4] = 60;
	}
	if (con == 6.5)
	{
		global.currentsong[0] = snd_init("creepydoor.ogg");
		mus_loop(global.currentsong[0]);
		open = 1;
		con = 6;
		alarm[4] = 60;
	}
	if (con == 7)
	{
		with (s)
		{
			vspeed = 0.5;
			image_speed = 0.1;
		}
		with (k)
		{
			vspeed = 0.5;
			image_speed = 0.1;
		}
		con = 8;
		alarm[4] = 30;
	}
	if (con == 9)
	{
		with (s)
			scr_halt();
		with (k)
			scr_halt();
		con = 10;
		alarm[4] = 30;
	}
	if (con == 11)
	{
		global.fe = 5;
		global.msg[0] = stringsetloc("\\E5* .../", "obj_darkdoor_slash_Step_0_gml_72_0");
		global.msg[1] = stringsetloc("* Hey^1, Kris^1, is it me^1, or.../", "obj_darkdoor_slash_Step_0_gml_73_0");
		global.msg[2] = stringsetloc("\\E6* Is it REALLY dark in there?/%", "obj_darkdoor_slash_Step_0_gml_74_0");
		instance_create(0, 0, obj_dialoguer);
		with (s)
			sprite_index = spr_susiel;
		con = 12;
	}
	if (con == 12 && instance_exists(obj_dialoguer) == false)
	{
		with (s)
			sprite_index = spr_susieu;
		con = 13;
		alarm[4] = 90;
	}
	if (con == 14)
	{
		with (s)
			sprite_index = spr_susiel;
		global.msg[0] = stringsetloc("\\E6* What's the holdup^1, Kris^1?&* Are you gonna go in or what?/%", "obj_darkdoor_slash_Step_0_gml_90_0");
		instance_create(0, 0, obj_dialoguer);
		con = 15;
	}
	if (con == 15 && instance_exists(obj_dialoguer) == false)
	{
		with (k)
		{
			vspeed = 0.5;
			image_speed = 0.1;
		}
		con = 14.5;
		alarm[4] = 30;
	}
	if (con == 15.5)
	{
		with (k)
			scr_halt();
		con = 16;
		alarm[4] = 60;
	}
	if (con == 17)
	{
		with (s)
			sprite_index = spr_susiel;
		global.msg[0] = stringsetloc("\\E7* Fine^1!&* If you're gonna be a WIMP^1, then I'll.../%", "obj_darkdoor_slash_Step_0_gml_117_0");
		instance_create(0, 0, obj_dialoguer);
		con = 18;
	}
	if (con == 18 && instance_exists(obj_dialoguer) == false)
	{
		with (s)
			sprite_index = spr_susieu;
		con = 19;
		alarm[4] = 90;
	}
	if (con == 20)
	{
		with (s)
			sprite_index = spr_susiel;
		global.msg[0] = stringsetloc("\\E7* We'll both go in at the same time!!/%", "obj_darkdoor_slash_Step_0_gml_132_0");
		instance_create(0, 0, obj_dialoguer);
		con = 21;
	}
	if (con == 21 && instance_exists(obj_dialoguer) == false)
	{
		with (s)
		{
			sprite_index = spr_susieu;
			vspeed = -0.5;
			image_speed = 0.1;
		}
		with (k)
		{
			vspeed = -0.5;
			image_speed = 0.1;
		}
		con = 22;
		alarm[4] = 30;
	}
	if (con == 23)
	{
		fade = instance_create(0, 0, obj_fadeout);
		with (fade)
			fadespeed = 0.03;
		con = 24;
		alarm[4] = 34;
	}
	if (con == 25)
	{
		con = 26;
		global.plot = 5;
		instance_create(0, 0, obj_persistentfadein);
		room_goto(room_insidecloset);
	}
}
if (con >= 40)
{
	if (con == 40)
	{
		snd_free_all();
		global.currentsong[0] = snd_init("mus_birdnoise.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 0.7);
		global.interact = 1;
		s = scr_marker(479, 92, spr_susiel_plain);
		with (s)
			scr_depth();
		with (obj_mainchara)
		{
			x = obj_markerD.x;
			y = obj_markerD.y;
		}
		con = 41;
		alarm[4] = 45;
	}
	if (con == 42)
	{
		global.typer = 10;
		global.fc = 1;
		global.fe = 0;
		global.flag[29] = 1;
		global.msg[0] = stringsetloc("* Man^1, the sun's already setting.../", "obj_darkdoor_slash_Step_0_gml_194_0");
		global.msg[1] = stringsetloc("\\E3* Everyone else must have gone home by now./%", "obj_darkdoor_slash_Step_0_gml_195_0");
		instance_create(0, 0, obj_dialoguer);
		con = 43;
	}
	if (con == 43 && !d_ex())
	{
		k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_krisl);
		with (k)
			scr_depth();
		with (obj_mainchara)
			visible = 0;
		with (s)
			sprite_index = spr_susier;
		con = 44;
		alarm[4] = 30;
	}
	if (con == 45)
	{
		global.fe = 2;
		global.msg[0] = stringsetloc("\\E2* Guess Alphys'll know better than to ask US next time^1, huh?/%", "obj_darkdoor_slash_Step_0_gml_215_0");
		con = 50;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 50 && !d_ex())
	{
		with (s)
		{
			hspeed = -2;
			image_speed = 0.2;
			sprite_index = spr_susiel;
		}
		with (k)
		{
			hspeed = -2;
			image_speed = 0.2;
		}
		with (obj_mainchara)
			hspeed = -2;
		con = 51;
		alarm[4] = 100;
	}
	if (con == 52)
	{
		with (s)
			scr_halt();
		with (k)
			scr_halt();
		with (obj_mainchara)
			scr_halt();
		with (s)
			sprite_index = spr_susieu;
		with (k)
			sprite_index = spr_krisu;
		con = 51.1;
		alarm[4] = 60;
	}
	if (con == 52.1)
	{
		global.fe = 0;
		global.msg[0] = stringsetloc("* .../%", "obj_darkdoor_slash_Step_0_gml_252_0");
		instance_create(0, 0, obj_dialoguer);
		con = 52.2;
	}
	if (con == 52.2 && !d_ex())
	{
		con = 53;
		alarm[4] = 30;
	}
	if (con == 54)
	{
		with (s)
			sprite_index = spr_susier_plain;
		with (k)
			sprite_index = spr_krisl;
		global.fe = 1;
		global.msg[0] = stringsetloc("\\E1* Well^1, guess we should go./", "obj_darkdoor_slash_Step_0_gml_268_0");
		global.msg[1] = stringsetloc("\\E0* .../", "obj_darkdoor_slash_Step_0_gml_269_0");
		global.msg[2] = stringsetloc("\\E1* See ya later^1, I guess./%", "obj_darkdoor_slash_Step_0_gml_270_0");
		instance_create(0, 0, obj_dialoguer);
		con = 55;
	}
	if (con == 55 && !d_ex())
	{
		with (k)
			sprite_index = spr_krisd;
		with (s)
		{
			sprite_index = spr_susied_plain;
			image_speed = 0.1;
			vspeed = 0.5;
		}
		con = 56;
		alarm[4] = 60;
	}
	if (con == 57)
	{
		with (s)
			scr_halt();
		con = 58;
		alarm[4] = 30;
	}
	if (con == 59)
	{
		global.fe = 0;
		global.msg[0] = stringsetloc("\\E0* .../", "obj_darkdoor_slash_Step_0_gml_298_0");
		global.msg[1] = stringsetloc("\\E1* .../", "obj_darkdoor_slash_Step_0_gml_299_0");
		global.msg[2] = stringsetloc("\\E0* ... Kris?/%", "obj_darkdoor_slash_Step_0_gml_300_0");
		con = 60;
		d = instance_create(0, 0, obj_dialoguer);
		with (d)
			side = 0;
	}
	if (con == 60 && !d_ex())
	{
		with (s)
			sprite_index = spr_susier_plain;
		con = 61;
		alarm[4] = 30;
	}
	if (con == 62)
	{
		with (s)
		{
			vspeed = -2;
			hspeed = 0.75;
			image_speed = 0.25;
			sprite_index = spr_susieu;
		}
		with (k)
			sprite_index = spr_krisl;
		con = 63;
		alarm[4] = 15;
	}
	if (con == 64)
	{
		with (s)
		{
			scr_halt();
			sprite_index = spr_susier_plain;
		}
		con = 65;
		alarm[4] = 20;
	}
	if (con == 66)
	{
		with (k)
			visible = 0;
		with (s)
		{
			sprite_index = spr_susie_krisshoulder_r;
			image_speed = 0.2;
		}
		con = 67;
		alarm[4] = 20;
	}
	if (con == 68)
	{
		with (s)
			image_speed = 0;
		con = 69;
		alarm[4] = 60;
	}
	if (con == 70)
	{
		global.fe = 8;
		global.flag[6] = 1;
		global.msg[0] = stringsetloc("\\E8* Let's go back there tomorrow, alright?/%", "obj_darkdoor_slash_Step_0_gml_363_0");
		d = instance_create(0, 0, obj_dialoguer);
		with (obj_writer)
			skippable = 0;
		with (d)
			skippable = 0;
		with (d)
			side = 0;
		con = 70.1;
	}
	if (con == 70.1 && !d_ex())
	{
		con = 69.2;
		alarm[4] = 30;
	}
	if (con == 70.2 && !d_ex())
	{
		with (s)
			image_speed = -0.24;
		con = 69.3;
		alarm[4] = 16;
	}
	if (con == 70.3)
	{
		with (s)
			scr_halt();
		con = 72;
		alarm[4] = 30;
	}
	if (con == 73 && !d_ex())
	{
		with (k)
		{
			visible = 1;
			sprite_index = spr_krisd;
		}
		with (s)
		{
			sprite_index = spr_susied;
			image_speed = 0.2;
			vspeed = 3;
		}
		con = 74;
		alarm[4] = 30;
	}
	if (con == 75)
	{
		global.flag[6] = 0;
		if (global.plot < 251)
			global.plot = 251;
		con = 76;
		global.interact = 0;
		with (obj_mainchara)
			visible = 1;
		with (k)
			instance_destroy();
	}
}
