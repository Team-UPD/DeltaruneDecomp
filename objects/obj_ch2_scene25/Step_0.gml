if (obj_mainchara.x > 650 && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	with (su_actor)
		scr_set_facing_sprites("susieunhappy");
	with (ra_actor)
		scr_set_facing_sprites("ralseiunhappy");
	berdly_wire = instance_create(900, -100, obj_berdly_wire);
	berdly_wire2 = instance_create(900, -100, obj_berdly_wire_release_example_2);
	berdly_plug = scr_dark_marker(810, cameray() - 200, spr_cutscene_25_berdly_plug_only);
	cutscene_master.save_object[0] = berdly_wire;
	cutscene_master.save_object[1] = berdly_plug;
	cutscene_master.save_object[2] = id;
	cutscene_master.save_object[3] = berdly_wire2;
	qu = actor_count + 1;
	qu_actor = instance_create(1058, 125, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_chair_2_right;
	c_sel(qu);
	c_autowalk(0);
	c_imagespeed(0.25);
	be = actor_count + 2;
	be_actor = instance_create(970, cameray() - 200, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_cutscene_25_berdly_plug_removed;
	qu_flame = actor_count + 3;
	qu_flame_actor = scr_dark_marker(1058, 125, spr_queen_chair_flame_side);
	scr_actor_setup_nofacing(qu_flame, qu_flame_actor, "qu_flame");
	qu_flame_actor.depth = qu_actor.depth + 100;
	c_sel(qu_flame);
	c_flip("x");
	c_imagespeed(0.25);
}
if (con == 1)
{
	con = 10;
	c_mus2("volume", 0, 60);
	c_sel(su);
	c_emote("!", 30, 30);
	c_facing("r");
	c_wait(30);
	c_msgside("bottom");
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* There she is!/%", "obj_ch2_scene25_slash_Step_0_gml_69_0");
	c_talk_wait();
	c_pannable(1);
	c_panspeed(10, 0, 25);
	c_sel(kr);
	c_walkdirect(790, 195, 15);
	c_delayfacing(16, "r");
	c_sel(ra);
	c_walkdirect(740, 228, 15);
	c_delayfacing(16, "r");
	c_sel(su);
	c_walkdirect(740, 150, 15);
	c_facing("susieunhappy");
	c_delayfacing(16, "r");
	c_wait(60);
	c_mus("free");
	if (!shortened)
	{
		c_walkdirect_wait(860, 150, 15);
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* Queen!!!^1! Stop right there!!!/%", "obj_ch2_scene25_slash_Step_0_gml_79_0");
		c_talk_wait();
	}
	c_sel(qu);
	c_emote("!", 30, 30);
	c_sprite(spr_queen_chair_2);
	c_sel(qu_flame);
	c_flip("x");
	c_stickto(qu_actor, 100);
	c_wait(30);
	if (shortened)
	{
		c_var_lerp_instance(berdly_wire, "y", -100, 175, 10);
		c_wait(10);
		c_soundplay(snd_impact);
		c_sel(su);
		c_sprite(spr_susie_shock_r);
		c_sel(ra);
		c_sprite(spr_ralsei_hurt_overworld);
		c_wait(30);
		c_soundplay(snd_queen_laugh_0);
		c_sel(qu);
		c_sprite(spr_queen_chair_ohoho_1);
		c_imagespeed(0.1);
		c_imageindex(0);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame);
		c_wait(30);
		c_sel(qu);
		c_sprite(spr_queen_chair_2);
		c_imagespeed(0.25);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame_side);
		c_actortokris();
		c_actortocaterpillar();
		c_waitcustom();
	}
	else
	{
		c_mus("free_all");
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Ah My Sweet Idiot Children/", "obj_ch2_scene25_slash_Step_0_gml_151_0");
		c_msgnextloc("\\E7* You Are Just In Time To Witness My World Domination/", "obj_ch2_scene25_slash_Step_0_gml_152_0");
		c_msgnextloc("\\ED* With Noelle In My Possession/", "obj_ch2_scene25_slash_Step_0_gml_153_0");
		c_msgnextloc("\\E1* It Is Only A Matter Of Time Before Her Will Turns/", "obj_ch2_scene25_slash_Step_0_gml_154_0");
		c_msgnextloc("\\E6* And She Unleashes Her Power/", "obj_ch2_scene25_slash_Step_0_gml_155_0");
		c_msgnextloc("\\E7* Blanketing The World In --/%", "obj_ch2_scene25_slash_Step_0_gml_156_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_susie_point_right);
		c_arg_objectxy(su_actor, 0, 58);
		c_setxy(x, y);
		c_shakeobj();
		c_speaker("susie");
		c_msgsetloc(0, "\\EQ* Too late^1, dumbass!/", "obj_ch2_scene25_slash_Step_0_gml_232_0");
		c_msgnextloc("\\E2* Noelle's with Berdly!/", "obj_ch2_scene25_slash_Step_0_gml_233_0");
		c_facenext("queen", "3");
		c_msgnextloc("\\E3* Oh/", "obj_ch2_scene25_slash_Step_0_gml_235_0");
		c_msgnextloc("\\EA* Then Who This/%", "obj_ch2_scene25_slash_Step_0_gml_236_0");
		c_talk_wait();
		c_soundplay(snd_queen_laugh_0);
		c_sel(qu);
		c_sprite(spr_queen_chair_ohoho_1);
		c_imagespeed(0.1);
		c_imageindex(0);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame);
		c_var_lerp_instance(berdly_wire, "y", -100, 175, 10);
		c_wait(10);
		c_soundplay(snd_impact);
		c_sel(kr);
		c_autowalk(0);
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_susie_shock_r);
		c_arg_objectxy(su_actor, 0, -58);
		c_setxy(x, y);
		c_sel(ra);
		c_autowalk(0);
		c_sprite(spr_ralsei_hurt_overworld);
		c_var_instance(su_actor, "hspeed", -15);
		c_var_instance(su_actor, "friction", 1);
		c_var_instance(ra_actor, "hspeed", -15);
		c_var_instance(ra_actor, "friction", 1);
		c_var_instance(kr_actor, "hspeed", -15);
		c_var_instance(kr_actor, "friction", 1);
		c_wait(30);
		c_mus2("initloop", "GALLERY.ogg", 0);
		c_var_instance(su_actor, "friction", 0);
		c_var_instance(ra_actor, "friction", 0);
		c_var_instance(kr_actor, "friction", 0);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EC* B..^1. Berdly!? But he's been.../%", "obj_ch2_scene25_slash_Step_0_gml_266_0");
		c_talk_wait();
		c_sel(qu);
		c_sprite(spr_queen_raise_glass);
		c_imagespeed(0.25);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame_side);
		c_var_lerp_instance(berdly_wire, "y", 175, 60, 20);
		c_var_lerp_instance(berdly_wire, "x", berdly_wire.x, 1000, 20);
		c_speaker("queen");
		c_msgsetloc(0, "\\E7* Intercepted/", "obj_ch2_scene25_slash_Step_0_gml_278_0");
		c_msgnextloc("\\EC* My Control Plugs Are Now Suitable For Teenagers/", "obj_ch2_scene25_slash_Step_0_gml_279_0");
		c_msgnextloc("\\E1* Now The Whole Family Can Enjoy Eternal Servitude/%", "obj_ch2_scene25_slash_Step_0_gml_280_0");
		c_talk_wait();
		c_sel(qu);
		c_sprite(spr_queen_chair_ohoho_1);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame);
		c_speaker("queen");
		c_msgsetloc(0, "\\EC* (Sort Of Regal Mostly Cruel Laughter)/", "obj_ch2_scene25_slash_Step_0_gml_299_0");
		c_facenext("susie", "Z");
		c_msgnextloc("\\EZ* Wait^1, then..^1. where's Noelle!??/%", "obj_ch2_scene25_slash_Step_0_gml_301_0");
		c_talk_wait();
		c_sel(qu);
		c_sprite(spr_queen_chair_ohoho_1);
		c_imagespeed(0.25);
		c_imageindex(0);
		c_speaker("queen");
		c_msgsetloc(0, "\\EP* (Laughter Becomes More Cruel)/", "obj_ch2_scene25_slash_Step_0_gml_311_0");
		c_msgnextloc("\\ED* Oh I Wonder (I Actually Know The Answer)/%", "obj_ch2_scene25_slash_Step_0_gml_312_0");
		c_talk_wait();
		c_soundplay(snd_laz_c);
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_susie_attack_serious);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_sel(ra);
		c_autowalk(0);
		c_sprite(spr_ralsei_battleintro);
		c_imageindex(0);
		c_imagespeed(0.7333333333333333);
		c_sel(kr);
		c_autowalk(0);
		c_sprite(spr_krisb_attack);
		c_imageindex(0);
		c_imagespeed(0.4666666666666667);
		c_wait(15);
		c_sel(su);
		c_imageindex(3);
		c_imagespeed(0);
		c_sel(ra);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_sprite(spr_ralsei_idle);
		c_sel(kr);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_sprite(spr_krisb_idle);
		c_sel(qu);
		c_sprite(spr_queen_chair_2);
		c_imagespeed(0.25);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame_side);
		c_speaker("susie");
		c_msgsetloc(0, "\\EI* Enough already!/", "obj_ch2_scene25_slash_Step_0_gml_345_0");
		c_facenext("queen", "E");
		c_msgnextloc("\\EE* Oh Dear/", "obj_ch2_scene25_slash_Step_0_gml_347_0");
		c_msgnextloc("\\EF* I Do Sincerely Quite Like You Two/", "obj_ch2_scene25_slash_Step_0_gml_348_0");
		c_msgnextloc("\\EF* It Will Be A Shame To Force You To Serve Me/", "obj_ch2_scene25_slash_Step_0_gml_349_0");
		c_msgnextloc("\\E7* An Enjoyable Shame/%", "obj_ch2_scene25_slash_Step_0_gml_350_0");
		c_talk_wait();
		c_mus("free");
		c_sel(qu);
		c_sprite(spr_queen_chair_ohoho_1);
		c_imagespeed(0.25);
		c_soundplay(snd_queen_laugh_0);
		c_wait(60);
		c_actortokris();
		c_actortocaterpillar();
		c_waitcustom();
	}
}
if (con == 10 && customcon == 1)
{
	con = 19;
	alarm[0] = 30;
	if (global.tempflag[31] == 0)
		global.tempflag[31] = 1;
	with (qu_actor)
		visible = 0;
	with (qu_flame_actor)
		visible = 0;
	var queen_marker = scr_dark_marker(qu_actor.x, qu_actor.y, qu_actor.sprite_index);
	berdly_wire.visible = false;
	var new_berdly = instance_create(berdly_wire.x, berdly_wire.y, obj_berdlyplug_enemy);
	global.flag[9] = 2;
	global.batmusic[0] = snd_init("queen_boss.ogg");
	encounterflag = 548;
	global.flag[54] = encounterflag;
	scr_battle(59, 1, queen_marker, new_berdly, 0);
	if (i_ex(obj_battleback))
		instance_destroy(obj_battleback);
	global.flag[9] = 1;
}
if (con == 20 && i_ex(obj_battlecontroller))
{
	var battle_end = false;
	if (obj_battlecontroller.intro == 2)
		battle_end = true;
	if (instance_exists(obj_queen_enemy) && obj_queen_enemy.endcon == 4 && obj_queen_enemy.endtimer == 1)
		battle_end = true;
	if (battle_end == true)
	{
		con = 21;
		alarm[0] = 15;
		berdly_full_spare = obj_queen_enemy.defeat_cutscene_version;
		if (!berdly_full_spare)
			alarm[0] = 30;
		global.flag[457] = (berdly_full_spare == true) ? 1 : 0;
		berdlynpc.sprite_index = (global.flag[457] == 1) ? spr_berdly_hurt_kneel : spr_berdly_hurt_kneel_burnt;
	}
}
if (con == 22)
{
	qu_actor.sprite_index = berdly_full_spare ? spr_cutscene_city01_queen_shocked : spr_cutscene_25_queen_chair_shocked;
	qu_actor.x = obj_monsterparent.x + 2;
	qu_actor.y = obj_monsterparent.y;
	if (berdly_full_spare)
	{
		qu_actor.x = 1095;
		qu_actor.y = 150;
	}
	qu_actor.visible = 1;
	qu_flame_actor.visible = berdly_full_spare == false;
	if (berdly_full_spare)
	{
		with (obj_tensionbar)
			instance_destroy();
		con = 24;
		customcon = 0;
		kr_actor.visible = 1;
		kr_actor.x = 657;
		kr_actor.y = 115;
		kr_actor.sprite_index = spr_krisr_dark;
		su_actor.visible = 1;
		su_actor.x = 655;
		su_actor.y = 155;
		su_actor.sprite_index = spr_susier_dark_eyes;
		su_actor.image_index = 0;
		ra_actor.visible = 1;
		ra_actor.x = 660;
		ra_actor.y = 222;
		ra_actor.depth = su_actor.depth - 1;
		with (obj_heroparent)
			instance_destroy();
		with (obj_monsterparent)
			visible = false;
		with (obj_bulletparent)
			visible = false;
		with (obj_battlecontroller)
			visible = false;
		be_actor.visible = true;
		with (obj_berdlyplug_enemy)
		{
			if (outrotimer == -1)
				outrotimer = 0;
		}
		be_actor.x = 893;
		be_actor.y = 200;
		be_actor.sprite_index = spr_berdlyb_idle_right;
		if (i_ex(obj_berdlyplug_enemy))
			instance_destroy(obj_berdlyplug_enemy);
		kr_actor.visible = 1;
		kr_actor.x = 705;
		kr_actor.y = 125;
		kr_actor.sprite_index = spr_krisr_dark;
		kr_actor.image_speed = 0;
		su_actor.visible = 1;
		su_actor.x = 735;
		su_actor.y = 165;
		su_actor.sprite_index = spr_susie_walk_right_dw_unhappy;
		su_actor.image_index = 0;
		su_actor.image_speed = 0;
		ra_actor.visible = 1;
		ra_actor.x = 690;
		ra_actor.y = 215;
		ra_actor.sprite_index = spr_ralsei_walk_right_unhappy;
		ra_actor.depth = su_actor.depth - 1;
		ra_actor.image_speed = 0;
		with (obj_heroparent)
			instance_destroy();
	}
	else
	{
		con = 24;
		customcon = 0;
		kr_actor.visible = 0;
		su_actor.visible = 0;
		ra_actor.visible = 0;
		with (obj_battlecontroller)
			instance_destroy();
		with (obj_monsterparent)
			instance_destroy();
		with (obj_bulletparent)
			instance_destroy();
		with (obj_tensionbar)
		{
			alarm[5] = 15;
			hspeed = -10;
			friction = -0.4;
		}
	}
	snd_free_all();
}
if ((con == 24 && global.fighting == 0 && berdly_full_spare) || (con == 24 && !i_ex(obj_battlecontroller) && !berdly_full_spare) || scr_cutscene_loaded())
{
	con = 59;
	alarm[0] = 30;
	be_actor.visible = true;
	global.facing = 0;
	if (!berdly_full_spare)
	{
		kr_actor.visible = 1;
		su_actor.visible = 1;
		ra_actor.visible = 1;
		kr_actor.sprite_index = spr_krisr_dark;
		kr_actor.x = obj_herokris.x;
		kr_actor.y = obj_herokris.y;
		su_actor.sprite_index = spr_susier_dark_eyes;
		su_actor.image_index = 0;
		su_actor.x = obj_herosusie.x + 6;
		su_actor.y = obj_herosusie.y + 4;
		ra_actor.depth = su_actor.depth - 1;
		ra_actor.sprite_index = spr_ralsei_walk_right_unhappy;
		ra_actor.x = obj_heroralsei.x;
		ra_actor.y = obj_heroralsei.y;
	}
	else
	{
		if (instance_exists(obj_battlecontroller))
			instance_destroy(obj_battlecontroller);
		with (obj_monsterparent)
			instance_destroy();
		with (obj_bulletparent)
			instance_destroy();
		be_actor.x = 893;
		be_actor.y = 200;
		be_actor.sprite_index = spr_berdlyb_idle_right;
		if (i_ex(obj_berdlyplug_enemy))
			instance_destroy(obj_berdlyplug_enemy);
	}
	with (obj_heroparent)
		instance_destroy();
	c_waitcustom_end();
	if (!berdly_full_spare)
	{
		c_sel(su);
		c_sel(kr);
		c_autowalk(1);
		c_walkdirect(720, 125, 15);
		c_sel(su);
		c_autowalk(1);
		c_walkdirect(787, 167, 15);
		c_sel(ra);
		c_autowalk(1);
		c_walkdirect(709, 219, 15);
		c_mus("free_all");
		c_sel(qu);
		c_sprite(spr_cutscene_25_queen_chair_shocked);
		c_imagespeed(0.25);
		c_wait(15);
		c_sel(kr);
		c_sprite(spr_krisr_dark);
		c_speaker("queen");
		c_msgsetloc(0, "\\E8* Oh Dear It Seems/", "obj_ch2_scene25_slash_Step_0_gml_657_0");
		c_msgnextloc("\\E8* Someone Sipped Up All Of My Shield Power/", "obj_ch2_scene25_slash_Step_0_gml_658_0");
		c_facenext("susie", 32);
		c_msgnextloc("\\EW* In other words.../%", "obj_ch2_scene25_slash_Step_0_gml_660_0");
		c_talk_wait();
		c_sel(kr);
		c_walkdirect(840, 125, 15);
		c_sel(su);
		c_walkdirect(907, 167, 15);
		c_sel(ra);
		c_walkdirect(829, 219, 15);
		c_wait(30);
		c_sel(su);
		c_sprite(spr_susie_point_right);
		c_addxy(0, 50);
		c_speaker("susie");
		c_msgsetloc(0, "\\EY* Nothing's stopping us from beating you up now^1, huh?/", "obj_ch2_scene25_slash_Step_0_gml_685_0");
		c_facenext("queen", 9);
		c_msgnextloc("\\E9* Well/", "obj_ch2_scene25_slash_Step_0_gml_687_0");
		c_msgnextloc("\\E7* Not Nothing/%", "obj_ch2_scene25_slash_Step_0_gml_688_0");
		c_talk();
		c_wait_box(2);
		c_sel(qu);
		c_sprite(spr_queen_chair_2);
		c_wait_talk();
		c_sprite(spr_queen_raise_glass);
		c_var_lerp_instance(580, "gravity", 0, -2.5, 15);
		c_wait(30);
		c_sel(kr);
		c_autowalk(0);
		c_sel(su);
		c_autowalk(0);
		c_addxy(0, -50);
		c_sprite(spr_susie_shock_r);
		c_sel(ra);
		c_autowalk(0);
		c_sprite(spr_ralsei_surprised_down);
		c_var_instance(berdly_wire2, "x", camerax() + 300);
		c_var_lerp_instance(berdly_wire2, "y", -100, 200, 10);
		c_var_instance(su_actor, "hspeed", -17);
		c_var_instance(su_actor, "friction", 1);
		c_var_instance(ra_actor, "hspeed", -17);
		c_var_instance(ra_actor, "friction", 1);
		c_var_instance(kr_actor, "hspeed", -17);
		c_var_instance(kr_actor, "friction", 1);
		c_wait(10);
		c_soundplay(snd_impact);
		c_wait(20);
		c_var_instance(su_actor, "friction", 0);
		c_var_instance(ra_actor, "friction", 0);
		c_var_instance(kr_actor, "friction", 0);
		c_wait(30);
		c_sel(qu);
		c_sprite(spr_queen_chair_2);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Mr. Birdy Here Still Has Maximum HP/", "obj_ch2_scene25_slash_Step_0_gml_740_0");
		c_msgnextloc("\\EA* So Unless You Want Your Dear Friend To Get Hurt/", "obj_ch2_scene25_slash_Step_0_gml_741_0");
		c_msgnextloc("\\ED* I Recommend/%", "obj_ch2_scene25_slash_Step_0_gml_742_0");
		c_talk_wait();
		c_sprite(spr_queen_raise_glass);
		c_var_instance(berdly_wire2, "tornadocon", 1);
		c_wait(30);
		c_sprite(spr_queen_chair_2);
		c_speaker("queen");
		c_msgsetloc(0, "\\E7* Letting Him Hurt You Instead/%", "obj_ch2_scene25_slash_Step_0_gml_754_0");
		c_talk_wait();
		c_sprite(spr_queen_chair_ohoho_2);
		c_imagespeed(0.25);
		c_soundplay(snd_queen_laugh_0);
		c_sel(qu_flame);
		c_visible(0);
		c_wait(60);
		c_sel(qu);
		c_imagespeed(0);
		c_var_instance(berdly_wire2, "image_xscale", -2);
		c_var_instance(berdly_wire2, "x", camerax() + 350);
		c_var_instance(berdly_wire2, "con", 1);
		c_wait(60);
		c_speaker("berdly");
		c_fefc(0, 0);
		c_msgsetloc(0, "* You..^1. won't..^1. control..^1. me.../", "obj_ch2_scene25_slash_Step_0_gml_776_0");
		c_facenext("queen", 14);
		c_msgnextloc("\\EE* What/", "obj_ch2_scene25_slash_Step_0_gml_778_0");
		c_msgnextloc("\\EH* What Are You Doing/%", "obj_ch2_scene25_slash_Step_0_gml_779_0");
		c_talk();
		c_wait_box(2);
		c_sel(qu);
		c_sprite(spr_cutscene_25_queen_chair_shocked);
		c_imagespeed(0.25);
		c_sel(qu_flame);
		c_visible(1);
		c_wait_talk();
		c_var_instance(berdly_wire2, "con", 5);
		c_speaker("berdly");
		c_fefc(0, 0);
		c_msgsetloc(0, "* Taking..^1. off..^1. this..^1. plug!/%", "obj_ch2_scene25_slash_Step_0_gml_795_0");
		c_talk_wait();
		c_var_instance(berdly_wire2, "con", 10);
		c_speaker("queen");
		c_msgsetloc(0, "\\EE* Stop--/", "obj_ch2_scene25_slash_Step_0_gml_803_0");
		c_msgnextloc("\\EH* Stop That At Once Your Arm Will--/%", "obj_ch2_scene25_slash_Step_0_gml_804_0");
		c_talk_wait();
		c_var_instance(berdly_wire2, "con", 20);
		c_soundplay(snd_explosion);
		c_sel(qu_flame);
		c_visible(0);
		c_soundplay(snd_bomb);
		c_soundplay(snd_laz_c);
		c_var_instance(qu_actor, "hspeed", 1);
		c_var_instance(qu_actor, "friction", -0.5);
		c_fadeout_color(30, 16777215);
		c_speaker("queen");
		c_msgsetloc(0, "\\EH* STOP!!!/%", "obj_ch2_scene25_slash_Step_0_gml_822_0");
		c_talk_wait();
		c_wait(31);
		c_var_instance(berdly_wire2, "x", -999);
		c_var_instance(berdly_wire2, "y", -999);
		c_var_instance(berdly_wire2, "con", 0);
		c_var_instance(berdly_wire2, "floatcon", 0);
		c_wait(30);
		c_sel(be);
		c_setxy(896, 210);
		c_sprite(spr_berdly_walk_left_dw_unhappy);
		c_visible(1);
		c_wait(2);
		c_sel(kr);
		c_setxy(705, 125);
		c_autowalk(1);
		c_sel(su);
		c_sprite(spr_susie_walk_right_dw_unhappy);
		c_setxy(735, 165);
		c_autowalk(1);
		c_sel(ra);
		c_sprite(spr_ralsei_walk_right_unhappy);
		c_setxy(690, 215);
		c_autowalk(1);
		c_fadein(60);
		c_wait(60);
		c_wait(30);
		c_sel(be);
		c_sprite(spr_berdly_hurt_kneel_burnt);
		c_setxy(896, 228);
		c_shakeobj();
		c_soundplay(snd_impact);
		c_sel(kr);
		c_halt();
		c_sel(su);
		c_halt();
		c_sprite(spr_susie_shock_r);
		c_emote("!");
		c_sel(ra);
		c_halt();
		c_sprite(spr_ralsei_surprised_down);
		c_imageindex(1);
		c_autowalk(0);
		c_emote("!");
		c_wait(60);
		c_sel(su);
		c_walkdirect(840, 170, 15);
		c_delayfacing(16, "r");
		c_sel(ra);
		c_autowalk(1);
		c_walkdirect(793, 215, 15);
		c_delayfacing(48, "r");
		c_wait(46);
		c_speaker("susie");
		c_msgsetloc(0, "\\EZ* Berdly..^1. what the hell^1, man!?/", "obj_ch2_scene25_slash_Step_0_gml_965_0");
		c_msgnextloc("* Your arm is..^1.&* That was stupid...!/", "obj_ch2_scene25_slash_Step_0_gml_966_0");
		c_facenext("berdly", "E");
		c_msgnextloc("\\EE* Yes..^1. It was^1, wasn't it...? \\f1 /", "obj_ch2_scene25_slash_Step_0_gml_539_0");
		var small_text = stringsetloc("IT'S NOT PRAISE!!", "obj_ch2_scene25_slash_Step_0_gml_838_0");
		scr_smallface(1, "susie", 5, "middle", "bottom", small_text);
		c_msgnextloc("\\E9* Kris. Susie. I can't do much with a fried wing.../", "obj_ch2_scene25_slash_Step_0_gml_540_0");
		c_msgnextloc("\\EH* Please..^1. promise. You'll save Noelle./", "obj_ch2_scene25_slash_Step_0_gml_541_0");
		c_facenext("ralsei", "F");
		c_msgnextloc("\\EF* We..^1. we promise!/%", "obj_ch2_scene25_slash_Step_0_gml_543_0");
		c_talk_wait();
	}
	else
	{
		c_sel(kr);
		c_setxy(705, 125);
		c_autowalk(1);
		c_sel(su);
		c_sprite(spr_susie_walk_right_dw_unhappy);
		c_setxy(735, 165);
		c_autowalk(1);
		c_sel(ra);
		c_sprite(spr_ralsei_walk_right_unhappy);
		c_setxy(690, 215);
		c_autowalk(1);
		c_sel(kr);
		c_halt();
		c_sel(su);
		c_halt();
		c_sel(ra);
		c_halt();
		c_sel(be);
		c_autowalk(0);
		c_imagespeed(0.2);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E9* Queen...!/", "obj_ch2_scene25_slash_Step_0_gml_870_0");
		c_msgnextloc("\\EA* You may have mastered the number three.../", "obj_ch2_scene25_slash_Step_0_gml_871_0");
		c_msgnextloc("\\EI* But can you stand up against FOUR of us!?/", "obj_ch2_scene25_slash_Step_0_gml_872_0");
		c_facenext("queen", "2");
		c_msgnextloc("\\E2* Running Simulation For: The Number Four/", "obj_ch2_scene25_slash_Step_0_gml_874_0");
		c_msgnextloc("\\E5* .../", "obj_ch2_scene25_slash_Step_0_gml_875_0");
		c_msgnextloc("\\E2* Hmm/", "obj_ch2_scene25_slash_Step_0_gml_876_0");
		c_msgnextloc("\\E1* You Are Definitely Going To Kick: My Ass/", "obj_ch2_scene25_slash_Step_0_gml_877_0");
		c_msgnextloc("\\E9* Unless/%", "obj_ch2_scene25_slash_Step_0_gml_878_0");
		c_talk();
		c_wait_box(4);
		c_sel(qu);
		c_autowalk(1);
		c_facing("u");
		c_wait_box(5);
		c_sel(qu);
		c_sprite(spr_queen_walk_left_unhappy);
		c_wait_box(7);
		c_sel(qu);
		c_facing("l");
		c_wait_box(7);
		c_sel(qu);
		c_facing("d");
		c_wait_talk();
		c_sel(qu);
		c_autowalk(0);
		c_sprite(spr_queen_point_left);
		c_imageindex(0);
		c_imagespeed(0.5);
		c_shakeobj();
		c_wait(5);
		c_imagespeed(0);
		c_wait(15);
		c_speaker("queen");
		c_msgsetloc(0, "\\EE* Oh No What That/%", "obj_ch2_scene25_slash_Step_0_gml_909_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("l");
		c_sel(su);
		c_facing("l");
		c_sel(ra);
		c_facing("l");
		c_sel(be);
		c_autowalk(1);
		c_facing("l");
		c_soundplay(snd_whip_crack_only);
		c_wait(30);
		c_soundplay(snd_queen_hoot_0);
		c_sel(qu);
		c_autowalk(0);
		c_sprite(spr_queen_run_right_stupid);
		c_imagespeed(0.3);
		c_walk("r", 8, 60);
		c_wait(60);
		c_visible(0);
		c_sel(kr);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_sel(ra);
		c_facing("r");
		c_sel(be);
		c_autowalk(1);
		c_facing("r");
		c_wait(15);
		c_emote("!");
		c_sprite(spr_berdly_shocked_right);
		c_shakeobj();
		c_speaker("berdly");
		c_msgsetloc(0, "\\EC* W-wait^1! Wait one nanosecond^1! You..^1. you cowardette!/", "obj_ch2_scene25_slash_Step_0_gml_962_0");
		c_msgnextloc("\\ED* You..^1. you.../%", "obj_ch2_scene25_slash_Step_0_gml_969_0");
		c_talk_wait();
		c_wait(5);
		c_sel(be);
		c_sprite(spr_berdly_hurt_kneel);
		c_setxy(896, 228);
		c_shakeobj();
		c_soundplay(snd_impact);
		c_sel(kr);
		c_halt();
		c_sel(su);
		c_halt();
		c_sprite(spr_susie_shock_r);
		c_emote("!");
		c_sel(ra);
		c_halt();
		c_sprite(spr_ralsei_surprised_down);
		c_imageindex(1);
		c_autowalk(0);
		c_emote("!");
		c_wait(60);
		c_sel(su);
		c_autowalk(1);
		c_walkdirect(840, 170, 15);
		c_delayfacing(16, "r");
		c_sel(ra);
		c_autowalk(1);
		c_walkdirect(793, 215, 15);
		c_delayfacing(48, "r");
		c_wait(46);
		c_speaker("berdly");
		c_msgsetloc(0, "\\EH* Alas.../", "obj_ch2_scene25_slash_Step_0_gml_1009_0");
		c_facenext("susie", 6);
		c_msgnextloc("\\E6* B-Berdly!?/", "obj_ch2_scene25_slash_Step_0_gml_1011_0");
		c_facenext("berdly", 5);
		c_msgnextloc("\\E5* Haha^1, just now^1, was nothing more than simple bravado.../", "obj_ch2_scene25_slash_Step_0_gml_1013_0");
		c_msgnextloc("\\E8* The truth is^1, that wire.../", "obj_ch2_scene25_slash_Step_0_gml_1014_0");
		c_msgnextloc("\\EH* Already absorbed all of my succulent energy juices./%", "obj_ch2_scene25_slash_Step_0_gml_1015_0");
		c_talk_wait();
		c_wait(30);
	}
	c_sel(su);
	c_sprite(spr_susie_shock_r);
	c_arg_objectxy(su_actor, 4, -20);
	c_setxy(x, y);
	c_sel(ra);
	c_sprite(spr_ralsei_hurt_overworld);
	c_sel(be);
	c_sprite(spr_cutscene_25_berdly_ground_3);
	c_soundplay(snd_impact);
	c_setxy(886, 250);
	c_shakeobj();
	c_wait(30);
	c_sel(su);
	c_autowalk(1);
	c_sel(ra);
	c_autowalk(1);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EZ* Berdly!^1! Hey!^1! Hey^1, Berdly!^1! Are you OK!?/", "obj_ch2_scene25_slash_Step_0_gml_573_0");
	c_facenext("berdly", "G");
	c_msgnextloc("\\EG* Everything..^1. getting dark.../", "obj_ch2_scene25_slash_Step_0_gml_575_0");
	c_msgnextloc("\\EH* (Only...)/%", "obj_ch2_scene25_slash_Step_0_gml_576_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_cutscene_25_berdly_gamer_kiss_3);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EF* (Only a kiss from a beautiful gamer girl can save me now...)/%", "obj_ch2_scene25_slash_Step_0_gml_583_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_walkdirect(920, 175, 15);
	c_wait(16);
	c_sprite(spr_susie_dw_landed);
	c_speaker("susie");
	c_msgsetloc(0, "\\E8* Berdly.../%", "obj_ch2_scene25_slash_Step_0_gml_1035_0");
	c_talk_wait();
	c_fadeout_color(90, merge_color(c_fuchsia, c_white, 0.5));
	c_soundplay(snd_magicsprinkle);
	c_wait(75);
	c_fadein(2);
	c_sel(be);
	c_sprite(spr_cutscene_25_berdly_gamer_kiss_3_surprise);
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* What?/", "obj_ch2_scene25_slash_Step_0_gml_599_0");
	c_msgnextloc("\\EK* Like^1, get you're^1, like^1, losing consciousness and stuff^1, but^1,/", "obj_ch2_scene25_slash_Step_0_gml_600_0");
	c_msgnextloc("\\EP* Could you speak up?/%", "obj_ch2_scene25_slash_Step_0_gml_601_0");
	c_talk_wait();
	c_sel(be);
	if (berdly_full_spare)
		c_sprite(spr_berdly_hurt_kneel);
	else
		c_sprite(spr_berdly_hurt_kneel_burnt);
	c_setxy(895, 228);
	c_shakeobj();
	c_sel(su);
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EN* Umm^1, aha^1, s-sorry^1, suddenly I..^1. I..^1. I'm feeling a bit better!/", "obj_ch2_scene25_slash_Step_0_gml_610_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* Hey^1, that's a relief!/%", "obj_ch2_scene25_slash_Step_0_gml_612_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(1);
	c_walk_wait("r", 4, 30);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Well^1, uh^1, gotta hurry and save Noelle^1, so..^1. later./%", "obj_ch2_scene25_slash_Step_0_gml_621_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(1);
	c_walk("r", 7, 70);
	c_wait(50);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* Ahh^1, dear Susan. So enigmatic in her ways./", "obj_ch2_scene25_slash_Step_0_gml_638_0");
	c_msgnextloc("\\E4* But I can read her heart^1, Kris. Like a health meter./", "obj_ch2_scene25_slash_Step_0_gml_639_0");
	c_msgnextloc("\\EF* And it's beeping..^1. for love./", "obj_ch2_scene25_slash_Step_0_gml_640_0");
	c_msgnextloc("\\E4* Haha^1! Well enough tales^1, Kris. Good luck./", "obj_ch2_scene25_slash_Step_0_gml_641_0");
	c_msgnextloc("\\E5* May the smarts..^1. NOT be with you./%", "obj_ch2_scene25_slash_Step_0_gml_642_0");
	c_talk_wait();
	c_wait(15);
	c_sel(ra);
	c_walkdirect(662, 113, 18);
	c_sel(kr);
	c_facing("l");
	c_panobj(kr_actor, 20);
	c_wait(20);
	c_sel(ra);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EK* Okay./%", "obj_ch2_scene25_slash_Step_0_gml_659_0");
	c_talk_wait();
	c_var_instance(id, "berdly_npc_realign", true);
	c_wait(5);
	c_var_instance(berdlynpc, "visible", 1);
	c_wait(5);
	c_sel(kr);
	c_facing("d");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.plot = 165;
	global.interact = 0;
	global.facing = 0;
	var savepoint = instance_create(905, 40, obj_savepoint);
	with (savepoint)
		scr_depth();
	with (obj_mainchara)
		cutscene = 0;
	with (obj_caterpillarchara)
	{
		if (name == "susie")
		{
			follow = 0;
			visible = 0;
		}
	}
}
if (con > 0 && berdly_npc_realign)
{
	berdly_npc_realign = false;
	berdlynpc.x = be_actor.x;
	berdlynpc.y = be_actor.y;
}
