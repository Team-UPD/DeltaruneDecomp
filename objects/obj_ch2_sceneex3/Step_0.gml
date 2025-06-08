if (obj_mainchara.x < 550 && con == -1)
{
	con = 2;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
}
if (con == 2)
{
	con = 3;
	c_sel(su);
	c_walk("l", 4, 15);
	c_facing("susieunhappy");
	c_delayfacing(16, "d");
	c_autodepth(0);
	var su_depth = (su_actor.y < ra_actor.y) ? 98000 : 95000;
	c_depth(su_depth);
	c_pannable(1);
	c_panspeed(-4, 0, 55);
	c_sel(kr);
	c_walk("l", 4, 55);
	c_delayfacing(56, "r");
	c_sel(ra);
	var ral_xpos = (ra_actor.x > 645) ? 70 : 60;
	c_walk_wait("l", 4, ral_xpos);
	c_facing("r");
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../", "obj_ch2_sceneex3_slash_Step_0_gml_48_0");
	c_msgnextloc("\\E1* Hey so..^1. are we seriously.../%", "obj_ch2_sceneex3_slash_Step_0_gml_49_0");
	c_talk_wait();
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* NOT gonna talk about any of that?/", "obj_ch2_sceneex3_slash_Step_0_gml_57_0");
	c_msgnextloc("\\EC* That was god damn weird./%", "obj_ch2_sceneex3_slash_Step_0_gml_58_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Puppets..^1. strings..^1. hands.../", "obj_ch2_sceneex3_slash_Step_0_gml_65_0");
	c_msgnextloc("\\E1* What the hell does any of that mean?/", "obj_ch2_sceneex3_slash_Step_0_gml_66_0");
	c_msgnextloc("\\ED* And the way he just..^1. broke./%", "obj_ch2_sceneex3_slash_Step_0_gml_67_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E6* I..^1. don't think it meant anything^1, Susie./", "obj_ch2_sceneex3_slash_Step_0_gml_74_0");
	c_msgnextloc("\\E4* It seems like it was just a corrupted program./%", "obj_ch2_sceneex3_slash_Step_0_gml_75_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("d");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EI* He turned into our ally^1, so let's just accept it./%", "obj_ch2_sceneex3_slash_Step_0_gml_83_0");
	c_talk_wait();
	c_sel(su);
	c_autodepth(1);
	c_walkdirect(380, kr_actor.y - 14, 30);
	c_delayfacing(31, "l");
	c_wait(20);
	c_sel(ra);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk_wait("u", 4, 10);
	c_imagespeed(0);
	c_sel(kr);
	c_facing("r");
	c_wait(30);
	c_msc(1129);
	c_talk_wait();
}
if (con == 10)
{
	con = 30;
	global.flag[324] = 1;
	c_sel(kr);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_sceneex3_slash_Step_0_gml_116_0");
	c_talk_wait();
	c_sel(su);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* (If you say it all strained like that^1,)/", "obj_ch2_sceneex3_slash_Step_0_gml_124_0");
	c_msgnextloc("\\E1* (..^1. I'm not gonna think you're OK...)/", "obj_ch2_sceneex3_slash_Step_0_gml_125_0");
	c_msgnextloc("\\E0* (...)/%", "obj_ch2_sceneex3_slash_Step_0_gml_126_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* (Hey Ralsei^1, you think Kris is OK?)/%", "obj_ch2_sceneex3_slash_Step_0_gml_133_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("l");
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E4* (Hmm..^1. well^1, they seem a bit shocked^1, but...)/", "obj_ch2_sceneex3_slash_Step_0_gml_144_0");
	c_msgnextloc("\\EI* (Kris doesn't want us to worry^1, so...)/", "obj_ch2_sceneex3_slash_Step_0_gml_145_0");
	c_msgnextloc("\\EQ* (Let's not push them for now...)/%", "obj_ch2_sceneex3_slash_Step_0_gml_146_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(1);
	c_walkdirect_wait(284, 168, 31);
	c_walkdirect_wait(263, kr_actor.y - 7, 9);
	c_facing("r");
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Kris^1, I'll make some cake for you later^1, OK?/", "obj_ch2_sceneex3_slash_Step_0_gml_159_0");
	c_msgnextloc("\\EQ* I could even make it chocolate-flavored^1,/", "obj_ch2_sceneex3_slash_Step_0_gml_160_0");
	c_msgnextloc("\\EQ* Butterscotch^1, cinnamon..^1. whatever you want./%", "obj_ch2_sceneex3_slash_Step_0_gml_161_0");
	c_talk_wait();
	c_sel(su);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_sceneex3_slash_Step_0_gml_169_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Well^1, their stomach's rumbling but the goosebumps aren't gone./%", "obj_ch2_sceneex3_slash_Step_0_gml_176_0");
	c_talk_wait();
	c_sel(ra);
	c_walk_wait("r", 5, 5);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E1* Kris^1, if you're cold^1, you can share my scarf.../", "obj_ch2_sceneex3_slash_Step_0_gml_184_0");
	c_msgnextloc("\\EJ* Huh? Or^1, um^1, sure^1, Susie could...?/%", "obj_ch2_sceneex3_slash_Step_0_gml_185_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("r");
	c_sel(su);
	c_sprite(spr_susie_shock);
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* What? No^1, hell if I'm giving you MY jacket!/%", "obj_ch2_sceneex3_slash_Step_0_gml_196_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_susie_walk_back_arm);
	c_flip("x");
	c_imageindex(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EY* You make ME cold^1, I'm burning you knuckleheads for warmth./", "obj_ch2_sceneex3_slash_Step_0_gml_206_0");
	c_facenext("ralsei", "U");
	c_msgnextloc("\\EU* Susie!!!/", "obj_ch2_sceneex3_slash_Step_0_gml_208_0");
	c_facenext("susie", 2);
	c_msgnextloc("\\E2* Too late^1, already imagining you guys as idiot-scented candles./", "obj_ch2_sceneex3_slash_Step_0_gml_210_0");
	c_msgnextloc("\\EL* (..^1. Heh^1, that got Kris smiling. Let's go.)/%", "obj_ch2_sceneex3_slash_Step_0_gml_211_0");
	c_talk_wait();
	c_sel(su);
	c_flip("x");
	c_autowalk(1);
	c_facing("susie");
	c_facing("l");
	c_sel(ra);
	c_autowalk(1);
	c_walk_wait("u", 4, 5);
	c_walk_wait("r", 4, 40);
	c_walk_wait("d", 4, 5);
	c_facing("l");
	c_wait(15);
}
if (con == 20)
{
	con = 30;
	global.flag[324] = 2;
	c_sel(kr);
	c_facing("u");
	c_sel(ra);
	c_autowalk(1);
	c_walkdirect_wait(264, 168, 31);
	c_walkdirect_wait(253, kr_actor.y - 10, 9);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EQ* K..^1. Kris? Are you OK? You're yelling.../%", "obj_ch2_sceneex3_slash_Step_0_gml_245_0");
	c_talk_wait();
	if (global.flag[325] == 1)
	{
		c_wait(15);
		c_sel(ra);
		c_autodepth(0);
		c_depth(0);
		c_walk_wait("r", 4, 15);
		c_sel(ra);
		c_autowalk(0);
		c_sprite(spr_ralsei_hug_hatless);
		c_addxy(0, 6);
		c_imagespeed(0.15);
		c_wait(15);
		c_imagespeed(0);
		c_wait(75);
		c_sprite(spr_ralsei_hug_stop_hatless);
		c_wait(15);
		c_imagespeed(0);
		c_wait(15);
		c_autowalk(1);
		c_facing("r");
		c_addxy(0, -6);
		c_autowalk(0);
		c_walk("l", 4, 10);
		c_imagespeed(0.25);
		c_wait(11);
		c_autowalk(1);
		c_autodepth(1);
		c_facing("r");
	}
	else
	{
		c_sel(ra);
		c_walk("r", 4, 5);
	}
	c_sel(kr);
	c_facing("l");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EB* There^1, there..^1. everything's alright./", "obj_ch2_sceneex3_slash_Step_0_gml_304_0");
	c_msgnextloc("\\EQ* Don't think about what happened too hard^1, OK?/", "obj_ch2_sceneex3_slash_Step_0_gml_305_0");
	c_msgnextloc("\\E0* Just take some deep breaths and think about.../", "obj_ch2_sceneex3_slash_Step_0_gml_306_0");
	c_msgnextloc("\\EQ* Something you like. Something nice..^1. something soft./", "obj_ch2_sceneex3_slash_Step_0_gml_307_0");
	c_msgnextloc("\\E2* I'll be right next to you until you feel better^1, Kris./", "obj_ch2_sceneex3_slash_Step_0_gml_308_0");
	c_msgnextloc("\\E1* .../%", "obj_ch2_sceneex3_slash_Step_0_gml_309_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../", "obj_ch2_sceneex3_slash_Step_0_gml_326_0");
	c_msgnextloc("\\E1* Guess Ralsei's right^1, Kris./", "obj_ch2_sceneex3_slash_Step_0_gml_327_0");
	c_msgnextloc("\\E0* Whatever just happened..^1. I guess.../", "obj_ch2_sceneex3_slash_Step_0_gml_328_0");
	c_msgnextloc("\\E1* Maybe it didn't mean anything./", "obj_ch2_sceneex3_slash_Step_0_gml_329_0");
	c_msgnextloc("\\E0* I dunno why you came here^1, but.../", "obj_ch2_sceneex3_slash_Step_0_gml_330_0");
	c_msgnextloc("\\EY* Let's just be glad you didn't get killed. Heh./", "obj_ch2_sceneex3_slash_Step_0_gml_331_0");
	c_msgnextloc("\\E0* .../", "obj_ch2_sceneex3_slash_Step_0_gml_332_0");
	c_msgnextloc("\\EK* (Just..^1. tell us next time...)/", "obj_ch2_sceneex3_slash_Step_0_gml_333_0");
	c_msgnextloc("\\EY* (You're gonna do something stupid like this^1, OK?)/%", "obj_ch2_sceneex3_slash_Step_0_gml_334_0");
	c_talk_wait();
	if (global.flag[325] == 1)
	{
		c_wait(30);
		c_sel(kr);
		c_facing("r");
		c_wait(5);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* .../", "obj_ch2_sceneex3_slash_Step_0_gml_350_0");
		c_msgnextloc("\\E5* What? No^1, I'M not giving YOU a hug!/", "obj_ch2_sceneex3_slash_Step_0_gml_351_0");
		c_msgnextloc("\\EH* That's what Ralsei's for!^1! He's like a portable teddy bear!/", "obj_ch2_sceneex3_slash_Step_0_gml_352_0");
		c_facenext("ralsei", "J");
		c_msgnextloc("\\EJ* But Susie^1, because you never give out hugs./", "obj_ch2_sceneex3_slash_Step_0_gml_354_0");
		c_msgnextloc("\\EG* That increases their value. It's the law of supply and demand./", "obj_ch2_sceneex3_slash_Step_0_gml_355_0");
		c_facenext("susie", "H");
		c_msgnextloc("\\EH* Well^1, I demand^1, you supply me^1, with^1, uh -/", "obj_ch2_sceneex3_slash_Step_0_gml_357_0");
		c_msgnextloc("\\E5* Ugh^1, enough of you guys!/%", "obj_ch2_sceneex3_slash_Step_0_gml_358_0");
		c_talk_wait();
		c_pannable(1);
		c_panspeed(-5, 0, 20);
		c_sel(su);
		c_autowalk(1);
		c_delaywalk(6, "l", 8, 22);
		c_delaywalk(29, "d", 8, 60);
		c_wait(5);
		c_sel(kr);
		c_facing("d");
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("u", 4, 5);
		c_delaycmd(6, "imagespeed", 0);
		c_sel(ra);
		c_facing("d");
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("u", 4, 5);
		c_delaycmd(6, "imagespeed", 0);
		c_wait(15);
		c_sel(kr);
		c_facing("d");
		c_autowalk(1);
		c_walk("d", 4, 5);
		c_wait(5);
		c_sel(ra);
		c_facing("d");
		c_autowalk(1);
		c_walk("d", 4, 5);
		c_wait(15);
		c_wait(60);
		c_sel(ra);
		c_autowalk(1);
		c_facing("r");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\E2* ..^1. I think everything will be OK^1, Kris./%", "obj_ch2_sceneex3_slash_Step_0_gml_409_0");
		c_talk_wait();
		c_sel(ra);
		c_walk_wait("d", 4, 5);
		c_walk_wait("r", 4, 30);
		c_walk_wait("u", 4, 5);
		c_facing("l");
		c_wait(15);
		c_sel(kr);
		c_autowalk(1);
		c_walk("l", 4, 26);
		c_delaywalk(27, "d", 4, 80);
		c_sel(ra);
		c_delaywalk(5, "l", 4, 44);
		c_delaywalk(50, "d", 4, 80);
		c_wait(130);
	}
	else
	{
		c_sel(ra);
		c_autowalk(1);
		c_walk_wait("u", 4, 5);
		c_walk_wait("r", 4, 50);
		c_walk_wait("d", 4, 5);
		c_facing("l");
		c_wait(15);
	}
}
if (con == 30)
{
	con = 59;
	alarm[0] = 30;
	global.facing = 0;
	c_mus2("volume", 0, 30);
	if (global.flag[324] == 2 && global.flag[325] == 1)
	{
		with (obj_caterpillarchara)
		{
			if (name == "susie")
				instance_destroy();
		}
		with (obj_caterpillarchara)
			scr_caterpillar_interpolate();
	}
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	if (global.flag[324] == 2 && global.flag[325] == 1)
		con = 62;
	else
		con = 0;
}
if (con == 62)
{
	con = 99;
	global.interact = 3;
	global.entrance = 20;
	instance_create(0, 0, obj_persistentfadein);
	room_goto(room_dw_mansion_east_1f_secret);
}
