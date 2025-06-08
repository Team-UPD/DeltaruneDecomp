if (room == room_town_krisyard)
{
	if (con == 1)
	{
		global.interact = 1;
		global.facing = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		kr_actor.x = 160;
		kr_actor.y = 164;
		kr_actor.sprite_index = spr_krisd;
		tor = 1;
		tor_actor = instance_create(192, 238, obj_actor);
		scr_actor_setup(tor, tor_actor, "toriel");
		tor_actor.sprite_index = spr_toriel_l;
		car = 2;
		car_actor = instance_create(130, 240, obj_actor);
		scr_actor_setup(car, car_actor, "car");
		car_actor.sprite_index = spr_torcar_d;
		c_wait(30);
		c_sel(1);
		c_facing("u");
		c_speaker("toriel");
		c_fe(0);
		c_msgside("top");
		c_msgsetloc(0, "* Well^1, shall we go?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_35_0");
		c_talk_wait();
		c_sel(0);
		c_pannable(1);
		c_panspeed(0, 2, 25);
		c_walkdirect_wait(115, 249, 40);
		c_walk("r", 2, 20);
		c_sel(1);
		c_walk_wait("l", 2, 20);
		c_wait(15);
		c_visible(0);
		c_sel(0);
		c_visible(0);
		c_sel(2);
		c_walk("d", 5, 99);
		c_panspeed(0, 1, 999);
		c_fadeout(50);
		c_wait(70);
		con = 2;
	}
	if (con == 2 && !instance_exists(obj_cutscene_master))
	{
		if (global.plot < 2)
			global.plot = 2;
		instance_create(0, 0, obj_persistentfadein);
		room_goto(room_alphysclass);
	}
}
if (room == room_schoollobby)
{
	if (con == 1)
	{
		global.interact = 1;
		global.facing = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		kr_actor.sprite_index = spr_krisd;
		kr_actor.x = 109;
		kr_actor.y = 193;
		su = actor_count + 1;
		su_actor = instance_create(x, y, obj_actor);
		scr_actor_setup(su, su_actor, "susie");
		su_actor.sprite_index = spr_cutscene_03a_susie_leaning_down;
		su_actor.x = 237;
		su_actor.y = 183;
		su_actor.specialsprite[0] = spr_cutscene_03a_susie_kris_shake;
		su_actor.specialsprite[1] = spr_cutscene_03a_susie_kris_tug;
		c_sel(0);
		c_walk_wait("d", 1, 10);
		c_wait(30);
		c_pannable(1);
		c_panspeed_wait(1, 0, 50);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "\\EQ* ..^1. well LOOK who it is. The school zombie./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_101_0");
		c_msgnextloc("\\E2* You were sleeping like a corpse all class./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_102_0");
		c_msgnextloc("\\EA* Heh^1, what's the matter?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_103_0");
		c_msgnextloc("\\E2* Had trouble going beddy-bye last night?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_104_0");
		c_talk_wait();
		c_sel(1);
		c_walk_wait("d", 2, 10);
		c_facing("r");
		c_wait(20);
		c_speaker("susie");
		c_msgsetloc(0, "\\EQ* Heh.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_111_0");
		c_talk_wait();
		c_walkdirect_wait(127, 198, 12);
		c_autowalk(0);
		c_specialsprite(0);
		c_imagespeed(0.25);
		c_sel(0);
		c_visible(0);
		c_sel(1);
		c_soundplay(snd_wing);
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* ME TOO^1, KRIS!!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_122_0");
		c_msgnextloc("\\E5* Like I could SLEEP after yesterday!?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_123_0");
		c_msgnextloc("\\EP* Just waiting for today felt like..^1. years!!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_124_0");
		c_msgnextloc("\\EO* Did..^1. all that stuff really happen!?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_125_0");
		c_msgnextloc("\\EO* Lancer^1, Ralsei^1, everyone..^1. are they still.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_126_0");
		c_talk_wait();
		c_imagespeed(0);
		c_speaker("susie");
		c_msgsetloc(0, "\\EQ* ..^1. Look./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_131_0");
		c_msgnextloc("\\E2* You've been wondering the same thing^1, right?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_132_0");
		c_talk_wait();
		c_sel(0);
		c_visible(0);
		c_sel(1);
		c_setxy(112, 199);
		c_specialsprite(1);
		c_soundplay(snd_escaped);
		c_imagespeed(0.25);
		c_walk("r", 6, 90);
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* C'MON ALREADY!!!/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_143_0");
		c_talk();
		c_wait(30);
		c_fadeout(30);
		c_waittalk();
		c_wait(30);
		con = 2;
	}
	if (con == 2 && !instance_exists(obj_cutscene_master))
	{
		global.interact = 1;
		global.plot = 6;
		con = 3;
		instance_destroy();
		instance_create(0, 0, obj_persistentfadein);
		room_goto(room_schooldoor);
	}
	if (con == 50)
	{
		with (toriel)
		{
			if (global.flag[20] == 1)
				sprite_index = spr_toriel_ut;
			else
				sprite_index = spr_toriel_l;
		}
	}
	if (con == 50 && obj_mainchara.y >= 150 && global.interact == 0)
	{
		global.facing = 0;
		global.interact = 1;
		if (global.flag[303] == 0)
		{
			scr_speaker("toriel");
			msgsetloc(0, "\\E0* ..^1. and how is Kris doing?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_183_0");
			scr_anyface_next("alphys", 0);
			msgnextloc("\\E0* Th-they're great^1, Tori!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_185_0");
			msgnextloc("\\E7* One of my favorite students. A real star!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_186_0");
			scr_anyface_next("toriel", 9);
			msgnextloc("\\E9* Oh^1, how wonderful!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_188_0");
			msgnextloc("\\E1* ..^1. They have not been up to anything strange?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_189_0");
			scr_anyface_next("alphys", 7);
			msgnextloc("\\E7* Haha^1, no^1, they've been.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_191_0");
			con = 51;
			global.flag[303] = 1;
		}
		else
		{
			con = 55;
			scr_speaker("none");
			msgsetloc(0, "* (Can't let mom find out you're balancing a giant trash orb!)/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_199_0");
		}
		d = d_make();
		d.side = 0;
	}
	if (con == 51 && !d_ex())
	{
		with (alphys)
			sprite_index = spr_alphysu;
		con = 52;
		alarm[4] = 50;
	}
	if (con == 53)
	{
		with (alphys)
			sprite_index = spr_alphysr;
		scr_speaker("alphys");
		msgsetloc(0, "\\E6* They're normal./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_222_0");
		scr_anyface_next("toriel", 0);
		msgnextloc("\\E0* Well^1, that is relieving. I have just been.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_224_0");
		msgnextloc("\\E1* A little concerned lately./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_225_0");
		scr_anyface_next("alphys", 10);
		msgnextloc("* (Just lately?)/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_227_0");
		scr_anyface_next("toriel", 1);
		msgnextloc("\\E1* ..^1. You take it easy too^1, Alphys./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_230_0");
		msgnextloc("\\E9* I am always cheering you on^1, alright?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_231_0");
		scr_anyface_next("alphys", 11);
		msgnextloc("\\EB* Uhhh..^1. th..^1. th..^1. th..^1. thanks!!/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_233_0");
		d = d_make();
		d.side = 0;
		con = 55;
	}
	if (con == 55 && !d_ex())
	{
		obj_mainchara.y = 148;
		global.interact = 0;
		global.facing = 2;
		con = 50;
	}
}
if (room == room_schooldoor)
{
	if (con == 1)
	{
		global.interact = 1;
		global.facing = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		kr_actor.sprite_index = spr_krisu;
		kr_actor.x = 285;
		kr_actor.y = 252;
		su = actor_count + 1;
		su_actor = instance_create(x, y, obj_actor);
		scr_actor_setup(su, su_actor, "susie");
		su_actor.sprite_index = spr_susie_walk_up_lw;
		su_actor.x = 313;
		su_actor.y = 246;
		su_actor.specialsprite[0] = spr_cutscene_03b_susie_lunchbox;
		su_actor.specialsprite[1] = spr_cutscene_03b_susie_shock_lw;
		su_actor.specialsprite[1] = spr_cutscene_03b_susie_shock_lw;
		no = actor_count + 2;
		no_actor = instance_create(x, y, obj_actor);
		scr_actor_setup(no, no_actor, "noelle");
		no_actor.sprite_index = spr_noelle_walk_up_lw;
		no_actor.x = su_actor.x;
		no_actor.y = 252;
		no_actor.specialsprite[0] = spr_cutscene_03b_noelle_blush;
		no_actor.specialsprite[1] = spr_cutscene_03b_noelle_face_left;
		c_mus2("initloop", "creepydoor.ogg", 0);
		c_sel(kr);
		c_walk("u", 2, 60);
		c_sel(su);
		c_walk("u", 2, 60);
		c_wait(100);
		c_speaker("susie");
		c_speaker("susie");
		c_msgsetloc(0, "\\E3* Alright^1, Kris. This is it. Moment of truth./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_291_0");
		c_msgnextloc("\\E0* Everything we've been waiting for is just behind this.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_292_0");
		c_msgnextloc("\\E1* .../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_293_0");
		c_msgnextloc("\\EK* If we^1, uh^1, open this and there's nothing inside.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_294_0");
		c_msgnextloc("\\E3* Will^1, uh^1, we still be.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_295_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("r");
		c_sel(su);
		c_facing("susieunhappy");
		c_facing("l");
		c_wait(30);
		c_walk("u", 5, 8);
		c_msgsetloc(0, "\\EH* Screw it^1! Let's just open it already!!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_304_0");
		c_facenext("noelle", 3);
		c_msgnextloc("\\E3* Umm^1, S..^1. Susie...?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_306_0");
		c_talk();
		c_wait_box(1);
		c_mus("free_all");
		c_waittalk();
		c_sel(su);
		c_facing("susie");
		c_sprite(spr_cutscene_03b_susie_shock_lw);
		c_shakeobj();
		c_sel(kr);
		c_facing("d");
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("u", 4, 10);
		c_imagespeed(0);
		c_msgside("top");
		c_fe(7);
		c_speaker("susie");
		c_msgsetloc(0, "\\E7* YEAHHHH????/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_323_0");
		c_talk();
		c_wait(10);
		c_waittalk();
		c_mus("free_all");
		c_mus2("initloop", "noelle_school.ogg", 0);
		c_sel(no);
		c_walk_wait("u", 3, 40);
		c_wait(15);
		c_sel(su);
		c_facing("d");
		c_speaker("susie");
		c_msgsetloc(0, "\\E7* Noelle..^1. hey.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_335_0");
		c_msgnextloc("\\E7* What..^1. the HELL..^1. are you doing here...?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_336_0");
		c_facenext("noelle", 4);
		c_msgnextloc("\\E4* Umm..^1. s-sorry to bother you^1, but^1, ummm^1, I.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_338_0");
		c_msgnextloc("\\E3* Well^1, I just..^1. Berdly and I were going to the Library to.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_339_0");
		c_msgnextloc("\\E6* Do some r-research for our group projects^1, and.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_340_0");
		c_msgnextloc("\\EQ* If it's OK^1, um..^1. would you..^1. want to come too...?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_341_0");
		c_talk_wait();
		c_wait(45);
		c_sel(no);
		c_sprite(spr_cutscene_03b_noelle_face_left);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* Oh^1, Kris^1, you can come too I mean!/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_348_0");
		c_talk_wait();
		c_facing("u");
		c_sel(su);
		c_walk_wait("r", 2, 15);
		c_wait(15);
		c_speaker("susie");
		c_msgsetloc(0, "\\E7* Uhhhhhhhhhhh..^1. I mean.../", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_355_0");
		c_msgnextloc("\\EK* We're like^1, uhhh..^1. busy^1, with^1, uh.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_356_0");
		c_talk_wait();
		c_facing("susieunhappy");
		c_walk_wait("l", 5, 6);
		c_sel(kr);
		c_autowalk(1);
		c_facing("r");
		c_sel(su);
		c_facing("susie");
		c_msc(1002);
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* O-oh...? Umm^1, well..^1. er..^1. that sounds^1, um^1, just.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_368_0");
		c_talk_wait();
		c_sel(no);
		c_facing("d");
		c_speaker("noelle");
		c_msgsetloc(0, "\\E4* Have fun^1, you two^1! I'll^1, um^1, be at the Library!/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_373_0");
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E9* (Kris^1, if you could bring her by later...)/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_378_0");
		c_msgnextloc("\\EQ* (It would mean a lot to me...!)/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_379_0");
		c_talk_wait();
		if (noelle_chalk == true)
		{
			c_wait(30);
			c_facing("l");
			c_speaker("noelle");
			c_msgsetloc(0, "\\EQ* Ummm..^1. actually^1, wait..^1. wait a second!!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_386_0");
			c_msgnextloc("\\E8* Susie^1, I^1, um..^1. I..^1. have something for you!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_387_0");
			c_facenext("susie", 6);
			c_msgnextloc("\\E6* ???/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_389_0");
			c_talk_wait();
			c_walk("u", 5, 8);
			c_wait(8);
			c_walk("d", 5, 90);
			c_imagespeed(0.5);
			c_sel(su);
			c_autowalk(0);
			c_sprite(spr_cutscene_03b_susie_lunchbox);
			c_speaker("noelle");
			c_msgsetloc(0, "\\EM* OK see you bye!!!/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_399_0");
			c_talk_wait();
			c_wait(30);
			c_speaker("susie");
			c_msgsetloc(0, "\\EE* ..?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_403_0");
			c_msgnextloc("\\E6* It's..^1. a lunchbox...?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_404_0");
			c_talk_wait();
			c_imageindex(1);
			c_wait(30);
			c_imageindex(2);
			c_speaker("susie");
			c_msgsetloc(0, "\\EB* ..^1. full of CHALK?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_410_0");
			c_msgnextloc("\\EF* ...!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_411_0");
			c_msgnextloc("\\ER* SHE HAD CHALK THE WHOLE TIME!?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_412_0");
			c_msgnextloc("\\E5* AND DIDN'T GIVE IT TO ALPHYS!?!?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_413_0");
			c_msgnextloc("\\EH* WHAT THE HELL^1, KRIS!?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_414_0");
			c_talk_wait();
			c_autowalk(1);
			c_facing("susieunhappy");
			c_facing("l");
			c_sel(kr);
			c_facing("r");
			c_msgsetloc(0, "\\EM* Here^1, YOU hold onto this./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_421_0");
			c_facenext("none", 0);
			c_msgnextloc("* (You got the Chalk.)/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_423_0");
			c_talk_wait();
		}
		else
		{
			c_wait(5);
			c_sel(no);
			c_walk_wait("d", 3, 40);
			c_wait(30);
		}
		c_sel(kr);
		c_autowalk(1);
		c_facing("d");
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_03b_susie_blink);
		c_imagespeed(0.2);
		c_wait(30);
		c_sel(su);
		c_facing("susieunhappy");
		c_autowalk(1);
		c_walk_wait("l", 5, 2);
		c_autowalk(0);
		c_sprite(spr_cutscene_03a_susie_kris_shake);
		c_imagespeed(0.25);
		c_sel(kr);
		c_visible(0);
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* Wait^1, Kris^1! What the HELL was that!??!?!/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_445_0");
		c_msgnextloc("\\EN* Why would NOELLE?? Ask ME??/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_446_0");
		c_msgnextloc("\\EP* To do HOMEWORK?? With HER?!??/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_447_0");
		c_msgnextloc("\\EA* Deathwish much? Does she WANNA fail?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_448_0");
		c_msgnextloc("\\E0* .../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_449_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(1);
		c_walk("r", 2, 5);
		c_sel(kr);
		c_visible(1);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "\\EB* ..^1. wait a second. WAIT a second./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_458_0");
		c_msgnextloc("\\EC* Kris^1, did you notice how nervous she was...?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_459_0");
		c_msgnextloc("\\E6* And like..^1. blushing and stuff?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_460_0");
		c_msgnextloc("\\EM* Kris^1, you don't think..^1. she..^1. uh.../%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_461_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_cutscene_03b_susie_shock_lw);
		c_wait(5);
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* She's onto our secret identities!?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_467_0");
		c_talk_wait();
		c_facing("u");
		c_speaker("susie");
		c_msgsetloc(0, "\\E2* Y'know. This..^1. Dark World stuff./%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_471_0");
		c_talk_wait();
		c_facing("l");
		c_speaker("susie");
		c_msgsetloc(0, "\\E3* Damn..^1. We gotta keep this under wraps^1, Kris./", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_475_0");
		c_msgnextloc("\\E2* This is OUR thing^1, y'know?/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_476_0");
		c_talk_wait();
		c_facing("u");
		c_sel(kr);
		c_facing("u");
		c_mus2("volume", 0, 30);
		c_speaker("susie");
		c_msgsetloc(0, "\\EA* Anyway^1, enough waiting already^1, right!?/", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_483_0");
		c_msgnextloc("\\E2* Let's go!/%", "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_484_0");
		c_talk_wait();
		con = 2;
	}
	if (con == 2 && !instance_exists(obj_cutscene_master))
	{
		with (obj_actor)
			visible = 0;
		instance_create(0, 0, obj_dw_transition);
		if (global.plot < 7)
			global.plot = 7;
		con = 3;
		scr_losechar();
		scr_getchar(2);
		if (noelle_chalk == true)
			scr_itemget(23);
		instance_destroy();
	}
}
