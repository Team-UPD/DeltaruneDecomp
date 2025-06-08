if (i_ex(desk_marker) && desk_marker.visible == 1)
{
	if (standing == 0)
	{
		if (instance_exists(obj_actor))
		{
			with (obj_actor)
				depth = 110;
		}
	}
	if (standing == 1)
	{
		if (instance_exists(obj_actor))
		{
			with (obj_actor)
			{
				if (global.flag[457] == 1)
				{
					if (name != "noelle" && name != "berdly")
						depth = 0;
				}
				else if (name != "noelle")
				{
					depth = 0;
				}
			}
		}
	}
	if (standing == 2)
	{
		if (instance_exists(obj_actor))
		{
			with (obj_actor)
			{
				if (name != "noelle" && name != "berdly")
					depth = 0;
			}
		}
	}
}
if (con == 1)
{
	con = 2;
	global.interact = 1;
	with (obj_mainchara)
	{
		x = 187;
		y = 121;
		visible = 0;
	}
	cutscene_master = scr_cutscene_make();
	c_msgside("bottom");
	kr = 0;
	kr_actor = instance_create(187, 121, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisu;
	c_sel(kr);
	c_facing("u");
	su = 1;
	su_actor = instance_create(157, 114, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_lw;
	su_actor.specialsprite[0] = spr_cutscene_03a_susie_kris_shake;
	c_sel(su);
	c_facing("u");
	no = 2;
	no_actor = instance_create(201, 67, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_cutscene_28b_noelle_desk_sleep;
	c_sel(no);
	c_autowalk(0);
	c_halt();
	be = 3;
	be_actor = instance_create(166, 68, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_cutscene_28b_berdly_desk_sleep;
	c_sel(be);
	c_autowalk(0);
	c_halt();
	bo_no = 4;
	bo_no_actor = instance_create(177, 100, obj_actor);
	scr_actor_setup(bo_no, bo_no_actor, "books");
	bo_no_actor.sprite_index = spr_cutscene_28b_books_table_noelle;
	c_sel(bo_no);
	c_autowalk(0);
	c_halt();
	bo_be = 5;
	bo_be_actor = instance_create(177, 100, obj_actor);
	scr_actor_setup(bo_be, bo_be_actor, "books");
	bo_be_actor.sprite_index = spr_cutscene_28b_books_table_berdly;
	c_sel(bo_be);
	c_autowalk(0);
	c_halt();
}
if (con == 2)
{
	con = 3;
	c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 30);
	c_wait(60);
	c_var_instance(id, "show_border", true);
	if (scr_sideb_get_phase() >= 2)
	{
		c_wait(60);
		c_soundplay_x(snd_phone, 0.7, 1);
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_wake_left);
		c_wait(30);
		c_soundplay_x(snd_phone, 0.7, 1);
		c_wait(30);
		global.typer = 12;
		global.darkzone = 0;
		c_speaker("noelle");
		c_msgsetloc(0, "\\EF* H-huh..^1. Berdly's..^1. alarm?/", "obj_ch2_scene28b_slash_Step_0_gml_120_0");
		c_msgnextloc("\\E4* A dream...? It was really just a.../%", "obj_ch2_scene28b_slash_Step_0_gml_121_0");
		c_talk_wait();
		c_sprite(spr_cutscene_28b_noelle_desk_shocked);
		c_shakeobj();
		c_wait(60);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* Susie!?/", "obj_ch2_scene28b_slash_Step_0_gml_131_0");
		c_msgnextloc("\\ES* Susie^1! What are you doing here?/", "obj_ch2_scene28b_slash_Step_0_gml_132_0");
		c_facenext("susie", 3);
		c_msgnextloc("\\E3* Uhh.../", "obj_ch2_scene28b_slash_Step_0_gml_134_0");
		c_msgnextloc("\\E2* You invited us to study. Remember?/%", "obj_ch2_scene28b_slash_Step_0_gml_135_0");
		c_talk_wait();
		c_sprite(spr_cutscene_28b_noelle_desk_down);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E4* Oh^1, right^1! I did^1, didn't I^1! Haha!/", "obj_ch2_scene28b_slash_Step_0_gml_142_0");
		c_facenext("susie", 3);
		c_msgnextloc("\\E3* ..^1. uhh^1, you're in a good mood./", "obj_ch2_scene28b_slash_Step_0_gml_144_0");
		c_msgnextloc("\\EL* Did you^1, uh^1, have a good dream?/", "obj_ch2_scene28b_slash_Step_0_gml_145_0");
		c_facenext("noelle", 4);
		c_msgnextloc("\\E4* It was a nightmare./", "obj_ch2_scene28b_slash_Step_0_gml_147_0");
		c_facenext("susie", 6);
		c_msgnextloc("\\E6* Oh./", "obj_ch2_scene28b_slash_Step_0_gml_149_0");
		c_facenext("noelle", "b");
		c_msgnextloc("\\Eb* I'm..^1. just happy I woke up./", "obj_ch2_scene28b_slash_Step_0_gml_151_0_b");
		c_facenext("susie", 12);
		c_msgnextloc("\\EC* .../", "obj_ch2_scene28b_slash_Step_0_gml_153_0");
		c_facenext("noelle", 6);
		c_msgnextloc("\\E6* The..^1. end was nice^1, though./", "obj_ch2_scene28b_slash_Step_0_gml_155_0");
		c_facenext("susie", 7);
		c_msgnextloc("\\E7* What happened?/%", "obj_ch2_scene28b_slash_Step_0_gml_157_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_shocked);
		c_shakeobj();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EM* HAHA^1, w-well^1, umm ---/%", "obj_ch2_scene28b_slash_Step_0_gml_168_0");
		c_talk_wait();
		c_sprite(spr_cutscene_28b_noelle_desk_left);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EO* HAHA HEY^1, Berdly time to get up and go!/%", "obj_ch2_scene28b_slash_Step_0_gml_175_0");
		c_talk_wait();
		c_wait(90);
		c_sprite(spr_cutscene_28b_noelle_desk_left_unhappy);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E5* ..^1. Berdly?/%", "obj_ch2_scene28b_slash_Step_0_gml_184_0");
		c_talk_wait();
		c_wait(90);
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_down);
		c_walk("l", 5, 5);
		c_wait(15);
		c_autowalk(0);
		c_sprite(spr_cutscene_28b_noelle_walk_books_down);
		c_var_instance(id, "standing", 1);
		c_walk("u", 4, 5);
		c_sel(bo_no);
		c_visible(0);
		c_sel(bo_be);
		c_visible(0);
		c_wait(5);
		c_soundplay(snd_wing);
		c_sprite(spr_cutscene_28b_noelle_walk_books_left);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E4* Gosh^1, you've been studying too much^1, Berdly./", "obj_ch2_scene28b_slash_Step_0_gml_208_0");
		c_msgnextloc("\\E0* Honestly^1, you deserve a little rest^1, y'know?/", "obj_ch2_scene28b_slash_Step_0_gml_209_0");
		c_msgnextloc("\\E4* Sweet dreams!/%", "obj_ch2_scene28b_slash_Step_0_gml_210_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_walk_books_right);
		c_imagespeed(0.25);
		c_walk("r", 4, 22);
		c_delaywalk(24, "d", 4, 23);
		c_delaywalk(51, "l", 4, 34);
		c_wait(23);
		c_sprite(spr_cutscene_28b_noelle_walk_books_down);
		c_imagespeed(0.25);
		c_wait(23);
		c_var_instance(desk_marker, "visible", 0);
		c_sprite(spr_cutscene_28b_noelle_walk_books_left);
		c_imagespeed(0.25);
		c_wait(34);
		c_halt();
		c_sprite(spr_cutscene_28b_noelle_walk_books_up);
		c_sel(kr);
		c_facing("d");
		c_sel(su);
		c_facing("d");
		c_msgside("top");
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_head_tilt);
		c_imagespeed(0.1);
		c_wait(24);
		c_imagespeed(0);
		c_imageindex(2);
		c_wait(30);
		c_sel(su);
		c_facing("d");
		c_sel(kr);
		c_facing("d");
		c_wait(30);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Wh..^1. what are you doing?/", "obj_ch2_scene28b_slash_Step_0_gml_271_0");
		c_facenext("noelle", 0);
		c_msgnextloc("\\E0* You don't have a tail^1, do you^1, Susie?/", "obj_ch2_scene28b_slash_Step_0_gml_273_0_b");
		c_facenext("susie", 17);
		c_msgnextloc("\\EH* H-huh!? N-no way^1, of course not!/", "obj_ch2_scene28b_slash_Step_0_gml_275_0");
		c_facenext("noelle", 4);
		c_msgnextloc("\\E4* Really? That's great!/%", "obj_ch2_scene28b_slash_Step_0_gml_277_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_walk_books_down);
		c_imagespeed(0.2);
		c_walk("d", 3, 100);
		c_wait(60);
		c_speaker("susie");
		c_msgsetloc(0, "\\E0* ...That was weird^1, Kris./", "obj_ch2_scene28b_slash_Step_0_gml_289_0");
		c_msgnextloc("\\EC* Somehow^1, it doesn't feel like we just saved the world.../%", "obj_ch2_scene28b_slash_Step_0_gml_290_0");
		c_talk_wait();
	}
	else
	{
		c_sel(be);
		c_sprite(spr_cutscene_28b_berdly_desk_wakes_right);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E3* H..^1. huh...?/", "obj_ch2_scene28b_slash_Step_0_gml_113_0");
		c_msgnextloc("* What..^1. what happened?/%", "obj_ch2_scene28b_slash_Step_0_gml_114_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_wake_left);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E9* Oh..^1. it WAS a dream^1, wasn't it.../", "obj_ch2_scene28b_slash_Step_0_gml_122_0");
		c_facenext("berdly", 3);
		c_msgnextloc("\\E3* Huh..^1. A dream? That was all..^1. A DREAM?/", "obj_ch2_scene28b_slash_Step_0_gml_124_0");
		c_msgnextloc("\\E0* .../", "obj_ch2_scene28b_slash_Step_0_gml_125_0");
		c_msgnextloc("\\E5* ..^1. Of..^1. of course!^1! That MUST have been a dream!!/", "obj_ch2_scene28b_slash_Step_0_gml_126_0");
		c_msgnextloc("\\E6* Such feelings..^1. such thoughts..^1. Oh^1, sweet lady of justice!!/", "obj_ch2_scene28b_slash_Step_0_gml_127_0");
		c_msgnextloc("\\E7* To think^1, I would ever think Susie would be.../%", "obj_ch2_scene28b_slash_Step_0_gml_128_0");
		c_talk_wait();
		c_wait(30);
		c_sprite(spr_cutscene_28b_noelle_desk_shocked);
		c_shakeobj();
		c_sel(be);
		c_sprite(spr_cutscene_28b_berdly_desk_shocked);
		c_shakeobj();
		c_speaker("berdly");
		c_msgsetloc(0, "\\E3* SUSIE!?/", "obj_ch2_scene28b_slash_Step_0_gml_141_0");
		c_facenext("noelle", "B");
		c_msgnextloc("\\EB* S..^1. Susie!? Wh..^1. What are you doing here!?/%", "obj_ch2_scene28b_slash_Step_0_gml_143_0");
		c_talk_wait();
		c_sel(su);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "* Uhhhh^1,/", "obj_ch2_scene28b_slash_Step_0_gml_151_0");
		c_msgnextloc("\\E3* ..^1. you invited us to study. Remember?/%", "obj_ch2_scene28b_slash_Step_0_gml_152_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_down);
		c_sel(su);
		c_facing("u");
		c_sel(be);
		c_sprite(spr_cutscene_28b_berdly_desk_down);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EJ* O-oh^1, right^1, I^1, err-- I--/%", "obj_ch2_scene28b_slash_Step_0_gml_163_0");
		c_talk_wait();
		c_sprite(spr_cutscene_28b_berdly_desk_right);
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_left);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E3* What!? Studying with THEM??/", "obj_ch2_scene28b_slash_Step_0_gml_173_0");
		c_msgnextloc("\\EI* Noelle!^1! Heavens to yikes!^1! They're..^1. they're.../%", "obj_ch2_scene28b_slash_Step_0_gml_174_0");
		c_talk_wait();
		c_sel(be);
		c_sprite(spr_cutscene_28b_berdly_desk_down);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E9* .../%", "obj_ch2_scene28b_slash_Step_0_gml_182_0");
		c_talk_wait();
		c_sprite(spr_cutscene_28b_berdly_desk_right);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E5* ..^1. Well^1, I guess we could..^1. TRY it./%", "obj_ch2_scene28b_slash_Step_0_gml_189_0");
		c_talk_wait();
		c_soundplay_x(snd_phone, 0.7, 1);
		c_wait(30);
		c_sel(be);
		c_sprite(spr_cutscene_28b_berdly_desk_shocked);
		c_shakeobj();
		c_speaker("berdly");
		c_msgsetloc(0, "\\E3* H..^1. Huh?? My..^1. my alarm??/%", "obj_ch2_scene28b_slash_Step_0_gml_202_0");
		c_talk_wait();
		c_speaker("berdly");
		c_msgsetloc(0, "\\E3* Ahh^1, I'm going to be late for my shift with Ms. Boom!!/%", "obj_ch2_scene28b_slash_Step_0_gml_206_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_shocked);
		c_shakeobj();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* Oh no^1, how is it that late already!?/%", "obj_ch2_scene28b_slash_Step_0_gml_214_0");
		c_talk_wait();
		c_sel(be);
		c_sprite(spr_cutscene_28b_berdly_desk_down);
		if (global.flag[457] == 0)
			c_walk("l", 6, 2);
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_desk_left);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E1* Well^1, adieu^1, everyone. I must gather my booklongings./%", "obj_ch2_scene28b_slash_Step_0_gml_226_0");
		c_talk_wait();
		if (global.flag[457] == 1)
		{
			c_soundplay(snd_wing);
			c_sel(bo_be);
			c_visible(0);
			c_var_instance(id, "standing", 1);
			c_sel(be);
			c_autowalk(0);
			c_sprite(spr_berdly_walk_down_lw_books);
			c_halt();
			c_walk("u", 4, 4);
			c_wait(15);
			c_speaker("berdly");
			c_msgsetloc(0, "\\E1* Ahh^1, how I love the texture of freshly-picked-up books!/%", "obj_ch2_scene28b_slash_Step_0_gml_469_0");
			c_talk_wait();
			c_sel(no);
			c_sprite(spr_cutscene_28b_noelle_desk_down);
			c_wait(5);
			c_autowalk(0);
			c_sprite(spr_cutscene_28b_noelle_walk_books_down);
			c_walk("u", 4, 5);
			c_sel(bo_no);
			c_visible(0);
			c_wait(5);
			c_soundplay(snd_wing);
			c_sel(no);
			c_sprite(spr_cutscene_28b_noelle_walk_books_left);
			c_sel(be);
			c_sprite(spr_berdly_walk_right_lw_books);
			c_var_instance(id, "standing", 2);
			c_speaker("berdly");
			c_msgsetloc(0, "* Now^1, let us hasten^1, my dear Noelle!/%", "obj_ch2_scene28b_slash_Step_0_gml_493_0");
			c_talk_wait();
			c_sel(kr);
			c_facing("r");
			c_sel(su);
			c_facing("r");
			c_sel(be);
			c_sprite(spr_berdly_walk_down_lw_books);
			c_imagespeed(0.25);
			c_sprite(spr_berdly_walk_right_lw_books);
			c_imagespeed(0.25);
			c_walkdirect(264, 55, 37);
			c_delaycmd(38, "imagespeed", 0.25);
			c_delaycmd(38, "sprite", spr_berdly_walk_down_lw_books);
			c_delaywalk(38, "d", 3, 30);
			c_delaycmd(69, "imagespeed", 0.25);
			c_delaycmd(69, "sprite", spr_berdly_walk_left_lw_books);
			c_delaywalk(69, "l", 4, 20);
			c_delaycmd(90, "sprite", spr_berdly_walk_up_lw_books);
			c_delaycmd(90, "imagespeed", 0);
		}
		else
		{
			c_sel(be);
			c_sprite(spr_cutscene_28b_berdly_desk_books_lift);
			c_emote("?", 30);
			c_wait(30);
			c_sprite(spr_cutscene_28b_berdly_desk_holds_arm);
			c_speaker("berdly");
			c_msgsetloc(0, "\\E5* H..^1. huh? That's funny^1, my right arm..^1. won't move./", "obj_ch2_scene28b_slash_Step_0_gml_237_0");
			c_facenext("noelle", "C");
			c_msgnextloc("\\EC* O-oh...? It must have fallen asleep./%", "obj_ch2_scene28b_slash_Step_0_gml_239_0");
			c_talk_wait();
			c_sel(no);
			c_sprite(spr_cutscene_28b_noelle_desk_down);
			c_walk("l", 5, 5);
			c_wait(15);
			c_autowalk(0);
			c_sprite(spr_cutscene_28b_noelle_walk_books_down);
			c_var_instance(id, "standing", 1);
			c_walk("u", 4, 5);
			c_sel(bo_no);
			c_visible(0);
			c_sel(bo_be);
			c_visible(0);
			c_wait(5);
			c_soundplay(snd_wing);
			c_sprite(spr_cutscene_28b_noelle_walk_books_left);
			c_speaker("noelle");
			c_msgsetloc(0, "\\E4* Here. I'll carry your books for you^1, Berdly./%", "obj_ch2_scene28b_slash_Step_0_gml_264_0");
			c_talk_wait();
			c_sel(be);
			c_sprite(spr_berdly_walk_right_lw_brokenArm);
			c_var_instance(id, "standing", 2);
			c_speaker("berdly");
			c_msgsetloc(0, "\\E5* Ah^1, Noelle..^1. You're..^1. always helping me. Thank you./%", "obj_ch2_scene28b_slash_Step_0_gml_273_0");
			c_talk_wait();
			c_sel(kr);
			c_facing("r");
			c_sel(su);
			c_facing("r");
			c_sel(be);
			c_sprite(spr_berdly_walk_down_lw_brokenArm);
			c_imagespeed(0.25);
			c_walk_wait("u", 4, 4);
			c_actorsetsprites(be_actor, 0, spr_berdly_walk_right_lw_brokenArm, spr_berdly_walk_down_lw_brokenArm, 0);
			c_autowalk(1);
			c_walk("r", 3, 37);
			c_delaywalk(38, "d", 3, 30);
			c_delaywalk(69, "l", 4, 20);
			c_delayfacing(90, "u");
		}
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_walk_books_right);
		c_imagespeed(0.25);
		c_walkdirect(263, 50, 22);
		c_delaywalk(24, "d", 4, 23);
		c_delaywalk(51, "l", 4, 34);
		c_wait(23);
		c_sprite(spr_cutscene_28b_noelle_walk_books_down);
		c_imagespeed(0.25);
		c_wait(23);
		c_var_instance(desk_marker, "visible", 0);
		c_sprite(spr_cutscene_28b_noelle_walk_books_left);
		c_imagespeed(0.25);
		c_wait(34);
		c_halt();
		c_sprite(spr_cutscene_28b_noelle_walk_books_up);
		c_sel(kr);
		c_facing("d");
		c_sel(su);
		c_facing("d");
		c_wait(30);
		c_msgside("top");
		c_speaker("berdly");
		c_msgsetloc(0, "* ..^1. Good day^1, Kris. ..^1. Susie./%", "obj_ch2_scene28b_slash_Step_0_gml_325_0");
		c_talk_wait();
		c_sel(be);
		if (global.flag[457] == 0)
		{
			c_autowalk(1);
		}
		else
		{
			c_sprite(spr_berdly_walk_down_lw_books);
			c_imagespeed(0.25);
		}
		c_walkdirect_wait(148, 181, 14);
		c_walk_wait("d", 4, 30);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E0* Bye Kris!/", "obj_ch2_scene28b_slash_Step_0_gml_334_0");
		c_msgnextloc("\\EO* And..^1. umm..^1. bye^1, Susie!/%", "obj_ch2_scene28b_slash_Step_0_gml_335_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("l");
		c_sel(su);
		c_facing("l");
		c_speaker("susie");
		c_msgsetloc(0, "\\EB* Umm..^1. see ya./%", "obj_ch2_scene28b_slash_Step_0_gml_346_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("u");
		c_sel(su);
		c_facing("u");
		c_sel(no);
		c_sprite(spr_cutscene_28b_noelle_walk_books_down);
		c_imagespeed(0.25);
		c_walk_wait("d", 1, 30);
		c_wait(15);
		c_sprite(spr_cutscene_28b_noelle_walk_books_up);
		c_wait(15);
		c_sprite(spr_cutscene_28b_noelle_head_tilt);
		c_imagespeed(0.1);
		c_wait(24);
		c_imagespeed(0);
		c_imageindex(2);
		c_wait(30);
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_28b_susie_turn_around_lw);
		c_arg_objectxy(su_actor, -15, 0);
		c_setxy(x, y);
		c_soundplay(snd_whip_hard);
		c_sel(kr);
		c_facing("d");
		c_wait(30);
		c_sel(su);
		c_sprite(spr_cutscene_28b_susie_angry_down_lw);
		c_soundplay(snd_sussurprise);
		c_autowalk(0);
		c_walkdirect_wait(142, 139, 3);
		c_var_instance(id, "susie_mad", true);
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* WHAT!? WHAT!? Are you looking for something!?/%", "obj_ch2_scene28b_slash_Step_0_gml_402_0");
		c_talk_wait();
		c_sel(no);
		c_soundplay(snd_escaped);
		c_sprite(spr_cutscene_28b_noelle_walk_books_down);
		c_imagespeed(0.25);
		c_walk("d", 5, 20);
		c_delaycmd(20, "soundplay", snd_doorclose);
		c_var_instance(id, "susie_mad", false);
		c_sel(su);
		c_setxy(142, 139);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* N-nothing!^1! B-bye!!/%", "obj_ch2_scene28b_slash_Step_0_gml_418_0");
		c_talk_wait();
		c_wait(15);
		c_sel(su);
		c_arg_objectxy(su_actor, 15, 0);
		c_setxy(x, y);
		c_facing("u");
		c_wait(1);
		c_autowalk(1);
		c_walk_wait("u", 1, 23);
		c_wait(30);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "* The heck is her problem^1, anyway?/", "obj_ch2_scene28b_slash_Step_0_gml_434_0");
		c_msgnextloc("* Way to treat someone who just saved the WORLD./%", "obj_ch2_scene28b_slash_Step_0_gml_435_0");
		c_talk_wait();
	}
	c_wait(5);
	c_sel(su);
	c_sprite(spr_cutscene_03b_susie_shock_lw);
	c_shakeobj();
	c_wait(60);
	c_autowalk(0);
	c_sprite(spr_cutscene_03a_susie_kris_shake);
	c_imagespeed(0.5);
	c_arg_objectxy(su_actor, 18, 2);
	c_setxy(x, y);
	c_flip("x");
	c_sel(kr);
	c_visible(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EE* KRIS!^1! Hey^1, wait a sec^1, Kris!!/", "obj_ch2_scene28b_slash_Step_0_gml_460_0");
	c_msgnextloc("\\EP* We..^1. we just actually saved the world^1, didn't we!?/", "obj_ch2_scene28b_slash_Step_0_gml_461_0");
	c_msgnextloc("\\EP* Damn^1, we really are heroes^1!/", "obj_ch2_scene28b_slash_Step_0_gml_462_0");
	c_msgnextloc("\\EN* And no one even knows!/%", "obj_ch2_scene28b_slash_Step_0_gml_463_0");
	c_talk_wait();
	c_visible(1);
	c_facing("l");
	c_sel(su);
	c_autowalk(1);
	c_sprite(spr_susie_walk_down_lw);
	c_arg_objectxy(su_actor, 0, -2);
	c_setxy(x, y);
	c_flip("x");
	c_speaker("susie");
	c_msgsetloc(0, "\\EO* ..^1. guess it's better that way though^1, right?/%", "obj_ch2_scene28b_slash_Step_0_gml_478_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EP* People'd freak out if they knew the world's in danger./%", "obj_ch2_scene28b_slash_Step_0_gml_485_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_susie_head_scratch);
	c_arg_objectxy(su_actor, -5, -2);
	c_setxy(x, y);
	c_imagespeed(0.25);
	c_speaker("susie");
	c_msgsetloc(0, "\\EB* ..^1. though^1, kinda sucks Noelle has to forget^1, too.../", "obj_ch2_scene28b_slash_Step_0_gml_495_0");
	c_msgnextloc("\\E0* .../%", "obj_ch2_scene28b_slash_Step_0_gml_496_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("r");
	c_arg_objectxy(su_actor, 5, 2);
	c_setxy(x, y);
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Whatever. Let's get out of here./%", "obj_ch2_scene28b_slash_Step_0_gml_506_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("d");
	c_sel(su);
	c_walkdirect_wait(146, 162, 15);
	c_walk_wait("d", 4, 30);
	c_soundplay(snd_doorclose);
	c_wait(30);
}
if (con == 3)
{
	con = 50;
	global.facing = 0;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	con = 51;
	global.plot = 200;
	layer_set_visible("GIVE_DEPTH", true);
	instance_create(0, 0, obj_bg_givedepth);
	instance_destroy(desk_marker);
}
if (con == 51 && obj_mainchara.y >= 186)
{
	global.interact = 1;
	kris_leave = true;
	con = 52;
}
if (kris_leave && con == 52)
{
	con = 53;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_var_lerp_instance(blackall, "image_alpha", 0, 1, 30);
	c_wait(45);
	c_speaker("no_one");
	c_msgsetloc(0, "* (Before you left, you gathered up everything in the room...)/%", "obj_ch2_scene28b_slash_Step_0_gml_561_0");
	c_talk_wait();
	c_wait(30);
	c_waitcustom();
}
if (con == 53 && customcon == 1)
{
	con = 55;
	global.interact = 3;
	global.entrance = 23;
	instance_create(0, 0, obj_persistentfadein);
	room_goto(room_library);
}
if (susie_mad)
{
	susie_mad_timer++;
	if (susie_mad_timer >= 2)
	{
		susie_mad_timer = 0;
		with (su_actor)
		{
			x = 142 + choose(-2, -1, 1, 2);
			y = 139 + choose(-2, -1, 1, 2);
		}
	}
}
