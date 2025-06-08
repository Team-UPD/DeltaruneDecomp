if (con == 0.5)
	con = 0.7;
if (obj_mainchara.x >= 310 && con == -1)
{
	global.interact = 1;
	global.facing = 1;
	con = 0.5;
}
if (con == 0.7)
{
	con = (scr_sideb_get_phase() == 0) ? 1 : 10;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	be = actor_count + 1;
	be_actor = instance_create(660, 145, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_right_dw;
	if (con == 10)
		no_actor.sprite_index = spr_noelle_walk_right_dw;
}
if (con == 1)
{
	con = 2;
	alarm[0] = 30;
	if (!shortened)
	{
		c_speaker("noelle");
		c_msgsetloc(0, "\\EB* Uh-uh oh--/%", "obj_ch2_city_berdly_slash_Step_0_gml_28_0");
		c_talk_wait();
	}
	c_mus2("volume", 0, 30);
	c_pannable(1);
	c_panspeed_wait(6, 0, 25);
	c_sel(be);
	c_facing("l");
	c_wait(15);
	c_emote("!", 30, 30);
	c_sprite(spr_berdly_shocked_left);
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	if (shortened)
	{
		c_wait(30);
		c_waitcustom();
	}
	else
	{
		c_mus2("initloop", "berdly_theme.ogg", 0);
		c_speaker("berdly");
		c_msgsetloc(0, "\\EN* Noelle!? What are you doing with Kris!?/", "obj_ch2_city_berdly_slash_Step_0_gml_49_0");
		c_facenext("noelle", "2");
		c_msgnextloc("\\E2* Um^1, I..^1. um..^1. I..^1. I.../%", "obj_ch2_city_berdly_slash_Step_0_gml_51_0");
		c_talk_wait();
		c_sel(no);
		c_facing("r");
		c_sel(be);
		c_facing("l");
		c_speaker("noelle");
		c_msgsetloc(0, "\\ER* We..^1. have a truce...?/%", "obj_ch2_city_berdly_slash_Step_0_gml_63_0");
		c_talk_wait();
		c_sel(be);
		c_sprite(spr_berdly_shocked_left);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E3* A..^1. truce!? With..^1. Kris?/%", "obj_ch2_city_berdly_slash_Step_0_gml_71_0");
		c_talk_wait();
		c_sel(be);
		c_autowalk(0);
		c_sprite(spr_berdly_laugh_dw);
		c_imagespeed(0.1);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E2* Hahaha!^1! That's impossible!/%", "obj_ch2_city_berdly_slash_Step_0_gml_81_0");
		c_talk_wait();
		c_sprite(spr_berdly_smug_point_animated);
		c_arg_objectxy(be_actor, -4, 2);
		c_setxy(x, y);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E5* That would be double trucies./%", "obj_ch2_city_berdly_slash_Step_0_gml_90_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_shocked_dw);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* Huh?/%", "obj_ch2_city_berdly_slash_Step_0_gml_98_0");
		c_talk_wait();
		c_sel(be);
		c_autowalk(1);
		c_arg_objectxy(be_actor, 4, -2);
		c_setxy(x, y);
		c_walk("l", 4, 20);
		c_panspeed_wait(-4, 0, 6);
		c_wait(10);
		c_speaker("berdly");
		c_msgsetloc(0, "\\EF* Worry not^1, my dearest Noelle./", "obj_ch2_city_berdly_slash_Step_0_gml_113_0");
		c_msgnextloc("\\E5* I know what you really want to say./%", "obj_ch2_city_berdly_slash_Step_0_gml_114_0");
		c_talk_wait();
		c_sel(no);
		c_facing("r");
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* You...^1. you do?/%", "obj_ch2_city_berdly_slash_Step_0_gml_122_0");
		c_talk_wait();
		c_sel(be);
		c_facing("u");
		c_speaker("berdly");
		c_msgsetloc(0, "\\E0* Going along with all this.../", "obj_ch2_city_berdly_slash_Step_0_gml_130_0");
		c_msgnextloc("\\E8* You feel..^1. forced^1, don't you?/", "obj_ch2_city_berdly_slash_Step_0_gml_131_0");
		c_msgnextloc("\\EG* It's why you're not with Queen right now./%", "obj_ch2_city_berdly_slash_Step_0_gml_132_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_hand_mouth_dw);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* Berdly..^1. you get it?/%", "obj_ch2_city_berdly_slash_Step_0_gml_141_0");
		c_talk_wait();
		c_sel(be);
		c_walk_wait("l", 4, 10);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E5* Yes!^1! I do!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_149_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_shocked_dw);
		c_sel(be);
		c_autowalk(0);
		c_sprite(spr_berdly_smug_point_animated);
		c_imagespeed(0.1);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E6* Kris is FORCING you to be on THEIR side!!/", "obj_ch2_city_berdly_slash_Step_0_gml_163_0");
		c_msgnextloc("\\E2* Kidnapper!^1! Kris^1, our truce..^1. is OVER!!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_164_0");
		c_talk_wait();
		c_sprite(spr_berdly_haliberd);
		c_arg_objectxy(be_actor, -64, -24);
		c_setxy(x, y);
		c_imagespeed(0.25);
		c_wait(5);
		c_soundplay(snd_weaponpull);
		c_wait(30);
		c_sprite(spr_berdlyb_idle);
		c_arg_objectxy(be_actor, 15, 24);
		c_setxy(x, y);
		c_wait(5);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E6* Noelle!^1! This may hurt^1, but it's to help you!!/", "obj_ch2_city_berdly_slash_Step_0_gml_179_0");
		c_facenext("noelle", "E");
		c_msgnextloc("\\EE* W-wait^1, just listen to me---!!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_181_0");
		c_talk_wait();
		c_waitcustom();
	}
}
if (con == 10)
{
	scr_spellget(4, 10);
	global.flag[923] = 1;
	if (global.charweapon[4] == 13)
		global.flag[923] = 0;
	con = 99;
	c_pannable(1);
	c_panspeed_wait(6, 0, 25);
	c_sel(no);
	c_sel(be);
	c_facing("l");
	c_wait(15);
	c_emote("!", 30);
	c_sprite(spr_berdly_walk_left_dw);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* Noelle^1! There you are!/", "obj_ch2_city_berdly_slash_Step_0_gml_234_0");
	c_msgnextloc("\\E4* Just in time^1! We can both go back to Queen and--/%", "obj_ch2_city_berdly_slash_Step_0_gml_235_0");
	c_talk_wait();
	c_sel(be);
	c_autowalk(1);
	c_walk_wait("l", 4, 12);
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* .../", "obj_ch2_city_berdly_slash_Step_0_gml_221_0");
	c_msgnextloc("\\E3* Noelle?/", "obj_ch2_city_berdly_slash_Step_0_gml_222_0");
	c_facenext("noelle", "e");
	c_msgnextloc("\\Ee* Kris^1, it looks like another enemy./", "obj_ch2_city_berdly_slash_Step_0_gml_251_0");
	c_msgnextloc("\\Ed* Should I freeze them?/", "obj_ch2_city_berdly_slash_Step_0_gml_252_0");
	c_facenext("berdly", 23);
	c_msgnextloc("\\EN* N..^1. Noelle?/", "obj_ch2_city_berdly_slash_Step_0_gml_254_0");
	c_msgnextloc("\\EN* Noelle^1, it's me^1, don't you recognize me!?/%", "obj_ch2_city_berdly_slash_Step_0_gml_255_0_b");
	c_talk();
	c_wait_box(2);
	c_sprite(spr_berdly_walk_left_dw_shocked);
	c_wait_talk();
	c_sel(no);
	c_sprite(spr_noelle_walk_right_sad_shocked_dw);
	c_emote("!", 30);
	c_wait(60);
	c_mus("free");
	c_wait(1);
	c_mus2("initloop", "d.ogg", 0);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EB* ...!?!?/", "obj_ch2_city_berdly_slash_Step_0_gml_268_0");
	c_msgnextloc("\\EB* B..^1. Berdly!?/", "obj_ch2_city_berdly_slash_Step_0_gml_269_0");
	c_facenext("berdly", 23);
	c_msgnextloc("\\EN* Noelle^1, are you okay...?/", "obj_ch2_city_berdly_slash_Step_0_gml_271_0");
	c_msgnextloc("\\EN* What..^1. what are you doing with Kris?/%", "obj_ch2_city_berdly_slash_Step_0_gml_272_0");
	c_talk_wait();
	c_facing("u");
	c_wait(60);
	c_speaker("noelle");
	c_msgsetloc(0, "\\ED* I'm just, we're just.../", "obj_ch2_city_berdly_slash_Step_0_gml_283_0");
	c_msgnextloc("\\Ee* .../", "obj_ch2_city_berdly_slash_Step_0_gml_279_0");
	c_msgnextloc("\\EZ* Getting..^1. stronger./%", "obj_ch2_city_berdly_slash_Step_0_gml_280_0");
	c_talk_wait();
	c_msc(1175);
	c_talk_wait();
}
if (con == 12 && !d_ex())
{
	con = 2;
	alarm[0] = 30;
	c_sel(be);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EN* Wh..^1. what? Proceed..^1. where?/", "obj_ch2_city_berdly_slash_Step_0_gml_285_0");
	c_msgnextloc("\\EN* Noelle^1, what are they talking about!?/", "obj_ch2_city_berdly_slash_Step_0_gml_286_0");
	c_facenext("noelle", "Z");
	c_msgnextloc("\\EZ* .../", "obj_ch2_city_berdly_slash_Step_0_gml_302_0");
	c_facenext("berdly", "9");
	c_msgnextloc("\\E9* Th-that's it^1, Kris^1! I don't know what you're doing.../", "obj_ch2_city_berdly_slash_Step_0_gml_304_0");
	c_msgnextloc("\\EA* But if you're hurting my friend Noelle.../%", "obj_ch2_city_berdly_slash_Step_0_gml_305_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_berdly_haliberd);
	c_arg_objectxy(be_actor, -64, -24);
	c_setxy(x, y);
	c_imagespeed(0.25);
	c_wait(5);
	c_soundplay(snd_weaponpull);
	c_wait(30);
	c_imagespeed(0);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* Then I have no choice but to stop you by force!/%", "obj_ch2_city_berdly_slash_Step_0_gml_318_0");
	c_talk_wait();
	c_imagespeed(0.25);
	c_wait(5);
	c_sprite(spr_berdlyb_idle);
	c_arg_objectxy(be_actor, 15, 24);
	c_setxy(x, y);
	c_wait(5);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EA* Kris^1, ready yourself!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_315_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_noelle_walk_right_sad_shocked_dw);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EX* W-wait^1, Berdly^1, stop!/", "obj_ch2_city_berdly_slash_Step_0_gml_338_0");
	c_msgnextloc("\\EY* Run away!/%", "obj_ch2_city_berdly_slash_Step_0_gml_339_0");
	c_talk_wait();
	c_pannable(1);
	c_mus("free");
	c_wait(1);
	c_waitcustom();
}
if (con == 14 && !d_ex())
{
	con = 2;
	alarm[0] = 30;
	global.spell[4][3] = 0;
	if (global.flag[915] > 0)
		scr_sideb_fail();
	c_mus("free");
	c_sel(be);
	c_sprite(spr_berdly_shocked_left);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* From..^1. me!?/%", "obj_ch2_city_berdly_slash_Step_0_gml_345_0");
	c_talk_wait();
	c_sel(no);
	c_facing("d");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E2* (Th..^1. that's right^1, what was I thinking just now?)/", "obj_ch2_city_berdly_slash_Step_0_gml_353_0");
	c_msgnextloc("\\E6* (That's right..^1. Kris is my friend^1, right?)/%", "obj_ch2_city_berdly_slash_Step_0_gml_354_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_mad_dw);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* What absurdity!!^1! Kris!!/", "obj_ch2_city_berdly_slash_Step_0_gml_362_0");
	c_msgnextloc("\\E7* Did you leave your IQ points at home!?/", "obj_ch2_city_berdly_slash_Step_0_gml_363_0");
	c_msgnextloc("\\E6* Noelle is only going to be protected BY ME!/%", "obj_ch2_city_berdly_slash_Step_0_gml_364_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_berdly_haliberd);
	c_arg_objectxy(be_actor, -64, -24);
	c_setxy(x, y);
	c_imagespeed(0.25);
	c_wait(5);
	c_soundplay(snd_weaponpull);
	c_wait(30);
	c_sprite(spr_berdlyb_idle);
	c_arg_objectxy(be_actor, 15, 24);
	c_setxy(x, y);
	c_wait(5);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* And I'll FIGHT HER to PROVE IT!/%", "obj_ch2_city_berdly_slash_Step_0_gml_380_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* W-wait^1, just listen to me---!!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_388_0");
	c_talk_wait();
	c_waitcustom();
}
if (con == 3 && !d_ex() && customcon == 1)
{
	con = 4;
	alarm[0] = 30;
	if (global.tempflag[30] == 0)
		global.tempflag[30] = 1;
	var berdly_marker = scr_dark_marker(be_actor.x, be_actor.y, be_actor.sprite_index);
	berdly_marker.image_index = be_actor.image_index;
	berdly_marker.image_speed = be_actor.image_speed;
	global.flag[9] = 2;
	if (scr_sideb_get_phase() == 2)
		global.batmusic[0] = snd_init("berdly_battle_heartbeat_true.ogg");
	else
		global.batmusic[0] = snd_init("berdly_chase.ogg");
	encounterflag = 550;
	global.flag[54] = encounterflag;
	scr_battle(82, 1, berdly_marker, 0, 0);
	global.flag[9] = 1;
	with (obj_actor)
		visible = 0;
}
if (con == 5 && i_ex(obj_battlecontroller))
{
	var battle_end = false;
	with (obj_battlecontroller)
	{
		if (intro == 2)
			battle_end = true;
	}
	if (battle_end)
	{
		con = 6;
		alarm[0] = 30;
		snd_volume(global.batmusic[1], 0, 25);
	}
}
if (con == 7)
{
	con = 8;
	alarm[0] = 30;
	if (i_ex(obj_battleback))
	{
		with (obj_battleback)
			destroy = 1;
	}
	var used_snowgrave = i_ex(obj_npc_sign);
	if (!used_snowgrave)
	{
		obj_mainchara.x = obj_herokris.x;
		obj_mainchara.y = obj_herokris.y;
		kr_actor.x = obj_herokris.x;
		kr_actor.y = obj_herokris.y;
		kr_actor.sprite_index = obj_herokris.sprite_index;
		no_actor.x = obj_heronoelle.x;
		no_actor.y = obj_heronoelle.y;
		no_actor.sprite_index = obj_heronoelle.sprite_index;
		be_actor.x = obj_berdlyb2_enemy.x + obj_berdlyb2_enemy.shakex;
		be_actor.y = obj_berdlyb2_enemy.y;
		be_actor.sprite_index = spr_berdly_hurt_kneel_battle;
		snd_free(global.batmusic[0]);
		snd_volume(global.currentsong[1], 0, 0);
		snd_resume(global.currentsong[1]);
		snd_volume(global.currentsong[1], 1, 20);
	}
	else
	{
		scr_losechar();
		if (i_ex(north_collider))
		{
			with (north_collider)
				instance_destroy();
		}
		dogcone2.x -= 30;
		dogcone2.y += 35;
		dogcone1.x += 67;
		dogcone1.y += 47;
		dogcone1.image_angle -= 90;
		global.flag[349] = 1;
		global.flag[38] = 0;
		obj_mainchara.x = 310;
		obj_mainchara.y = 140;
		instance_create(86, 80, obj_cone);
		instance_create(126, 80, obj_cone);
		instance_create(880, 104, obj_cone);
		instance_create(880, 136, obj_cone);
		instance_create(880, 168, obj_cone);
		instance_create(880, 200, obj_cone);
		kr_actor.x = obj_mainchara.x;
		kr_actor.y = obj_mainchara.y;
		with (obj_actor)
		{
			if (name != "kris")
				instance_destroy();
		}
		draw_set_alpha(1);
	}
	with (obj_actor)
		visible = 1;
	if (i_ex(obj_monsterparent))
	{
		with (obj_monsterparent)
			instance_destroy();
	}
	if (i_ex(obj_bulletparent))
	{
		with (obj_bulletparent)
			instance_destroy();
	}
	if (i_ex(obj_heroparent))
	{
		with (obj_heroparent)
			instance_destroy();
	}
	if (i_ex(obj_battlecontroller))
		instance_destroy(obj_battlecontroller);
}
if (con == 9 && !i_ex(obj_battlecontroller))
{
	if (global.flag[349] == 1)
	{
		con = 30;
	}
	else
	{
		con = (scr_sideb_get_phase() == 0 || global.flag[916] == 1) ? 49 : 19;
		alarm[0] = 30;
		c_waitcustom_end();
		c_speaker("berdly");
		c_msgsetloc(0, "\\EC* D-damn it!/%", "obj_ch2_city_berdly_slash_Step_0_gml_527_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_hand_mouth_dw);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* Berdly^1, are you okay...?/", "obj_ch2_city_berdly_slash_Step_0_gml_536_0");
		c_msgnextloc("\\E3* Kris^1, maybe we should have gone easier on him.../%", "obj_ch2_city_berdly_slash_Step_0_gml_537_0");
		c_talk_wait();
		c_sel(no);
		c_facing("r");
		c_sel(be);
		c_autowalk(0);
		c_sprite(spr_berdly_laugh_dw);
		c_arg_objectxy(be_actor, 50, 0);
		c_setxy(x, y);
		c_imagespeed(0.15);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E6* Go easier!? Ha^1! Haha^1! Hahaha!/", "obj_ch2_city_berdly_slash_Step_0_gml_550_0");
		c_msgnextloc("\\ED* The only one going easy mode^1, was me!/%", "obj_ch2_city_berdly_slash_Step_0_gml_551_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_hand_mouth_dw);
		c_halt();
		c_sel(be);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* You look..^1. Exhausted./%", "obj_ch2_city_berdly_slash_Step_0_gml_563_0");
		c_talk_wait();
		c_sprite(spr_berdly_smug_point_animated);
		c_arg_objectxy(be_actor, -4, 2);
		c_setxy(x, y);
		c_imagespeed(0.1);
		c_speaker("berdly");
		c_msgsetloc(0, "\\ED* I'm only tired of HOLDING BACK MY TRUE POWER!/%", "obj_ch2_city_berdly_slash_Step_0_gml_573_0");
		c_talk_wait();
		c_autowalk(1);
		c_arg_objectxy(be_actor, 4, 2);
		c_setxy(x, y);
		c_walk_wait("r", 6, 6);
		c_speaker("berdly");
		c_msgsetloc(0, "\\EE* Ah^1, Noelle. It'd be too simple to save you now./", "obj_ch2_city_berdly_slash_Step_0_gml_583_0");
		c_msgnextloc("\\E7* Kris^1! Go ahead and train your strength values./", "obj_ch2_city_berdly_slash_Step_0_gml_584_0");
		c_msgnextloc("\\E1* Try hard^1, and maybe someday you'll be a worthy rival./%", "obj_ch2_city_berdly_slash_Step_0_gml_585_0");
		c_talk_wait();
		c_facing("u");
		c_speaker("berdly");
		c_msgsetloc(0, "\\EE* Heh^1! Sometimes I can't believe how cool I am.../%", "obj_ch2_city_berdly_slash_Step_0_gml_592_0");
		c_talk_wait();
		c_walk_wait("r", 12, 40);
		c_mus2("volume", 0, 30);
		c_panobj(kr_actor, 30);
		c_wait(31);
		c_pannable(0);
		if (scr_sideb_get_phase() == 0 || global.flag[916] == 1)
		{
			if (global.hp[4] < global.maxhp[4])
			{
				c_speaker("noelle");
				c_msgsetloc(0, "\\EH* (He hit me in the face with a tornado...)/%", "obj_ch2_city_berdly_slash_Step_0_gml_612_0");
				c_talk_wait();
			}
			else
			{
				c_speaker("noelle");
				c_msgsetloc(0, "\\E4* (If he would just listen to me...)/%", "obj_ch2_city_berdly_slash_Step_0_gml_619_0");
				c_talk_wait();
			}
		}
	}
}
if (con == 20)
{
	global.spell[4][3] = 0;
	con = 49;
	alarm[0] = 30;
	c_sel(no);
	c_facing("u");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E3* .../", "obj_ch2_city_berdly_slash_Step_0_gml_636_0");
	c_msgnextloc("\\E2* Kris...?/", "obj_ch2_city_berdly_slash_Step_0_gml_637_0");
	c_msgnextloc("\\E3* .../", "obj_ch2_city_berdly_slash_Step_0_gml_638_0");
	c_msgnextloc("\\E2* Umm^1, about just now.../", "obj_ch2_city_berdly_slash_Step_0_gml_639_0");
	c_msgnextloc("\\E3* .../", "obj_ch2_city_berdly_slash_Step_0_gml_640_0");
	c_msgnextloc("\\E5* (Seems like whatever was happening.)/", "obj_ch2_city_berdly_slash_Step_0_gml_641_0");
	c_msgnextloc("\\E8* (They snapped themselves out of it...)/", "obj_ch2_city_berdly_slash_Step_0_gml_642_0");
	c_msgnextloc("\\Ee* (Proceed...)/", "obj_ch2_city_berdly_slash_Step_0_gml_643_0");
	c_msgnextloc("\\Ec* (Why..^1. did they keep saying that...?)/", "obj_ch2_city_berdly_slash_Step_0_gml_644_0");
	c_msgnextloc("\\E4* ..^1. w-wait^1, I get it!/", "obj_ch2_city_berdly_slash_Step_0_gml_645_0");
	c_msgnextloc("\\ES* You were just trying to make Berdly mad^1, weren't you!?/", "obj_ch2_city_berdly_slash_Step_0_gml_646_0");
	c_msgnextloc("\\EQ* Come on^1, that's not nice^1, Kris./", "obj_ch2_city_berdly_slash_Step_0_gml_647_0");
	c_msgnextloc("\\ER* ..^1. Though^1, it's not like I don't understand the feeling./", "obj_ch2_city_berdly_slash_Step_0_gml_648_0");
	c_msgnextloc("\\ES* Fahahaha./", "obj_ch2_city_berdly_slash_Step_0_gml_649_0");
	c_msgnextloc("\\E8* I guess we both kind of got carried away...!/", "obj_ch2_city_berdly_slash_Step_0_gml_650_0");
	c_msgnextloc("\\E8* .../", "obj_ch2_city_berdly_slash_Step_0_gml_651_0");
	c_msgnextloc("\\Ed* (Really though^1, what..^1. was I thinking?)/%", "obj_ch2_city_berdly_slash_Step_0_gml_652_0");
	c_talk_wait();
}
if (con == 30)
{
	con = 49;
	alarm[0] = 30;
	c_waitcustom_end();
	c_pannable(1);
	c_panobj(kr_actor, 20);
	c_wait(30);
	c_pannable(0);
}
if (con == 50 && !d_ex())
{
	con = 60;
	c_actortokris();
	if (scr_havechar(4))
		c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.plot = 79;
	global.interact = 0;
	global.facing = 0;
	if (!i_ex(obj_npc_sign))
	{
		if (global.flag[915] > 0)
			scr_sideb_fail();
		savepoint = instance_create(460, 100, obj_savepoint);
	}
	else
	{
		savepoint = instance_create(386, 97, obj_savepoint);
	}
	with (savepoint)
		scr_depth();
	snd_free_all();
	scr_tempsave();
	instance_destroy();
}
