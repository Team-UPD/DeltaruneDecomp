if (con == -1)
{
	con = 1;
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(kr);
	c_setxy(108, 147);
	su = 2;
	su_actor = instance_create(289, 95, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_lw;
	to = 3;
	to_actor = instance_create(camerax() + 450, 120, obj_actor);
	scr_actor_setup(to, to_actor, "toriel");
	to_actor.sprite_index = spr_toriel_l;
	torread = scr_marker(422, 106, spr_cutscene_32_toriel_pj_chair_read);
	torread.visible = 0;
	torsleep = scr_marker(422, 103, spr_cutscene_32_toriel_pj_chair_sleep);
	torsleep.image_alpha = 0;
	torsleep.image_speed = 0.15;
	torsleep.depth = 95000;
	torsleep_flash = scr_marker(422, 103, spr_cutscene_32_toriel_flash);
	torsleep_flash.image_alpha = 0;
	torsleep_flash.image_speed = 0;
	torsleep_flash.depth = 94000;
	krissleep = scr_marker(449, 175, spr_cutscene_32_kris_couch_sleep_dark);
	krissleep.image_alpha = 0;
	susleep = scr_marker(498, 165, spr_cutscene_32_susie_sleeping_dark);
	susleep.image_speed = 0.05;
	susleep.image_alpha = 0;
	susleep.depth = 4900;
	align_susie = false;
	tv = scr_marker(474, 86, spr_cutscene_32_tv_cooking);
	tv.visible = 0;
	tvstatic2 = scr_marker(474, 86, spr_cutscene_32_tv_static);
	tvstatic2.image_alpha = 0;
	tvstatic2.image_speed = 0.15;
	tvstatic2.depth = 4900000;
	tvstatic = scr_marker(474, 86, spr_cutscene_32_tv_static);
	tvstatic.image_alpha = 0;
	tvstatic.image_speed = 0.15;
	tvstatic.depth = 50;
	tvsmile = scr_marker(474, 86, spr_cutscene_32_tv_static_smile);
	tvsmile.image_alpha = 0;
	tvsmile.image_speed = 0.15;
	tvsmile.depth = 0;
	chairnormal = scr_marker(422, 106, spr_chairiel_empty);
	chairnormal.depth = 1000000;
	chairdim = scr_marker(422, 105, spr_cutscene_32_chariel_dim);
	chairdim.depth = 100000;
	chairdim.image_alpha = 0;
	darkcouch = scr_marker(185, 153, spr_cutscene_32_foreground_dark);
	darkcouch.image_alpha = 0;
	darkcouch.depth = 5000;
	beam = scr_marker(413, 1, spr_cutscene_32_beam_form);
	beam.visible = 0;
	beamunder = scr_marker(420, 156, spr_cutscene_32_beam_under_glow);
	beamunder.visible = 0;
	with (beamunder)
		scr_depth();
	crater = scr_marker(430, 165, spr_cutscene_32_crater);
	crater.visible = 0;
	with (crater)
		scr_depth();
	black_bar = scr_marker(400, 200, spr_pixel_white);
	black_bar.image_xscale = camerax() + view_wport[0];
	black_bar.image_yscale = 80;
	black_bar.depth = 100;
	black_bar.image_blend = c_black;
	room_flash = scr_marker(0, 0, spr_cutscene_32_room_black_white);
	room_flash.depth = 900000;
	room_flash.image_alpha = 0;
	fountainkris = instance_create(500, 240, obj_kris_fountain);
	fadebg = false;
	if (debug_skip == 1)
	{
		con = 10;
		with (blackall)
			instance_destroy();
		obj_mainchara.cutscene = 1;
		obj_mainchara.x = 500;
		with (to_actor)
			instance_destroy();
		snd_free_all();
		camerax_set(room_width - 320);
	}
}
if (con == 1)
{
	con = 2;
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
	c_pannable(1);
	c_panspeed(2, 0, 60);
	c_sel(kr);
	c_walkdirect_wait(240, 147, 50);
	c_walkdirect_wait(240, 102, 25);
	c_facing("r");
	c_wait(15);
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Hey Kris^1, hurry up next time./", "obj_ch2_scene32_slash_Step_0_gml_130_0");
	c_msgnextloc("\\E2* We're already almost done.../%", "obj_ch2_scene32_slash_Step_0_gml_131_0");
	c_talk_wait();
	c_soundplay(snd_doorclose);
	c_sel(su);
	c_facing("r");
	c_sel(to);
	c_autowalk(0);
	c_sprite(spr_toriel_l_unhappy);
	c_imagespeed(0.25);
	c_walkdirect_wait(325, 128, 60);
	c_halt();
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* .../%", "obj_ch2_scene32_slash_Step_0_gml_148_0");
	c_talk_wait();
	c_wait(15);
	c_sel(su);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* So what's next?/%", "obj_ch2_scene32_slash_Step_0_gml_157_0");
	c_talk_wait();
	c_sel(to);
	c_autowalk(1);
	c_facing("u");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* Oh^1, err^1, the pie.../%", "obj_ch2_scene32_slash_Step_0_gml_165_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E0* We already worked quite hard^1, have we not?/", "obj_ch2_scene32_slash_Step_0_gml_172_0");
	c_msgnextloc("\\E1* How about we finish it later?/", "obj_ch2_scene32_slash_Step_0_gml_173_0");
	c_facenext("susie", "A");
	c_msgnextloc("\\EA* ..^1. Umm^1, OK!/%", "obj_ch2_scene32_slash_Step_0_gml_175_0");
	c_talk_wait();
	c_sel(su);
	c_facing("l");
	c_wait(30);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Then..^1. uh..^1. guess I'll walk home...?/", "obj_ch2_scene32_slash_Step_0_gml_185_0");
	c_facenext("toriel", "8");
	c_msgnextloc("\\E8* Oh^1, no^1, no^1, there's no need to do that!/%", "obj_ch2_scene32_slash_Step_0_gml_187_0");
	c_talk_wait();
	c_sel(to);
	c_emote("!", 30);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* Oh^1, actually!/", "obj_ch2_scene32_slash_Step_0_gml_195_0");
	c_msgnextloc("\\E0* Susie^1, would you like to stay over?/%", "obj_ch2_scene32_slash_Step_0_gml_196_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_susie_shocked_lw);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Huh?!/", "obj_ch2_scene32_slash_Step_0_gml_204_0");
	c_facenext("susie", "6");
	c_msgnextloc("\\E6* I mean^1, umm..^1. if it's OK^1, then.../", "obj_ch2_scene32_slash_Step_0_gml_206_0");
	c_facenext("toriel", "0");
	c_msgnextloc("\\E0* Here^1, look at this!/%", "obj_ch2_scene32_slash_Step_0_gml_208_0");
	c_talk_wait();
	c_sel(to);
	c_walkdirect(500, 130, 40);
	c_delayfacing(41, "d");
	c_sel(kr);
	c_walkdirect(240, 140, 25);
	c_delaywalkdirect(26, 425, 140, 60);
	c_delayfacing(86, "d");
	c_sel(su);
	c_autowalk(1);
	c_walkdirect(280, 128, 25);
	c_delaywalkdirect(26, 450, 128, 60);
	c_delayfacing(86, "d");
	c_panspeed_wait(2, 0, 110);
	c_speaker("toriel");
	c_msgsetloc(0, "* Our couch is used to being used as a bed!/%", "obj_ch2_scene32_slash_Step_0_gml_230_0");
	c_talk_wait();
	c_sel(to);
	c_facing("l");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* It's not perfect, but we could all sleep out here!/", "obj_ch2_scene32_slash_Step_0_gml_238_0");
	c_facenext("susie", 7);
	c_msgnextloc("\\E7* That..^1. sounds good to me^1! Yeah!/", "obj_ch2_scene32_slash_Step_0_gml_240_0");
	c_facenext("toriel", "0");
	c_msgnextloc("\\E0* Splendid^1! I will make sure everything is in order./%", "obj_ch2_scene32_slash_Step_0_gml_242_0");
	c_talk_wait();
	c_walkdirect_wait(377, 125, 60);
	c_wait(30);
	c_facing("u");
	c_sel(kr);
	c_facing("l");
	c_sel(su);
	c_facing("l");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* Just..^1. call your parents^1, will you not?/", "obj_ch2_scene32_slash_Step_0_gml_260_0");
	c_facenext("susie", 7);
	c_msgnextloc("\\E7* Yeah^1, of course!/%", "obj_ch2_scene32_slash_Step_0_gml_262_0");
	c_talk_wait();
	c_sel(to);
	c_walk("l", 2, 60);
	c_sel(su);
	c_walkdirect_wait(377, 128, 30);
	c_facing("u");
	c_wait(80);
	c_soundplay(snd_escaped);
	c_wait(30);
	c_walkdirect_wait(481, 128, 15);
	c_facing("l");
	c_sel(kr);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* So what the hell^1, a sleepover?/", "obj_ch2_scene32_slash_Step_0_gml_289_0");
	c_msgnextloc("\\EA* Damn^1, I haven't had one of those in forever^1, heh.../%", "obj_ch2_scene32_slash_Step_0_gml_290_0");
	c_talk_wait();
	c_sel(su);
	c_walkdirect_wait(505, 160, 30);
	c_autowalk(0);
	c_sprite(spr_cutscene_32_susie_jump_back);
	c_halt();
	c_soundplay(snd_jump);
	c_var_instance(su_actor, "vspeed", -5);
	c_var_instance(su_actor, "gravity", 1);
	c_wait(10);
	c_var_instance(su_actor, "vspeed", 0);
	c_var_instance(su_actor, "gravity", 0);
	c_autodepth(0);
	c_depth(9500);
	c_sprite(spr_cutscene_32_susie_couch_sitting_back);
	c_setxy(505, 167);
	c_shakeobj();
	c_shake();
	c_soundplay(snd_bump);
	c_wait(60);
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* (Hey^1, Kris^1, it's not like someone has to tell you to sit^1, right!?)/%", "obj_ch2_scene32_slash_Step_0_gml_320_0");
	c_talk_wait();
	c_sel(kr);
	c_walkdirect_wait(462, 145, 20);
	c_wait(5);
	c_facing("u");
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk_wait("d", 2, 10);
	c_halt();
	c_soundplay(snd_wing);
	c_sprite(spr_cutscene_32_kris_couch_sit);
	c_setxy(460, 173);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* There^1, chill out for a sec!/%", "obj_ch2_scene32_slash_Step_0_gml_337_0");
	c_talk_wait();
	c_wait(60);
	c_speaker("susie");
	c_msgsetloc(0, "\\EL* So now what?/%", "obj_ch2_scene32_slash_Step_0_gml_344_0");
	c_talk_wait();
	c_sel(su);
	c_emote("!", 60);
	c_wait(60);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* I got it!/%", "obj_ch2_scene32_slash_Step_0_gml_354_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_32_susie_couch_remote_search);
	c_imageindex(0);
	c_imagespeed(0.15);
	c_speaker("susie");
	c_msgsetloc(0, "\\EP* Maybe..^1. between..^1. the pillows..^1. here?/%", "obj_ch2_scene32_slash_Step_0_gml_364_0");
	c_talk_wait();
	c_sprite(spr_cutscene_32_susie_couch_remote_find);
	c_imageindex(0);
	c_soundplay(snd_wing);
	c_soundplay(snd_item);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* There^1! Knew I'd find the remote in there!/", "obj_ch2_scene32_slash_Step_0_gml_372_0");
	c_msgnextloc("\\EA* You can always find good stuff wedged in the couch./", "obj_ch2_scene32_slash_Step_0_gml_390_0");
	c_msgnextloc("\\E0* Jeez^1, it's dusty^1. When'd you last use this thing?/", "obj_ch2_scene32_slash_Step_0_gml_373_0");
	c_msgnextloc("\\E9* ..^1. Well^1, who cares^1! Let's just watch TV!/%", "obj_ch2_scene32_slash_Step_0_gml_374_0");
	c_talk_wait();
	c_sprite(spr_cutscene_32_susie_couch_remote_use);
	c_soundplay_x(snd_noise, 0.5, 2);
	c_imageindex(0);
	c_imagespeed(0);
	c_wait(15);
	c_imageindex(1);
	c_var_instance(tv, "visible", 1);
	c_var_instance(tv, "image_speed", 0.1);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* So what are we gonna marathon tonight?/", "obj_ch2_scene32_slash_Step_0_gml_388_0");
	c_msgnextloc("\\E7* Blood Crushers 3? Hell Busters? Invasion of the Cat Petters?/%", "obj_ch2_scene32_slash_Step_0_gml_389_0");
	c_talk_wait();
	c_wait(15);
	c_imageindex(0);
	c_wait(15);
	c_imageindex(1);
	c_soundplay_x(snd_noise, 0.5, 2);
	c_var_instance(tv, "sprite_index", spr_cutscene_32_tv_weather);
	c_wait(30);
	c_sprite(spr_cutscene_32_susie_couch_sitting_face_left);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Heh^1, maybe ICE-E The Movie's more your speed^1, huh^1, Kris?/", "obj_ch2_scene32_slash_Step_0_gml_407_0");
	c_msgnextloc("\\E9* HAHAHAHA!!^1! HAHAHAHA!!!/", "obj_ch2_scene32_slash_Step_0_gml_408_0");
	c_msgnextloc("\\E7* Hahahaha..^1. haha..^1. ha.../", "obj_ch2_scene32_slash_Step_0_gml_409_0");
	c_msgnextloc("\\EQ* Heh./%", "obj_ch2_scene32_slash_Step_0_gml_410_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_32_susie_couch_sitting_back);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* It's been a good day^1, huh^1, Kris?/", "obj_ch2_scene32_slash_Step_0_gml_417_0");
	c_msgnextloc("\\EQ* You^1, Ralsei^1, Lancer^1, everyone.../", "obj_ch2_scene32_slash_Step_0_gml_418_0");
	c_msgnextloc("\\EA* It's..^1. just cool hanging out together^1, right?/", "obj_ch2_scene32_slash_Step_0_gml_419_0");
	c_msgnextloc("\\EQ* ..^1. that's why^1, y'know..^1. Don't you think we should.../%", "obj_ch2_scene32_slash_Step_0_gml_420_0");
	c_talk_wait();
	c_sprite(spr_cutscene_32_susie_couch_sitting_face_left);
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Try to have them come to OUR world?/", "obj_ch2_scene32_slash_Step_0_gml_426_0");
	c_msgnextloc("\\E9* C'mon^1, think about how much better it would be!/", "obj_ch2_scene32_slash_Step_0_gml_427_0");
	c_msgnextloc("\\E2* Ralsei could do our homework..^1. Lancer could live under your bed.../%", "obj_ch2_scene32_slash_Step_0_gml_428_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_32_susie_couch_sitting_back);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* We could all walk to school together.../", "obj_ch2_scene32_slash_Step_0_gml_435_0");
	c_msgnextloc("\\E9* It'd..^1. be perfect^1, y'know?/%", "obj_ch2_scene32_slash_Step_0_gml_436_0");
	c_talk_wait();
	c_msc(1165);
	c_talk_wait();
}
if (con == 5 && !d_ex())
{
	con = 99;
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* ..^1. Well^1, whatever^1, let's just get back to watching./%", "obj_ch2_scene32_slash_Step_0_gml_449_0");
	c_talk_wait();
	c_sprite(spr_cutscene_32_susie_couch_remote_use);
	c_imageindex(0);
	c_imagespeed(0);
	c_wait(15);
	c_imageindex(1);
	c_soundplay_x(snd_noise, 0.5, 2);
	c_var_instance(tv, "sprite_index", spr_cutscene_32_tv_cooking);
	c_wait(10);
	c_sprite(spr_cutscene_32_susie_couch_sitting_back);
	c_wait(150);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* So the festival is coming up^1, right?/", "obj_ch2_scene32_slash_Step_0_gml_467_0");
	c_msgnextloc("\\EL* That thing where the town becomes..^1. a carnival./", "obj_ch2_scene32_slash_Step_0_gml_468_0");
	c_msgnextloc("\\E2* Stupid^1, right?/%", "obj_ch2_scene32_slash_Step_0_gml_469_0");
	c_talk_wait();
	c_wait(120);
	c_msc(1089);
	c_talk_wait();
}
if ((con == 10 && !d_ex()) || scr_cutscene_loaded())
{
	susie_snore = 0;
	con = 40;
	if (debug_skip == 0)
	{
		c_msgside("top");
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* ... Look^1, let's just go back to watching TV!/%", "obj_ch2_scene32_slash_Step_0_gml_488_0");
		c_talk_wait();
		c_sprite(spr_cutscene_32_susie_couch_remote_use);
		c_imageindex(0);
		c_imagespeed(0);
		c_wait(15);
		c_imageindex(1);
		c_var_instance(tv, "sprite_index", spr_cutscene_32_tv_zilla);
		c_soundplay_x(snd_noise, 0.5, 2);
		c_wait(10);
		c_sprite(spr_cutscene_32_susie_couch_sitting_back);
		c_speaker("susie");
		c_msgsetloc(0, "\\E2* Now this is what I'm talking about!/", "obj_ch2_scene32_slash_Step_0_gml_505_0");
		c_msgnextloc("\\EY* A giant monster movie special!/", "obj_ch2_scene32_slash_Step_0_gml_506_0");
		c_msgnextloc("\\EK* (Always liked them better than the giant human movies.)/", "obj_ch2_scene32_slash_Step_0_gml_507_0");
		c_msgnextloc("\\E2* Now THIS is something we can MARATHON!/", "obj_ch2_scene32_slash_Step_0_gml_508_0");
		c_msgnextloc("\\EQ* Are you READY Kris?/", "obj_ch2_scene32_slash_Step_0_gml_509_0");
		c_msgnextloc("\\EY* For 12 hours of building-bashing^1, car-crunching action!?/", "obj_ch2_scene32_slash_Step_0_gml_510_0");
		c_msgnextloc("\\E5* 'cause we are LOCKED IN. Got it?/", "obj_ch2_scene32_slash_Step_0_gml_511_0");
		c_msgnextloc("\\EH* I better not see you move until your eyes are bloodshot!/", "obj_ch2_scene32_slash_Step_0_gml_512_0");
		c_msgnextloc("\\E9* Heheheh!/%", "obj_ch2_scene32_slash_Step_0_gml_513_0");
		c_talk_wait();
		c_shakeobj();
		c_soundplay_x(snd_wing, 0.9, 0.8);
		c_msgsetloc(0, "\\EA* Now lemme just..^1. get comfortable^1, here^1, and.../%", "obj_ch2_scene32_slash_Step_0_gml_514_0");
		c_talk_wait();
		c_shakeobj();
		c_soundplay_x(snd_wing, 0.9, 0.8);
		c_wait(15);
		c_shakeobj();
		c_soundplay_x(snd_wing, 0.9, 0.8);
		c_wait(40);
		c_msgsetloc(0, "\\E7* There!/%", "obj_ch2_scene32_slash_Step_0_gml_515_0");
		c_talk_wait();
		c_wait(90);
		c_soundplay_x(snd_bump, 1, 0.9);
		c_shake();
		c_sel(su);
		c_sprite(spr_cutscene_32_susie_sleeping);
		c_imagespeed(0.05);
		c_mus("free");
		c_wait(110);
		c_var_instance(id, "susie_snore", 1);
		if (os_type != os_ps4 && os_type != os_ps5)
			c_var_instance(id, "end_game", true);
		c_speaker("no_name");
		c_msgsetloc(0, "* (... Susie fell asleep.)/%", "obj_ch2_scene32_slash_Step_0_gml_530_0");
		c_talk_wait();
		c_wait(210);
		c_sel(kr);
		c_sprite(spr_cutscene_32_kris_couch_sleep);
		c_soundplay(snd_wing);
		c_setxy(449, 175);
		c_shakeobj();
		c_var_instance(id, "susie_snore", 3);
		c_var_lerp_instance(bgdim, "image_alpha", 0, 1, 300);
		c_var_lerp_instance(chairdim, "image_alpha", 0, 1, 300);
		c_wait(330);
		c_var_instance(id, "susie_snore", 5);
		c_sel(to);
		c_sprite(spr_cutscene_32_toriel_distressed);
		c_setxy(141, 114);
		c_imageindex(0);
		c_imagespeed(0);
		c_var_instance(id, "disable_face", true);
		c_speaker("toriel");
		c_msgsetloc(0, "* Officer...? Officer...?/%", "obj_ch2_scene32_slash_Step_0_gml_557_0");
		c_talk_wait();
		c_panspeed_wait(-2, 0, 120);
		c_wait(30);
		c_var_instance(id, "disable_face", true);
		c_speaker("toriel");
		c_msgsetloc(0, "* Thank goodness^1, I finally got through.../", "obj_ch2_scene32_slash_Step_0_gml_567_0");
		c_msgnextloc("* I thought I saw someone prowling around outside.../", "obj_ch2_scene32_slash_Step_0_gml_568_0");
		c_msgnextloc("* And when I checked our car--/", "obj_ch2_scene32_slash_Step_0_gml_569_0");
		c_msgnextloc("* The tires..^1. looked like they'd been \\cRslashed\\cW./", "obj_ch2_scene32_slash_Step_0_gml_570_0");
		c_msgnextloc("* Officer^1, if you could please come over.../", "obj_ch2_scene32_slash_Step_0_gml_571_0");
		c_msgnextloc("* You will? Soon? Thank you.../%", "obj_ch2_scene32_slash_Step_0_gml_572_0");
		c_talk_wait();
		c_autowalk(0);
		c_sprite(spr_cutscene_32_toriel_pj_walk_down);
		c_wait(30);
		c_imagespeed(0.25);
		c_walk_wait("d", 2, 10);
		c_autodepth(0);
		c_depth(98200);
		c_sprite(spr_cutscene_32_toriel_pj_walk_right);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walkdirect(444, 125, 100);
		c_panspeed(2, 0, 120);
		c_wait(100);
		c_halt();
		c_wait(30);
		c_sprite(spr_cutscene_32_toriel_pj_walk_down);
		c_imageindex(0);
		c_imagespeed(0);
		c_wait(40);
		c_speaker("toriel");
		c_msgsetloc(0, "\\E1* ... they're already asleep.../%", "obj_ch2_scene32_slash_Step_0_gml_649_0");
		c_talk_wait();
		c_wait(30);
		c_sprite(spr_cutscene_32_toriel_pj_walk_up);
		c_imageindex(0);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk_wait("u", 2, 10);
		c_wait(10);
		c_visible(0);
		c_var_instance(torread, "visible", 1);
		c_wait(60);
		c_sel(su);
		c_autodepth(0);
		c_depth(4950);
		c_wait(120);
	}
	pamt = 30;
	pamtb = 30;
	if (debug_skip == 1)
	{
		pamt = 2;
		pamtb = 10;
		camerax_set(320);
	}
	var object_dim = debug_skip ? pamt : (pamt * 2);
	c_var_instance(id, "align_susie", true);
	c_var_lerp_instance(tv, "image_alpha", 1, 0, object_dim);
	c_var_lerp_instance(torread, "image_alpha", 1, 0, object_dim);
	c_var_lerp_instance(torsleep, "image_alpha", 0, 1, object_dim);
	c_var_lerp_instance(bgdark, "image_alpha", 0, 1, object_dim);
	c_var_lerp_instance(darkcouch, "image_alpha", 0, 1, object_dim);
	c_var_lerp_instance(krissleep, "image_alpha", 0, 1, object_dim);
	c_var_lerp_instance(susleep, "image_alpha", 0, 1, object_dim);
	c_var_lerp_instance(su_actor, "image_alpha", 1, 0, object_dim);
	c_var_instance(id, "hide_border", true);
	c_wait(object_dim);
	c_var_instance(id, "removefg", true);
	c_wait(pamt * 10);
	c_sel(kr);
	c_autowalk(0);
	c_wait(1);
	c_var_instance(krissleep, "visible", 0);
	c_setxy(427, 167);
	c_sprite(spr_cutscene_32_kris_couch_soul_cushion);
	c_imageindex(0);
	c_imagespeed(0.125);
	c_wait(32);
	c_imagespeed(0);
	c_imageindex(4);
	c_wait(180);
	c_imageindex(5);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(45);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(45);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(30);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(20);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(10);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(5);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(4);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(3);
	repeat (5)
	{
		c_soundplay(snd_bump);
		c_shakeobj();
		c_wait(2);
	}
	c_imageindex(15);
	c_walkdirect(430, 167, 2);
	c_soundplay(snd_grab);
	c_instance(460, 177, 370);
	c_wait(45);
	c_imagespeed(0);
	c_imageindex(15);
	c_wait(90);
	c_imageindex(17);
	c_imagespeed(0.5);
	c_wait(2);
	c_soundplay(snd_heavyswing);
	c_wait(2);
	c_shakeobj();
	c_soundplay(snd_bump);
	c_wait(8);
	c_imageindex(23);
	c_imagespeed(0);
	c_wait(120);
	c_imageindex(0);
	c_imagespeed(0);
	c_sprite(spr_cutscene_32_kris_backwalk_right);
	c_setxy(470, 165);
	c_shakestep(0, -5);
	c_wait(pamt * 3);
	c_fadeout(3);
	c_wait(10);
	c_var_instance(id, "show_door_open", true);
	c_sprite(spr_cutscene_32_kris_touch_door);
	c_setxy(573, 140);
	c_fadein(3);
	c_soundplay(snd_step2);
	c_wait(60);
	c_fadeout(3);
	c_wait(10);
	c_sprite(spr_cutscene_32_kris_touch_tv);
	c_imageindex(1);
	c_fadein(3);
	c_var_instance(tvstatic2, "image_alpha", 1);
	c_setxy(495, 123);
	c_soundplay(snd_step1);
	c_wait(60);
	c_fadeout(3);
	c_wait(10);
	c_sprite(spr_cutscene_32_kris_scarewalk_left);
	c_flip("x");
	c_fadein(3);
	c_setxy(527, 155);
	c_soundplay(snd_step2);
	c_wait(60);
	c_flip("x");
	c_wait(40);
	c_imagespeed(0.1);
	c_walkdirect_wait(484, 140, 30);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait(30);
	c_visible(0);
	c_var_instance(fountainkris, "active", 1);
	c_var_instance(fountainkris, "x", 478);
	c_var_instance(fountainkris, "y", 118);
	c_wait(160);
	c_var_lerp_instance(susleep, "image_blend", 16777215, 0, 5);
	c_var_lerp_instance(darkcouch, "image_blend", 16777215, 0, 5);
	c_var_lerp_instance(torsleep_flash, "image_alpha", 0, 1, 5);
	c_var_lerp_instance(room_flash, "image_alpha", 0, 0.9, 5);
	c_wait(170);
	c_var_lerp_instance(susleep, "image_blend", 0, 16777215, 5);
	c_var_lerp_instance(darkcouch, "image_blend", 0, 16777215, 5);
	c_var_lerp_instance(torsleep_flash, "image_alpha", 1, 0, 5);
	c_var_lerp_instance(room_flash, "image_alpha", 0.9, 0, 5);
	c_wait(240);
	c_wait(10);
	c_var_instance(fountainkris, "drawkris", 0);
	c_visible(1);
	c_setxy(468, 148);
	c_shakestep(-10, 8);
	c_wait(30);
	c_shakestep(-4, 8);
	c_wait(30);
	c_sprite(spr_cutscene_32_kris_couch_soul_cushion);
	c_setxy(427, 167);
	c_imageindex(5);
	c_shakeobj();
	c_soundplay(snd_step1);
	c_wait(60);
	c_imageindex(6);
	c_wait(5);
	c_imageindex(8);
	c_wait(60);
	c_imageindex(9);
	c_wait(5);
	c_imageindex(10);
	c_wait(5);
	c_imageindex(11);
	c_wait(5);
	c_imageindex(12);
	c_wait(60);
	c_imageindex(13);
	c_wait(5);
	c_imageindex(14);
	c_wait(5);
	c_imageindex(3);
	c_wait(5);
	c_imageindex(2);
	c_wait(5);
	c_imageindex(1);
	c_wait(120);
	c_var_instance(tvstatic, "depth", 5);
	c_var_lerp_instance(tvstatic, "image_alpha", 0, 1, 180);
	c_wait(240);
	if (os_type == os_ps4 || os_type == os_ps5)
		c_var_instance(id, "end_game", true);
	c_var_lerp_instance(tvsmile, "image_alpha", 0, 1, 180);
	c_var_instance(id, "fade_out_deep", true);
	c_mus2("initloop", "tv_noise.ogg", 0);
	c_mus2("volume", 0, 0);
	c_mus2("volume", 1, 180);
	c_wait(360);
	c_var_instance(tvstatic, "image_alpha", 0);
	c_var_instance(tvsmile, "image_alpha", 0);
	c_var_instance(id, "return_title", true);
}
if (fade_out_deep)
{
	fade_out_deep = false;
	if (i_ex(obj_kris_fountain))
	{
		with (obj_kris_fountain)
		{
			if (fountain_sound != -4)
				audio_sound_gain(fountain_sound, 0, 3000);
		}
	}
}
if (return_title)
{
	credits_timer++;
	if (credits_timer == 1)
		snd_free_all();
	if (credits_timer == 180)
	{
		if (i_ex(obj_kris_fountain))
			instance_destroy(obj_kris_fountain);
		room_goto(room_ed);
	}
}
if (removefg == true)
{
	removefg = false;
	if (layer_exists("Compatibility_Tiles_Depth_10000"))
		layer_destroy("Compatibility_Tiles_Depth_10000");
}
if (con == 40)
	con = 49;
if (con == 50 && !d_ex())
{
	con = 60;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.interact = 0;
	global.facing = 0;
}
if (disable_face)
{
	disable_face = false;
	global.fc = 0;
}
if (enable_face)
{
	enable_face = false;
	global.fc = 1;
}
if (footsteps)
{
	footsteps = false;
	var steps = snd_play(snd_step1);
	audio_sound_gain(steps, footsteps_volume, 0);
	alarm[1] = 30;
}
if (susie_snore > 0)
{
	if (susie_snore == 1)
	{
		snore = snd_loop(snd_susie_snore);
		susie_snore = 2;
	}
	if (susie_snore == 3)
	{
		snd_volume(snore, 0, 150);
		susie_snore = 4;
	}
	if (susie_snore == 5)
	{
		snd_stop(snore);
		susie_snore = 0;
	}
}
if (show_door_open)
{
	show_door_open = false;
	var door_open = scr_marker(588, 98, spr_cutscene_32_door_open);
	with (door_open)
	{
		image_index = 1;
		depth = 4900000;
	}
}
if (align_susie)
{
	align_susie = false;
	susleep.image_index = su_actor.image_index;
}
if (end_game)
{
	end_game = false;
	if (global.flag[918] == 0)
	{
		with (obj_event_manager)
			trigger_event((0 << 0), (2 << 0));
	}
	with (obj_event_manager)
		trigger_event((2 << 0), (1 << 0));
	_remfilechoice = global.filechoice;
	global.filechoice += 3;
	scr_save();
	global.filechoice = _remfilechoice;
}
