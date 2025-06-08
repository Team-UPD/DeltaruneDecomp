if (global.chapter == 1)
{
	if (con == 1)
	{
		alarm[4] = 30;
		con = 1.5;
	}
	if (con == 2.5)
	{
		global.currentsong[0] = snd_init("mus_school.ogg");
		global.fe = 0;
		global.fc = 11;
		global.typer = 20;
		global.msg[0] = stringsetloc("\\E0* So^1, does everyone have a.../%", "obj_classscene_slash_Step_0_gml_18_0");
		d = instance_create(0, 0, obj_dialoguer);
		con = 3;
	}
	if (con == 3 && instance_exists(obj_dialoguer) == false)
	{
		snd_play(snd_dooropen);
		with (door)
			image_index = 1;
		con = 4;
		with (alphys)
			sprite_index = spr_alphysr;
		alarm[4] = 30;
	}
	if (con == 5)
	{
		with (obj_mainchara)
		{
			fun = 1;
			sprite_index = spr_krisd;
			image_speed = 0.2;
			vspeed = 2;
		}
		con = 6;
		alarm[4] = 10;
	}
	if (con == 7)
	{
		with (obj_mainchara)
		{
			image_index = 0;
			vspeed = 0;
			image_speed = 0;
		}
		with (door)
			image_index = 0;
		snd_play(snd_doorclose);
		con = 8;
		alarm[4] = 30;
	}
	if (con == 9)
	{
		global.msg[0] = stringsetloc("\\E3* Oh... K-Kris...^1!&* We thought you weren't coming today!/", "obj_classscene_slash_Step_0_gml_64_0");
		global.msg[1] = stringsetloc("\\E0* We're doing group projects this month.../", "obj_classscene_slash_Step_0_gml_65_0");
		global.msg[2] = stringsetloc("\\E6* Uhhhh..^1. so^1, walk around and find a partner^1, ok?/%", "obj_classscene_slash_Step_0_gml_66_0");
		con = 10;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 10 && instance_exists(obj_dialoguer) == false)
	{
		mus_loop(global.currentsong[0]);
		__view_set(e__VW.Object, 0, -4);
		door_readable = instance_create(244, 51, obj_readable_room1);
		alphys2 = alphys;
		alphys = instance_create(alphys.x, alphys.y + alphys.sprite_height, obj_npc_facing);
		with (alphys2)
			instance_destroy();
		doorsolid = instance_create(236, 52, obj_solidblock);
		with (doorsolid)
			image_xscale = 2;
		with (door)
			depth = 500000;
		with (obj_mainchara)
			fun = 0;
		global.plot = 2;
		global.interact = 0;
		con = 11;
	}
	if (con == 20 && instance_exists(obj_dialoguer) == false)
	{
		global.interact = 1;
		con = 21;
		alarm[4] = 2;
	}
	if (con == 21)
		global.interact = 1;
	if (con == 22)
	{
		global.typer = 13;
		global.fc = 12;
		global.fe = 3;
		global.facing = 2;
		global.msg[0] = stringsetloc("* Hey^1! What^1? No^1!&* I do NOT approve this^1!&* ABORT!!/", "obj_classscene_slash_Step_0_gml_111_0");
		global.msg[1] = stringsetloc("\\TN\\FN\\E2* What^1? B-but Kris doesn't have a.../", "obj_classscene_slash_Step_0_gml_112_0");
		global.msg[2] = stringsetloc("\\Ta\\Fa\\E1* Noelle^1, what were you saying?/", "obj_classscene_slash_Step_0_gml_113_0");
		global.msg[3] = stringsetloc("\\TB\\FB\\E6* She was just saying we're FINE being alone!/", "obj_classscene_slash_Step_0_gml_114_0");
		global.msg[4] = stringsetloc("\\Tn\\FN\\E3* A-actually^1, I just wanted to know if.../", "obj_classscene_slash_Step_0_gml_115_0");
		global.msg[5] = stringsetloc("\\Ta\\Fa\\E6* Noelle^1, can you PLEASE SPEAK UP?/%", "obj_classscene_slash_Step_0_gml_116_0");
		con = 23;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 23 && instance_exists(obj_dialoguer) == false)
	{
		instance_create(0, 0, obj_shake);
		snd_stop_all();
		snd_free(global.currentsong[0]);
		with (door)
		{
			image_index = 0;
			image_speed = 0.5;
			sprite_index = spr_classdoorslam;
			depth = 5000;
		}
		sus = scr_marker(237, 24, spr_susied_plain);
		with (sus)
			scr_depth();
		con = 24;
		alarm[4] = 4;
		with (doorsolid)
			instance_destroy();
	}
	if (con == 25)
	{
		snd_play(snd_impact);
		alphys2 = alphys;
		alphys = scr_marker(alphys.x, alphys.y, spr_alphysr_shock);
		with (alphys)
			scr_depth();
		with (alphys2)
			instance_destroy();
		con = 26;
		alarm[4] = 6;
	}
	if (con == 27)
	{
		with (door)
		{
			image_speed = 0;
			depth = 500000;
		}
		con = 32;
		alarm[4] = 50;
	}
	if (con == 29 && instance_exists(obj_dialoguer) == false)
	{
		with (sus)
		{
			image_speed = 0.1;
			vspeed = 0.5;
		}
		con = 30;
		alarm[4] = 40;
	}
	if (con == 31)
	{
		with (sus)
		{
			image_index = 0;
			image_speed = 0;
			vspeed = 0;
		}
		con = 34;
		alarm[4] = 30;
	}
	if (con == 33)
	{
		global.fe = 2;
		global.fc = 11;
		global.typer = 22;
		global.msg[0] = stringsetloc("* H..^1.&* Hi^1, SUSIE./%", "obj_classscene_slash_Step_0_gml_194_0");
		instance_create(0, 0, obj_dialoguer);
		con = 28;
		alarm[4] = 20;
	}
	if (con == 35)
	{
		global.fc = 1;
		global.fe = 0;
		global.typer = 10;
		global.msg[0] = stringsetloc("* .../", "obj_classscene_slash_Step_0_gml_207_0");
		global.msg[1] = stringsetloc("* ... am I late?/", "obj_classscene_slash_Step_0_gml_208_0");
		global.msg[2] = stringsetloc("\\Ta\\Fa\\E4* Ohh^1, n-no^1!&* You're fine^1!&* W-we were just^1, uh.../", "obj_classscene_slash_Step_0_gml_209_0");
		global.msg[3] = stringsetloc("\\E5* Ch-choosing partners for the next group project^1, and.../", "obj_classscene_slash_Step_0_gml_210_0");
		global.msg[4] = stringsetloc("\\E6* Ummm^1, Susie^1, you're with Kris!/", "obj_classscene_slash_Step_0_gml_211_0");
		scr_susface(5, 0);
		global.msg[6] = stringsetloc("* .../", "obj_classscene_slash_Step_0_gml_213_0");
		global.msg[7] = stringsetloc("* ... great./%", "obj_classscene_slash_Step_0_gml_214_0");
		con = 36;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 36 && instance_exists(obj_dialoguer) == false)
	{
		con = 37;
		alarm[4] = 40;
		with (alphys)
			sprite_index = spr_alphysd;
	}
	if (con == 38)
	{
		global.fc = 11;
		global.typer = 20;
		global.fe = 6;
		global.msg[0] = stringsetloc("\\E5* .../", "obj_classscene_slash_Step_0_gml_234_0");
		global.msg[1] = stringsetloc("\\E6* N-now that everyone's here^1, I'll write the assignment!/%", "obj_classscene_slash_Step_0_gml_235_0");
		instance_create(0, 0, obj_dialoguer);
		con = 39;
	}
	if (con == 39 && instance_exists(obj_dialoguer) == false)
	{
		with (alphys)
		{
			sprite_index = spr_alphysr;
			hspeed = 3;
			image_speed = 0.2;
		}
		con = 40;
		alarm[4] = 26;
	}
	if (con == 41)
	{
		with (alphys)
		{
			sprite_index = spr_alphysu;
			image_index = 0;
			image_speed = 0;
			hspeed = 0;
		}
		con = 42;
		alarm[4] = 30;
	}
	if (con == 43)
	{
		global.msg[0] = stringsetloc("* .../%", "obj_classscene_slash_Step_0_gml_267_0");
		con = 44;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 44 && instance_exists(obj_dialoguer) == false)
	{
		con = 45;
		with (alphys)
			sprite_index = spr_alphysl;
		con = 46;
		alarm[4] = 20;
	}
	if (con == 47)
	{
		with (alphys)
			sprite_index = spr_alphysr;
		con = 48;
		alarm[4] = 20;
	}
	if (con == 49)
	{
		with (alphys)
			sprite_index = spr_alphysd;
		con = 50;
		alarm[4] = 30;
	}
	if (con == 51)
	{
		global.fe = 8;
		global.msg[0] = stringsetloc("* Uh..^1.&* H-has anyone seen the chalk?/", "obj_classscene_slash_Step_0_gml_298_0");
		global.msg[1] = stringsetloc("\\E4* This is the third time it's gone missing^1, and.../", "obj_classscene_slash_Step_0_gml_299_0");
		global.msg[2] = stringsetloc("\\E9* Y-you all know I can't start class without some!/%", "obj_classscene_slash_Step_0_gml_300_0");
		global.msg[3] = stringsetloc("\\FN\\TN\\E1* Ummm^1, there might be a box in the supply closet.../", "obj_classscene_slash_Step_0_gml_302_0");
		global.msg[4] = stringsetloc("\\E0* Do you want me to - %", "obj_classscene_slash_Step_0_gml_303_0");
		global.msg[5] = stringsetloc("\\Ta\\Fa\\E6* G-good idea^1, Noelle^1!&* Susie^1, s-since you came in last.../", "obj_classscene_slash_Step_0_gml_304_0");
		global.msg[6] = stringsetloc("\\E7* Can you go get that for me...?/", "obj_classscene_slash_Step_0_gml_305_0");
		global.msg[7] = stringsetloc("\\FS\\TS\\E0* .../", "obj_classscene_slash_Step_0_gml_306_0");
		global.msg[8] = stringsetloc("* ... whatever./%%", "obj_classscene_slash_Step_0_gml_307_0");
		instance_create(0, 0, obj_dialoguer);
		con = 51.1;
	}
	if (con == 51.1 && d_ex() == 0)
	{
		with (alphys)
			sprite_index = spr_alphysd;
		con = 50.2;
		alarm[4] = 90;
	}
	if (con == 51.2)
	{
		with (alphys)
			sprite_index = spr_alphysd;
		global.fe = 6;
		global.msg[0] = stringsetloc("* H-how about this^1?&* If no one speaks up.../", "obj_classscene_slash_Step_0_gml_323_0");
		global.msg[1] = stringsetloc("* E-everyone gets in trouble!/%", "obj_classscene_slash_Step_0_gml_324_0");
		con = 51.3;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 51.3 && d_ex() == 0)
	{
		with (alphys)
			sprite_index = spr_alphysr;
		con = 50.4;
		alarm[4] = 90;
	}
	if (con == 51.4)
	{
		with (alphys)
			sprite_index = spr_alphysd;
		global.fe = 9;
		global.msg[0] = stringsetloc("* A..^1. Anyone^1?&* P..^1. please?/", "obj_classscene_slash_Step_0_gml_340_0");
		global.msg[1] = stringsetloc("\\FN\\TN\\E1* Hey^1, there might be a box in the supply closet.../", "obj_classscene_slash_Step_0_gml_341_0");
		global.msg[2] = stringsetloc("\\E0* Miss Alphys^1, why don't Susie and I.../", "obj_classscene_slash_Step_0_gml_342_0");
		global.msg[3] = stringsetloc("\\Ta\\Fa\\E6* G-good idea^1, Noelle^1!&* Susie^1, s-since you came in last.../", "obj_classscene_slash_Step_0_gml_343_0");
		global.msg[4] = stringsetloc("\\E7* Why don't you go get it for me...?/", "obj_classscene_slash_Step_0_gml_344_0");
		global.msg[5] = stringsetloc("\\FS\\TS\\E0* .../", "obj_classscene_slash_Step_0_gml_345_0");
		global.msg[6] = stringsetloc("* ... whatever./%%", "obj_classscene_slash_Step_0_gml_346_0");
		instance_create(0, 0, obj_dialoguer);
		con = 52;
	}
	if (con == 52)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.msgno == 4)
			{
				with (alphys)
					sprite_index = spr_alphysr;
			}
		}
	}
	if (con == 52 && instance_exists(obj_dialoguer) == false)
	{
		with (sus)
		{
			vspeed = -1;
			sprite_index = spr_susieu;
			image_speed = 0.2;
		}
		con = 53;
		alarm[4] = 15;
	}
	if (con == 54)
	{
		with (sus)
			instance_destroy();
		instance_create(0, 0, obj_shake);
		snd_play(snd_impact);
		with (door)
			image_index = 0;
		con = 55;
		alarm[4] = 50;
	}
	if (con == 56)
	{
		with (sus)
			instance_destroy();
		with (alphys)
			sprite_index = spr_alphysd;
		global.fc = 11;
		global.typer = 20;
		global.fe = 4;
		global.msg[0] = stringsetloc("\\E4* And K... Kris..^1.&* Can you go with her and make sure she.../", "obj_classscene_slash_Step_0_gml_398_0");
		global.msg[1] = stringsetloc("\\E9* Um^1, actually gets it^1?&* And^1, um^1, stays out of trouble...?/", "obj_classscene_slash_Step_0_gml_399_0");
		global.msg[2] = stringsetloc("\\E6* Thanks Kris^1!&* See you later!/%", "obj_classscene_slash_Step_0_gml_400_0");
		instance_create(0, 0, obj_dialoguer);
		con = 57;
	}
	if (con == 57 && instance_exists(obj_dialoguer) == false)
	{
		with (door_readable)
			instance_destroy();
		doorb = instance_create(242, 51, obj_doorB);
		global.plot = 3;
		global.facing = 0;
		alphys2 = alphys;
		alphys = instance_create(alphys.x, alphys.y + alphys.sprite_height, obj_npc_facing);
		with (obj_npc_facing)
			talked = 0;
		with (alphys2)
			instance_destroy();
		with (doorsolid)
			instance_destroy();
		global.interact = 0;
		con = 58;
	}
}
if (global.chapter == 2)
{
	if (con == 1)
	{
		susie_fake = scr_marker(145, 170, spr_susieu);
		with (susie_fake)
			scr_depth();
		alphys.x = 130;
		alphys.y = 46;
		alphys.sprite_index = spr_alphysd;
		alarm[4] = 30;
		con = 1.5;
	}
	if (con == 2.5)
	{
		global.currentsong[0] = snd_init("mus_school.ogg");
		con = 3;
	}
	if (con == 3 && instance_exists(obj_dialoguer) == false)
	{
		snd_play(snd_dooropen);
		with (door)
			image_index = 1;
		con = 4;
		with (alphys)
			sprite_index = spr_alphysr;
		alarm[4] = 15;
	}
	if (con == 5)
	{
		with (obj_mainchara)
		{
			fun = 1;
			sprite_index = spr_krisd;
			image_speed = 0.2;
			vspeed = 2;
		}
		con = 6;
		alarm[4] = 10;
	}
	if (con == 7)
	{
		with (obj_mainchara)
		{
			image_index = 0;
			vspeed = 0;
			image_speed = 0;
		}
		with (door)
			image_index = 0;
		snd_play(snd_doorclose);
		con = 8;
		alarm[4] = 30;
	}
	if (con == 9)
	{
		scr_speaker("alphys");
		msgsetloc(0, "\\E0* Kris^1, there you are!/", "obj_classscene_slash_Step_0_gml_493_0");
		msgnextloc("\\EA* (Even Susie showed up before you^1, eheh...)/%", "obj_classscene_slash_Step_0_gml_494_0");
		alttalk = 0;
		if (global.flag[201] == 1 && global.flag[269] == 0)
		{
			alttalk = 1;
			msgsetloc(0, "\\E3* (Kris^1! You're okay!!)/", "obj_classscene_slash_Step_0_gml_500_0");
			msgnextloc("\\E9* (I was really worried after you disappeared yesterday...)/", "obj_classscene_slash_Step_0_gml_501_0");
			msgnextloc("\\E0* (I guess we can talk about that after class.)/%", "obj_classscene_slash_Step_0_gml_502_0");
		}
		con = 10;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 10 && instance_exists(obj_dialoguer) == false)
	{
		global.currentsong[1] = mus_loop(global.currentsong[0]);
		scr_cutscene_make();
		scr_maincharacters_actors();
		su = 1;
		su_actor = instance_create(susie_fake.x, susie_fake.y, obj_actor);
		scr_actor_setup(su, su_actor, "susie");
		su_actor.sprite_index = spr_susieu;
		with (susie_fake)
			visible = 0;
		al = 2;
		al_actor = instance_create(alphys.x, alphys.y, obj_actor);
		scr_actor_setup(al, al_actor, "alphys");
		al_actor.sprite_index = spr_alphysd;
		with (alphys)
			visible = 0;
		no = 3;
		no_actor = instance_create(noelle_npc.x, noelle_npc.y, obj_actor);
		scr_actor_setup(no, no_actor, "noelle");
		no_actor.sprite_index = spr_noelle_walk_up_lw;
		no_actor.specialsprite[0] = spr_cutscene_02b_noelle_raise_hand;
		with (noelle_npc)
			visible = 0;
		be = 4;
		be_actor = instance_create(berdly_npc.x, berdly_npc.y, obj_actor);
		scr_actor_setup(be, be_actor, "berdly");
		be_actor.sprite_index = spr_berdly_walk_up_lw;
		be_actor.specialsprite[0] = spr_cutscene_02b_berdly_book_point;
		with (berdly_npc)
			visible = 0;
		con = 11;
		c_sel(0);
		c_walk_wait("d", 3, 10);
		c_walk_wait("l", 3, 20);
		c_walk_wait("d", 3, 22);
		c_walk_wait("l", 3, 13);
		c_specialsprite(2);
		c_wait(30);
		c_facing("r");
		c_sel(su);
		c_autowalk(0);
		c_imageindex(1);
		c_shake();
		c_soundplay(snd_impact);
		c_wait(30);
		c_imageindex(0);
		c_msgside("top");
		c_speaker("susie");
		c_msgsetloc(0, "\\E2* (Hey^1, Kris!)/", "obj_classscene_slash_Step_0_gml_566_0");
		c_msgnextloc("\\E0* (..^1. if I knew you were gonna be late...)/", "obj_classscene_slash_Step_0_gml_567_0");
		c_msgnextloc("\\E3* (I wouldna showed up on time.)/%", "obj_classscene_slash_Step_0_gml_568_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("u");
		c_msgside("bottom");
		c_speaker("alphys");
		c_msgsetloc(0, "\\E9* Susie^1, please don't kick your desk./", "obj_classscene_slash_Step_0_gml_574_0");
		c_msgnextloc("\\E4* Treat school property^1, like you'd treat people./%", "obj_classscene_slash_Step_0_gml_575_0");
		c_talk_wait();
		c_msgside("top");
		c_speaker("susie");
		c_msgsetloc(0, "\\E0* ..../", "obj_classscene_slash_Step_0_gml_579_0");
		c_msgnextloc("\\E1* Okay./", "obj_classscene_slash_Step_0_gml_580_0");
		c_msgnextloc("\\E2* Next time I'll aim for the vitals./%", "obj_classscene_slash_Step_0_gml_581_0");
		c_talk_wait();
		c_soundplay(snd_suslaugh);
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_susie_laugh_lw);
		c_imagespeed(0.25);
		c_wait(45);
		c_halt();
		c_autowalk(1);
		c_facing("u");
		c_sel(al);
		c_sprite(spr_alphysl_unhappy);
		c_halt();
		c_wait(15);
		c_sprite(spr_alphysr_unhappy);
		c_halt();
		c_wait(30);
		c_msgside("bottom");
		c_speaker("alphys");
		c_msgsetloc(0, "\\E9* Th..^1. That's not what I.../%", "obj_classscene_slash_Step_0_gml_602_0");
		c_talk_wait();
		c_facing("d");
		c_speaker("alphys");
		c_msgsetloc(0, "\\E5* In any case^1, good morning^1, Class!/", "obj_classscene_slash_Step_0_gml_606_0");
		c_msgnextloc("\\E7* We have a lot to go over today.../", "obj_classscene_slash_Step_0_gml_607_0");
		c_msgnextloc("\\E6* First^1, we're starting the reading from page 142!/", "obj_classscene_slash_Step_0_gml_608_0");
		c_msgnextloc("\\E4* Any..^1. any volunteers?/%", "obj_classscene_slash_Step_0_gml_609_0");
		c_talk_wait();
		c_wait(30);
		c_sel(no);
		c_specialsprite(0);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* Umm^1, I..^1. I guess I could read the.../%", "obj_classscene_slash_Step_0_gml_616_0");
		c_talk_wait();
		c_sprite(spr_noelle_walk_right_lw);
		c_halt();
		c_sel(4);
		c_autodepth(0);
		c_soundplay_x(snd_escaped, 1, 1.6);
		c_walk_wait("u", 3, 10);
		c_facing("d");
		c_speaker("berdly");
		c_msgsetloc(0, "\\E1* Ah^1, trouble yourself not^1, Noelle!/", "obj_classscene_slash_Step_0_gml_626_0");
		c_msgnextloc("\\E2* I will valiantly take this blow of humiliation!!/", "obj_classscene_slash_Step_0_gml_627_0");
		c_facenext("noelle", 3);
		c_msgnextloc("\\E3* Umm^1, t-that's OK^1, I can.../%", "obj_classscene_slash_Step_0_gml_629_0");
		c_talk();
		c_wait(10);
		c_waittalk();
		c_sel(be);
		c_wait(30);
		c_setxy(139, 84);
		c_specialsprite(0);
		c_sel(no);
		c_sprite(spr_noelle_walk_up_lw);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E0* A-HEM./", "obj_classscene_slash_Step_0_gml_643_0");
		c_msgnextloc("\\E1* \"Page 142.\"/", "obj_classscene_slash_Step_0_gml_644_0");
		c_msgnextloc("\\E3* \"It was the best of times^1, it was the worst of times^1,\"/", "obj_classscene_slash_Step_0_gml_645_0");
		c_msgnextloc("\\E4* \"Times-a pretty good. Times-a pretty bad.\"/", "obj_classscene_slash_Step_0_gml_646_0");
		c_msgnextloc("\\E2* \"Mediocre times. Iffy times. So-so times...\"/%", "obj_classscene_slash_Step_0_gml_647_0");
		c_talk_wait();
		c_mus2("volume", 0, 60);
		c_fadeout(60);
		c_speaker("none");
		c_wait(30);
		c_msgsetloc(0, "* Listening to this^1, your eyes began to close automatically.../%", "obj_classscene_slash_Step_0_gml_653_0");
		c_talk();
		c_wait(30);
		c_waittalk();
		c_mus("free");
		c_wait(30);
		c_soundplay(snd_doorclose);
		c_actortokris();
	}
	if (customconb == 1)
	{
		customtimer++;
		if (customtimer >= 30)
		{
			customtimer = 0;
			customconb = 2;
			customcon = 0;
			with (obj_actor)
				image_speed = 0;
			with (obj_npc_facing)
				image_speed = 0;
			c_waitcustom_end();
		}
	}
	if (con == 11 && !instance_exists(obj_cutscene_master))
	{
		with (obj_actor)
			visible = 0;
		with (obj_npc_facing)
			instance_destroy();
		with (obj_tem_school)
			instance_destroy();
		with (obj_actor)
		{
			if (name == "alphys")
			{
				visible = 1;
				sprite_index = rsprite;
			}
		}
		with (obj_fadeout)
			instance_destroy();
		with (obj_mainchara)
		{
			fun = 0;
			y += 8;
		}
		conwait = 0;
		con = 13;
		alarm[4] = 15;
		global.facing = 2;
	}
	if (con == 13)
		global.facing = 2;
	if (con == 14)
	{
		scr_speaker("alphys");
		msgsetloc(0, "\\E7* Have a nice day^1, everyone!/", "obj_classscene_slash_Step_0_gml_715_0");
		msgnextloc("\\E9* And P-PLEASE^1! Remember your group projects!/%", "obj_classscene_slash_Step_0_gml_716_0");
		d = d_make();
		d.side = 1;
		con = 15;
	}
	if (con == 15 && !d_ex())
	{
		with (al_actor)
			scr_emote("!", 20);
		scr_actor_facing(al_actor, "d");
		con = 16;
		alarm[4] = 30;
	}
	if (con == 17)
	{
		scr_speaker("alphys");
		msgsetloc(0, "\\E1* Oh^1, um..^1. Kris? Are..^1. you okay?/", "obj_classscene_slash_Step_0_gml_739_0");
		msgnextloc("\\E5* You were^1, um^1, s-sleeping all class.../", "obj_classscene_slash_Step_0_gml_740_0");
		msgnextloc("\\E0* D-don't worry^1! I'm not mad^1! J..^1. just concerned!/", "obj_classscene_slash_Step_0_gml_741_0");
		msgnextloc("\\EA* (Usually you only sleep through the start.)/", "obj_classscene_slash_Step_0_gml_742_0");
		if (alttalk == 1)
		{
			scr_speaker("alphys");
			msgnextloc("\\E3* ... Kris..^1. Where did you and Susie go yesterday?/", "obj_classscene_slash_Step_0_gml_747_0");
			msgnextloc("\\E3* .../", "obj_classscene_slash_Step_0_gml_748_0");
			msgnextloc("\\EA* .../", "obj_classscene_slash_Step_0_gml_749_0");
			msgnextloc("\\E5* Um^1, if you don't want to tell me^1, that's okay./", "obj_classscene_slash_Step_0_gml_750_0");
			msgnextloc("\\E9* I was just really..^1. worried about you./", "obj_classscene_slash_Step_0_gml_751_0");
			msgnextloc("\\E6* If... If Susie causes you any trouble^1, then.../", "obj_classscene_slash_Step_0_gml_752_0");
			msgnextloc("\\E8* Okay^1, I..^1. I can't really do anything. Eheh./", "obj_classscene_slash_Step_0_gml_753_0");
			msgnextloc("\\E0* But... I'm looking out for you^1, okay?/%", "obj_classscene_slash_Step_0_gml_754_0");
		}
		else
		{
			msgnextloc("\\E0* Good luck and rest well tonight^1, okay?/%", "obj_classscene_slash_Step_0_gml_758_0");
		}
		d = d_make();
		d.side = 1;
		con = 18;
	}
	if (con == 18 && !d_ex())
	{
		alphys_npc = instance_create(alphys.x, alphys.y, obj_npc_facing);
		alphys_npc.y += alphys_npc.sprite_height;
		with (obj_mainchara)
			fun = 0;
		with (obj_actor)
			instance_destroy();
		global.facing = 0;
		if (global.plot < 5)
			global.plot = 5;
		con = 20;
		global.interact = 0;
		doorb = instance_create(242, 51, obj_doorB);
		with (doorb)
		{
			doorFacing = 0;
			doorPreset = 1;
		}
		with (door)
			depth = 900000;
	}
}
