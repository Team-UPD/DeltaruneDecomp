if (obj_mainchara.x > 1120 && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	qu = 4;
	qu_actor = instance_create(1670, 130, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_cutscene_26_queen_back;
	c_sel(qu);
	c_autowalk(0);
	c_imagespeed(0.25);
	no = 5;
	no_actor = instance_create(2146, 167, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_noelle_walk_down_dw;
	c_sel(no);
	c_autodepth(0);
	no_actor.depth = queenhand.depth - 100;
	c_visible(0);
	qu_flame = 6;
	qu_flame_actor = scr_dark_marker(1670, 130, spr_queen_chair_flame_side);
	scr_actor_setup_nofacing(qu_flame, qu_flame_actor, "qu_flame");
	c_sel(qu_flame);
	c_imagespeed(0.25);
	c_stickto(qu_actor, 100);
	queenwinehand = scr_dark_marker(1600, cameray() + view_hport[0] + 100, spr_cutscene_26_queen_giga_hand_glass);
	queenwinehand.depth = 1000100;
	queenwinehand.image_speed = 0;
	queenwinehand.visible = 0;
	queenfistleft = scr_dark_marker(1770, cameray() + view_hport[0] + 100, spr_cutscene_26_queen_giga_fist_left);
	queenfistleft.depth = 1000240;
	queenfistleft.visible = 0;
	damage1 = scr_dark_marker(1680, 266, spr_cutscene_26_slam_damage);
	damage1.depth = 950000;
	damage1.visible = 0;
	damage2 = scr_dark_marker(2100, 266, spr_cutscene_26_slam_damage);
	damage2.depth = 950000;
	damage2.visible = 0;
}
if (con == 1)
{
	con = 2;
	alarm[0] = 30;
	c_wait(15);
	c_mus2("volume", 0, 30);
	c_pannable(1);
	c_panspeed_wait(5, 0, 120);
	c_mus("free_all");
	c_msgside("bottom");
	c_var_instance(id, "set_queen_voice", true);
	c_speaker("no_name");
	c_msgsetloc(0, "* The Knight/", "obj_ch2_scene26_slash_Step_0_gml_98_0");
	c_msgnextloc("* The Roaring Knight.../%", "obj_ch2_scene26_slash_Step_0_gml_99_0");
	c_talk_wait();
	c_var_instance(id, "laser_con", 0);
	c_msgsetloc(0, "* Today^1, It Deigned To Create This World/%", "obj_ch2_scene26_slash_Step_0_gml_100_0");
	c_talk_wait();
	c_waitcustom();
}
if (con == 3 && obj_ch2_scene26_cityscape.cityscape_reveal && customcon == 1)
{
	con = 4;
	alarm[0] = 30;
	customcon = 0;
	c_waitcustom_end();
	c_sel(qu);
	c_autowalk(0);
	c_walkdirect(1581, 173, 15);
	c_var_instance(id, "laser_con", 1);
	c_msgsetloc(0, "* Reaching Its Long Hand To The Sky/%", "obj_ch2_scene26_slash_Step_0_gml_101_0");
	c_talk_wait();
	c_waitcustom();
}
if (con == 5 && obj_ch2_scene26_cityscape.hand_both_reveal_finish && customcon == 1)
{
	con = 6;
	alarm[0] = 30;
	customcon = 0;
	c_waitcustom_end();
	c_var_instance(id, "laser_con", 2);
	c_msgsetloc(0, "* It Coursed Its Will Into Its Blade/%", "obj_ch2_scene26_slash_Step_0_gml_102_0");
	c_talk_wait();
	c_waitcustom();
}
if (con == 7 && obj_ch2_scene26_cityscape.knife_hover && customcon == 1)
{
	con = 10;
	alarm[0] = 30;
	customcon = 0;
	c_waitcustom_end();
	c_var_instance(id, "laser_con", 3);
	c_msgsetloc(0, "* And Made/%", "obj_ch2_scene26_slash_Step_0_gml_103_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(0);
	c_walkdirect(1670, 130, 15);
	c_msgsetloc(0, "* Thrusting The Fountain From The Earth/%", "obj_ch2_scene26_slash_Step_0_gml_104_0");
	c_talk_wait();
	c_wait(30);
	c_msgsetloc(0, "* .../", "obj_ch2_scene26_slash_Step_0_gml_115_0");
	c_msgnextloc("* Unfortunately The World They Created/", "obj_ch2_scene26_slash_Step_0_gml_116_0");
	c_msgnextloc("* Is Trapped Within The Confines Of The Library/", "obj_ch2_scene26_slash_Step_0_gml_117_0");
	c_msgnextloc("* If Only We Had A Way To Make More Darkness/", "obj_ch2_scene26_slash_Step_0_gml_118_0");
	c_msgnextloc("* We Might Be Able To Cover The Whole World/", "obj_ch2_scene26_slash_Step_0_gml_119_0");
	c_msgnextloc("* .../", "obj_ch2_scene26_slash_Step_0_gml_120_0");
	c_msgnextloc("* That Is When I Realized/", "obj_ch2_scene26_slash_Step_0_gml_131_0");
	c_msgnextloc("* This Power..^1. This Power Of The Will/", "obj_ch2_scene26_slash_Step_0_gml_132_0");
	c_msgnextloc("* This Power Of Determination.../%", "obj_ch2_scene26_slash_Step_0_gml_133_0");
	c_talk();
	c_wait_box(1);
	c_var_instance(id, "laser_con", 5);
	c_waittalk();
	c_var_instance(id, "laser_con", 6);
	c_msgsetloc(0, "* Is This Not Something That All Lightners Possess...?/", "obj_ch2_scene26_slash_Step_0_gml_146_0");
	c_msgnextloc("* If One Was Simply/", "obj_ch2_scene26_slash_Step_0_gml_159_0");
	c_msgnextloc("* Determined Enough/%", "obj_ch2_scene26_slash_Step_0_gml_160_0");
	c_talk_wait();
	c_var_instance(id, "laser_con", 7);
	c_msgsetloc(0, "* Could Not Anyone Make A Dark Fountain?/", "obj_ch2_scene26_slash_Step_0_gml_161_0");
	c_msgnextloc("* So Then/", "obj_ch2_scene26_slash_Step_0_gml_172_0");
	c_msgnextloc("* If The Knight Has Taken Its Leave/", "obj_ch2_scene26_slash_Step_0_gml_173_0");
	c_msgnextloc("* Then I Will Simply.../%", "obj_ch2_scene26_slash_Step_0_gml_184_0");
	c_talk_wait();
	c_var_instance(id, "laser_con", 8);
	c_msgsetloc(0, "* Make A New One/%", "obj_ch2_scene26_slash_Step_0_gml_185_0");
	c_talk_wait();
	c_wait(30);
	c_var_instance(id, "laser_con", 5);
	c_wait(30);
	if (scr_sideb_get_phase() < 2)
	{
		c_sel(qu);
		c_sprite(spr_queen_chair_pose);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame);
		c_panspeed(8, 0, 43);
		c_sel(qu);
		c_autowalk(0);
		c_walk_wait("r", 6, 45);
		c_msgzurasu(1);
		c_speaker("queen");
		c_msgsetloc(0, "\\EB* Noelle Honey Darling Sweetie Gravy/", "obj_ch2_scene26_slash_Step_0_gml_207_0");
		c_msgnextloc("\\E1* How Do You Find The Giant Hand?/%", "obj_ch2_scene26_slash_Step_0_gml_208_0");
		c_talk_wait();
		c_var_instance(id, "disable_face", true);
		c_speaker("noelle");
		c_msgsetloc(0, "* .../%", "obj_ch2_scene26_slash_Step_0_gml_210_0");
		c_talk_wait();
		c_var_instance(id, "enable_face", false);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Great And How Do You Feel About Worlddomination?/%", "obj_ch2_scene26_slash_Step_0_gml_212_0");
		c_talk_wait();
		c_var_instance(id, "rudebuster", true);
		c_wait(10);
		c_sel(qu_flame);
		c_visible(0);
		c_sel(qu);
		c_jump(2442, cameray() + view_hport[0] + 100, 40, 30);
		c_wait(15);
		c_autodepth(0);
		c_depth(9500000);
		c_msgside("top");
		c_msgzurasu(0);
		c_speaker("queen");
		c_msgsetloc(0, "\\E8* Oooooo Ouchie Mama/%", "obj_ch2_scene26_slash_Step_0_gml_235_0");
		c_talk_wait();
		c_wait(40);
		c_sel(kr);
		c_setxy(1700, kr_actor.y);
		c_walkdirect(1800, 226, 30);
		c_sel(su);
		c_setxy(1700, su_actor.y);
		c_walkdirect(1870, 210, 30);
		c_sel(ra);
		c_setxy(1700, ra_actor.y);
		c_walkdirect(1725, 214, 30);
		c_panspeed(-5, 0, 25);
		c_var_instance(queenhand, "sprite_index", spr_cutscene_26_queen_giga_bonds_broken);
		c_sel(no);
		c_visible(1);
		c_soundplay(snd_jump);
		c_autowalk(0);
		c_jump_sprite(2105, 210, 10, 15, spr_noelle_shocked_dw, spr_noelle_kneel);
		c_wait(15);
		c_sprite(spr_noelle_kneel);
		c_var_lerp_instance(queenhand, "y", queenhand.y, cameray() + view_hport[0] + 200, 60);
		c_wait(30);
		c_sprite(spr_noelle_kneel_face_left);
		c_msgside("bottom");
		c_speaker("noelle");
		c_msgsetloc(0, "\\EN* S-Susie...^1! You..^1. you came to save me!/%", "obj_ch2_scene26_slash_Step_0_gml_277_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_kneel_happy);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E6* Somehow^1, I..^1. I..^1. I knew you would.../%", "obj_ch2_scene26_slash_Step_0_gml_285_0");
		c_talk_wait();
		c_sel(su);
		c_facing("u");
		c_speaker("susie");
		c_msgsetloc(0, "\\E3* Uh^1, you did?/%", "obj_ch2_scene26_slash_Step_0_gml_292_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_blush);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EP* Umm^1, I mean..^1. I..^1. umm.. well.../", "obj_ch2_scene26_slash_Step_0_gml_298_0");
		c_msgnextloc("\\EL* .../%", "obj_ch2_scene26_slash_Step_0_gml_306_0");
		c_talk_wait();
		c_wait(5);
		c_sel(no);
		c_sprite(spr_noelle_shocked_dw);
		c_shakeobj();
		c_sel(su);
		c_facing("r");
		c_speaker("noelle");
		c_msgsetloc(0, "\\EB* W..^1. Wait^1! Wait wait wait!!/", "obj_ch2_scene26_slash_Step_0_gml_319_0");
		c_msgnextloc("\\EE* You need to get out of here!^1! Hurry!!/%", "obj_ch2_scene26_slash_Step_0_gml_320_0");
		c_talk_wait();
		c_sel(su);
		c_facing("susieunhappy");
		c_facing("r");
		c_sel(ra);
		c_facing("ralseiunhappy");
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "\\E6* H-huh?!/%", "obj_ch2_scene26_slash_Step_0_gml_333_0");
		c_talk_wait();
		c_mus("free_all");
		c_soundplay(snd_queen_laugh_bitcrush_deep);
		c_wait(60);
		c_var_instance(id, "shakeloop", true);
		c_var_lerp_instance(bg_cover, "image_alpha", 0, 1, 60);
		c_sel(ra);
		c_sprite(spr_ralsei_hurt_overworld);
		c_sel(su);
		c_sprite(spr_susie_shock_r);
		c_wait(60);
		c_mus("free_all");
		c_mus2("initloop", "giant_queen_appears.ogg", 0);
		c_sel(ra);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_sel(no);
		c_facing("l");
		c_wait(10);
		c_var_instance(id, "release_queen", true);
		c_wait(30);
		c_var_instance(id, "rockanim", true);
		c_var_instance(id, "rockdog", true);
		c_sel(kr);
		c_facing("u");
		c_sel(ra);
		c_sprite(spr_ralsei_shocked_behind);
		c_sel(su);
		c_sprite(spr_susie_shocked_behind);
		c_sel(no);
		c_sprite(spr_noelle_shocked_behind_dw);
		c_wait(30);
		c_var_instance(id, "shakeloop", false);
		c_wait(30);
		c_soundplay(snd_queen_laugh_bitcrush_deep);
		c_var_instance(id, "queen_laugh_start", true);
		c_shake();
		c_wait(62);
		c_var_instance(id, "queen_laugh_stop", true);
		c_wait(10);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EC* Q..^1. Queen!?/", "obj_ch2_scene26_slash_Step_0_gml_436_0");
		c_facenext("queen", "B");
		c_msgnextloc("\\EB* Seems That You Failed To Notice/", "obj_ch2_scene26_slash_Step_0_gml_438_0");
		c_msgnextloc("\\E6* The Giant Freaking Robot In The Middle Of My Palace/", "obj_ch2_scene26_slash_Step_0_gml_439_0");
		c_facenext("noelle", "C");
		c_msgnextloc("\\EC* Th..^1. this isn't good..^1. she's..^1. she's invincible like this!!/", "obj_ch2_scene26_slash_Step_0_gml_441_0");
		c_facenext("susie", "K");
		c_msgnextloc("\\EK* Huh?/", "obj_ch2_scene26_slash_Step_0_gml_443_0");
		c_facenext("noelle", "B");
		c_msgnextloc("\\EB* She..^1. she's been bragging about her final form all day!!/%", "obj_ch2_scene26_slash_Step_0_gml_445_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("r");
		c_sel(ra);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_sel(no);
		c_facing("l");
		c_wait(10);
		c_speaker("susie");
		c_msgsetloc(0, "\\E4* H..^1. heh.../%", "obj_ch2_scene26_slash_Step_0_gml_464_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_09_susie_point);
		c_imageindex(0);
		c_imagespeed(0.15);
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* You think growing a few inches is gonna help!?/", "obj_ch2_scene26_slash_Step_0_gml_475_0");
		c_facenext("queen", 0);
		c_msgnextloc("\\EO* Yes/%", "obj_ch2_scene26_slash_Step_0_gml_477_0");
		c_talk_wait();
		c_wait(10);
		c_sel(su);
		c_autowalk(1);
		c_facing("u");
		c_var_instance(queenwinehand, "visible", 1);
		c_var_lerp_instance(queenwinehand, "y", queenwinehand.y, 149, 15);
		c_var_lerp_instance(queenwinehand, "x", 1850, 1600, 15, 3, "inout");
		c_panspeed_wait(-5, 0, 20);
		c_wait(15);
		c_sel(su);
		c_facing("l");
		c_sel(ra);
		c_facing("u");
		c_sel(kr);
		c_facing("l");
		c_var_instance(id, "winelaser", true);
		c_var_instance(queenwinehand, "image_index", 1);
		c_wait(4);
		c_sel(no);
		c_depth(96849);
		c_wait(4);
		c_soundplay(snd_shadowpendant);
		c_wait(15);
		c_wait(3);
		c_sel(su);
		c_facing("d");
		c_sel(ra);
		c_facing("r");
		c_sel(kr);
		c_facing("d");
		c_panspeed_wait(20, 0, 5);
		c_sel(su);
		c_facing("r");
		c_sel(kr);
		c_facing("r");
		c_wait(7);
		c_sel(ra);
		c_soundplay(snd_impact);
		c_autowalk(0);
		c_sprite(spr_cutscene_10_ralsei_splat);
		c_addxy(-35, 50);
		c_shakeobj();
		c_wait(2);
		c_sel(kr);
		c_shakeobj();
		c_soundplay(snd_impact);
		c_sprite(spr_krisb_defeat);
		c_wait(2);
		c_sel(su);
		c_shakeobj();
		c_soundplay(snd_impact);
		c_sprite(spr_susieb_defeat);
		c_wait(6);
		c_sel(no);
		c_shakeobj();
		c_sprite(spr_noelle_kneel);
		c_wait(15);
		c_depth(no_actor.depth + 100);
		c_var_instance(queenwinehand, "image_index", 0);
		c_wait(15);
		c_var_lerp_instance(queenwinehand, "y", 149, queenwinehand.y, 15);
		c_var_lerp_instance(queenwinehand, "x", 1600, 1850, 15, 3, "inout");
		c_wait(20);
		c_var_instance(queenwinehand, "visible", 0);
		c_speaker("queen");
		c_msgsetloc(0, "\\E9* Are We Cool To Take Over The World Now/%", "obj_ch2_scene26_slash_Step_0_gml_645_0");
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EA* S..^1. Susie..^1. let's just give up and.../%", "obj_ch2_scene26_slash_Step_0_gml_651_0");
		c_talk_wait();
		c_sel(su);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* Hell if we're giving up now!!/%", "obj_ch2_scene26_slash_Step_0_gml_659_0");
		c_talk_wait();
		c_sel(no);
		c_autowalk(0);
		c_sprite(spr_noelle_kneel_shocked);
		c_imageindex(0);
		c_wait(10);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EF* S..^1. Susie...?/%", "obj_ch2_scene26_slash_Step_0_gml_671_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_09_susie_point);
		c_imageindex(0);
		c_imagespeed(0.15);
		c_speaker("susie");
		c_msgsetloc(0, "\\EQ* So what if you got another form!?/", "obj_ch2_scene26_slash_Step_0_gml_682_0");
		c_msgnextloc("\\E5* We've got one too!!/%", "obj_ch2_scene26_slash_Step_0_gml_683_0");
		c_talk_wait();
		c_sel(kr);
		c_facing("r");
		c_sel(ra);
		c_autowalk(1);
		c_facing("r");
		c_addxy(35, -50);
		c_wait(10);
		c_sel(su);
		c_autowalk(1);
		c_facing("l");
		c_speaker("susie");
		c_msgsetloc(0, "\\EN* Kris^1, Ralsei^1, c'mon!!/%", "obj_ch2_scene26_slash_Step_0_gml_700_0");
		c_talk_wait();
		c_delaycmd4(10, "fadeout", 20, 16777215, 0, 0);
		c_wait(30);
		c_sel(ra);
		c_setxy(1910, 225);
		c_sprite(spr_cutscene_10_ralsei_stool);
		c_sel(kr);
		c_visible(0);
		c_sel(su);
		c_sprite(spr_cutscene_10_susie_kris_t_pose_front);
		c_setxy(1960, 210);
		c_wait(15);
		c_fadein(15);
		c_wait(15);
		c_soundplay(snd_jump);
		c_jump(1890, 180, 20, 15);
		c_wait(15);
		c_sprite(spr_cutscene_10_susie_kris_t_pose_back);
		c_wait(15);
		c_sel(no);
		c_sprite(spr_noelle_shocked_dw);
		c_imageindex(0);
		c_imagespeed(0);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EK* Wh..^1. what are you doing!?/", "obj_ch2_scene26_slash_Step_0_gml_740_0");
		c_facenext("susie", 1);
		c_msgnextloc("\\E1* This is our ultimate.../", "obj_ch2_scene26_slash_Step_0_gml_742_0");
		c_msgnextloc("\\EK* Uh...^1. w-wait a sec^1, now that you mention it.../%", "obj_ch2_scene26_slash_Step_0_gml_743_0");
		c_talk_wait();
		c_facing("u");
		c_speaker("queen");
		c_msgsetloc(0, "\\EB* Oh No It Appears I Am Evenly Matched/", "obj_ch2_scene26_slash_Step_0_gml_750_0");
		c_msgnextloc("\\E7* I Hope You Won't Mind If I Don't Hold Back/%", "obj_ch2_scene26_slash_Step_0_gml_751_0");
		c_talk_wait();
		c_var_instance(queenfistleft, "visible", 1);
		c_var_instance(queenfistleft, "depth", 1000100);
		c_var_lerp_instance(queenfistleft, "y", queenfistleft.y, 25, 5);
		c_wait(10);
		c_var_instance(queenfistleft, "depth", 900000);
		c_var_lerp_instance(queenfistleft, "y", 25, 15, 5);
		c_wait(5);
		c_var_instance(id, "fist_explode", true);
		c_var_lerp_instance(queenfistleft, "y", 15, 187, 3);
		c_wait(3);
		c_soundplay(snd_impact);
		c_soundplay(snd_bomb);
		c_shake();
		c_sel(qu);
		c_visible(0);
		c_var_instance(queenhand, "visible", 0);
		c_sel(no);
		c_sprite(spr_noelle_shocked_dw);
		c_sel(kr);
		c_setxy(1890, 220);
		c_visible(1);
		c_autowalk(0);
		c_jump_sprite(2023, 720, 40, 30, spr_kris_fall_d_dw, spr_kris_fall_d_dw);
		c_delaycmd(5, "sprite", spr_kris_fall_d_dw);
		c_imagespeed(0.25);
		c_sel(ra);
		c_autowalk(0);
		c_jump_sprite(1830, 720, 40, 30, spr_ralsei_surprised_down, spr_ralsei_surprised_down);
		c_delaycmd(5, "sprite", spr_ralsei_surprised_down);
		c_var_instance(ra_actor, "siner_add0", 0.5);
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_susie_walk_down_dw);
		c_jump_sprite(1938, 720, 40, 30, spr_susie_sheeh_flip, spr_susie_sheeh_flip);
		c_delaycmd(5, "sprite", spr_susie_sheeh_flip);
		c_imagespeed(0.25);
		c_var_instance(su_actor, "siner_add0", 0.5);
		c_var_instance(id, "wallanimstart", true);
		c_var_instance(id, "rockanimstop", true);
		c_var_instance(id, "rockdogstop", true);
		c_panspeed(0, 25, 25);
		c_mus2("volume", 0, 30);
		c_wait(25);
		c_var_instance(id, "wallcon", 1);
		c_wait(90);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EU* We're falling!!/", "obj_ch2_scene26_slash_Step_0_gml_756_0");
		c_facenext("susie", 14);
		c_msgnextloc("\\EE* Any bright ideas on how we're getting out of this one?!/", "obj_ch2_scene26_slash_Step_0_gml_758_0");
		c_facenext("ralsei", 30);
		c_msgnextloc("\\EU* Um^1, we could try flapping our arms...?/%", "obj_ch2_scene26_slash_Step_0_gml_760_0");
		c_talk_wait();
		c_mus("free_all");
		c_msgside("top");
		c_var_instance(id, "disable_face", true);
		c_speaker("berdly");
		c_msgsetloc(0, "* Fear not!!/", "obj_ch2_scene26_slash_Step_0_gml_820_0");
		c_msgnextloc("* Your knight in glow in the dark armor is here!!/%", "obj_ch2_scene26_slash_Step_0_gml_821_0");
		c_talk_wait();
		c_var_instance(id, "enable_face", true);
		c_speaker("susie");
		c_msgsetloc(0, "\\E6* Berdly!?/%", "obj_ch2_scene26_slash_Step_0_gml_823_0");
		c_talk_wait();
		c_var_instance(id, "berdly_coaster_start", true);
		c_wait(1);
		c_sel(kr);
		c_visible(0);
		c_sel(ra);
		c_visible(0);
		c_sel(su);
		c_visible(0);
		c_soundplay(snd_lancerwhistle);
		c_wait(30);
		c_var_instance(id, "wallcon", 2);
		c_var_lerp_instance(bg_cover, "image_alpha", 1, 0, 15);
		c_wait(30);
		c_mus2("initloop", "gigaqueen_pre.ogg", 0);
		c_speaker("berdly");
		if (global.flag[457] == 0)
			c_msgsetloc(0, "\\EG* Kris^1, Susie..^1. I can't do much for you like this.../", "obj_ch2_scene26_slash_Step_0_gml_846_0");
		else
			c_msgsetloc(0, "\\EG* Kris^1, Susie..^1. My energy is still too low to help you fight.../", "obj_ch2_scene26_slash_Step_0_gml_809_0");
		c_msgnextloc("\\E4* So I found help for you!^1! Behold!^1! Comrades!!/%", "obj_ch2_scene26_slash_Step_0_gml_847_0");
		c_talk_wait();
		scr_smallface(0, "rouxls", 1, "left", "bottom", stringsetloc("I shalt also take Credite for This", "obj_ch2_scene26_slash_Step_0_gml_850_0"));
		scr_miniface_init_sweet();
		c_speaker("no_name");
		c_msgsetloc(0, "\\m1\t\t*On your quest against Queen,/", "obj_ch2_scene26_slash_Step_0_gml_855_0");
		c_msgnextloc("\\m3\t\t*You've made all sorts of&\tbuddies, right?!/", "obj_ch2_scene26_slash_Step_0_gml_856_0");
		c_msgnextloc("\\m1\t\t*Using our junk-making&\tskills.../", "obj_ch2_scene26_slash_Step_0_gml_857_0");
		c_msgnextloc("\\m3\t\t*We modified everyone.../", "obj_ch2_scene26_slash_Step_0_gml_858_0");
		c_msgnextloc("\\m2\t\t*To work together!\\f0/%", "obj_ch2_scene26_slash_Step_0_gml_859_0");
		c_talk_wait();
		c_var_instance(id, "berdly_coaster_leave", true);
		c_wait(60);
		c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 30);
		c_wait(30);
		c_var_instance(anime_bg, "image_alpha", 1);
		c_sel(su);
		c_visible(1);
		c_sprite(spr_cutscene_10_susie_kris_t_pose_front);
		c_halt();
		c_setxy(1910, 720);
		c_autodepth(0);
		c_depth(90000);
		c_sel(ra);
		c_visible(1);
		c_sprite(spr_cutscene_10_ralsei_stool);
		c_halt();
		c_setxy(1940, 770);
		c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 30);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E4* Kris!^1! Susie!^1! Behold!!/", "obj_ch2_scene26_slash_Step_0_gml_891_0");
		c_msgnextloc("\\EL* The ULTIMATE Group Project!!/%", "obj_ch2_scene26_slash_Step_0_gml_892_0");
		c_talk_wait();
		c_waitcustom();
	}
	else
	{
		var bigqueen = instance_find(obj_ch2_scene26_gigaqueen, 0);
		c_mus("free_all");
		c_var_instance(bigqueen, "head_x_pos", 1730);
		c_var_instance(bigqueen, "head_y_pos", 464);
		c_var_instance(bigqueen, "rem_head_y_pos", 464);
		c_panspeed(8, 0, 43);
		c_sel(qu);
		c_autowalk(0);
		c_walk_wait("r", 6, 45);
		c_msgsetloc(0, "* But Here I Am/", "obj_ch2_scene26_slash_Step_0_gml_849_0");
		c_msgnextloc("* Still Empty Handed In My Quest/", "obj_ch2_scene26_slash_Step_0_gml_850_0_b");
		c_msgnextloc("* Noelle Is In No Condition To Assist Me Now/", "obj_ch2_scene26_slash_Step_0_gml_851_0");
		c_msgnextloc("* She Must Rest/", "obj_ch2_scene26_slash_Step_0_gml_852_0");
		c_msgnextloc("* And Bird Boy/", "obj_ch2_scene26_slash_Step_0_gml_853_0");
		c_msgnextloc("* I Searched For Him For Ages But/", "obj_ch2_scene26_slash_Step_0_gml_854_0");
		c_msgnextloc("* My Sensors Cannot Detect Him Anywhere/", "obj_ch2_scene26_slash_Step_0_gml_855_0_b");
		c_msgnextloc("* .../%", "obj_ch2_scene26_slash_Step_0_gml_856_0_b");
		c_talk_wait();
		c_panspeed(-5, 0, 30);
		c_sel(kr);
		c_setxy(1600, kr_actor.y);
		c_walkdirect(1740, 226, 30);
		c_sel(su);
		c_setxy(1600, su_actor.y);
		c_walkdirect(1830, 210, 30);
		c_sel(ra);
		c_setxy(1600, ra_actor.y);
		c_walkdirect(1662, 214, 30);
		c_sel(qu);
		c_emote("!", 15);
		c_wait(15);
		c_sel(qu);
		c_sprite(spr_queen_chair_2);
		c_imagespeed(0.25);
		c_sel(qu_flame);
		c_sprite(spr_queen_chair_flame_side);
		c_wait(35);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* How Thoughtful You Two Have Come To Help Me/", "obj_ch2_scene26_slash_Step_0_gml_888_0");
		c_msgnextloc("\\ED* Kris^1, Susie/", "obj_ch2_scene26_slash_Step_0_gml_889_0");
		c_msgnextloc("\\E7* Which One Of You Wants To Be The New Knight/%", "obj_ch2_scene26_slash_Step_0_gml_890_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_susie_point_right);
		c_addxy(-2, 55);
		c_shakeobj();
		c_speaker("susie");
		c_msgsetloc(0, "\\E1* Get out of our way./", "obj_ch2_scene26_slash_Step_0_gml_900_0");
		c_msgnextloc("\\E4* Noelle needs to wake up!/", "obj_ch2_scene26_slash_Step_0_gml_901_0");
		c_facenext("queen", 1);
		c_msgnextloc("\\E1* Wake? No^1, She Has Already Awakened Too Much/", "obj_ch2_scene26_slash_Step_0_gml_903_0");
		c_msgnextloc("\\ED* Let Her Close Her Eyes And Sleep Away/", "obj_ch2_scene26_slash_Step_0_gml_904_0");
		c_msgnextloc("\\E0* Into A Darker^1, Darker Dream/%", "obj_ch2_scene26_slash_Step_0_gml_905_0");
		c_talk_wait();
		c_soundplay(snd_queen_laugh_0);
		c_soundplay_x(snd_swing, 1, 0.5);
		c_sel(qu);
		c_sprite(spr_queen_chair_ohoho_1);
		c_imagespeed(0.25);
		c_walkdirect(2300, 100, 15);
		c_var_lerp_instance(queenhand, "y", queenhand.y, cameray() + view_hport[0] + 200, 15);
		c_var_instance(id, "queen_afterimage", true);
		c_wait(15);
		c_var_instance(id, "queen_afterimage", false);
		c_wait(60);
		c_sel(kr);
		c_facing("u");
		c_sel(su);
		c_facing("u");
		c_addxy(2, -55);
		c_sel(ra);
		c_facing("u");
		c_var_instance(bigqueen, "climb", 1);
		c_wait(41);
		c_var_instance(bigqueen, "climb", 1);
		c_wait(41);
		c_var_instance(bigqueen, "climb", 1);
		c_wait(41);
		c_var_instance(bigqueen, "climb", 1);
		c_wait(41);
		c_wait(30);
		c_soundplay(snd_queen_laugh_bitcrush_deep);
		c_var_instance(id, "queen_laugh_start", true);
		c_shake();
		c_sel(ra);
		c_sprite(spr_ralsei_shocked_behind);
		c_sel(su);
		c_sprite(spr_susie_shocked_behind);
		c_wait(62);
		c_var_instance(id, "queen_laugh_stop", true);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Now^1, Which One Of You/", "obj_ch2_scene26_slash_Step_0_gml_995_0");
		c_msgnextloc("\\E6* Wants To Help Me Cover This World In Darkness!?/%", "obj_ch2_scene26_slash_Step_0_gml_996_0");
		c_talk_wait();
		c_wait(30);
		c_sel(su);
		c_facing("u");
		c_sel(ra);
		c_facing("u");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EE* Queen^1, why.../", "obj_ch2_scene26_slash_Step_0_gml_1009_0");
		c_msgnextloc("\\EF* Why do you want to unleash the Roaring so much?!/%", "obj_ch2_scene26_slash_Step_0_gml_1010_0");
		c_talk_wait();
		c_wait(30);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* What Is That/", "obj_ch2_scene26_slash_Step_0_gml_1017_0");
		c_facenext("ralsei", 22);
		c_msgnextloc("\\EM* Um..^1. the Roaring./", "obj_ch2_scene26_slash_Step_0_gml_1019_0");
		c_facenext("queen", 1);
		c_msgnextloc("\\E1* Yeah That What Is That/", "obj_ch2_scene26_slash_Step_0_gml_1021_0");
		c_facenext("ralsei", 5);
		c_msgnextloc("\\E5* If too much darkness is released.../", "obj_ch2_scene26_slash_Step_0_gml_1023_0");
		c_msgnextloc("\\E5* Titans will emerge from the fountain.../", "obj_ch2_scene26_slash_Step_0_gml_1024_0");
		c_msgnextloc("\\E5* And destroy everything./", "obj_ch2_scene26_slash_Step_0_gml_1025_0");
		c_msgnextloc("\\E7* All Darkners will turn into statues.../", "obj_ch2_scene26_slash_Step_0_gml_1026_0");
		c_msgnextloc("\\E7* And all Lightners will be lost in eternal chaos./%", "obj_ch2_scene26_slash_Step_0_gml_1027_0");
		c_talk_wait();
		c_wait(30);
		c_soundplay(snd_queen_bitcrushed_hoot);
		c_var_instance(bigqueen, "surprised", true);
		c_wait(30);
		c_speaker("queen");
		c_msgsetloc(0, "\\E8* Holy Circuits Are You Serious/", "obj_ch2_scene26_slash_Step_0_gml_1039_0");
		c_facenext("ralsei", 21);
		c_msgnextloc("\\EL* You REALLY didn't know that!?/%", "obj_ch2_scene26_slash_Step_0_gml_1041_0");
		c_talk_wait();
		c_wait(30);
		c_speaker("queen");
		c_msgsetloc(0, "\\EF* No/%", "obj_ch2_scene26_slash_Step_0_gml_1047_0");
		c_talk_wait();
		c_var_instance(bigqueen, "leave", true);
		c_wait(60);
		c_sel(qu_flame);
		c_stickto_stop();
		c_visible(0);
		c_sel(qu);
		c_setxy(2300, 165);
		c_sprite(spr_queen_walk_left_unhappy);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walkdirect(2015, 165, 90);
		c_delaycmd(91, "imagespeed", 0);
		c_delaycmd(91, "imageindex", 0);
		c_wait(10);
		c_sel(kr);
		c_facing("r");
		c_sel(ra);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_wait(120);
		c_speaker("queen");
		c_msgsetloc(0, "\\EG* Well My Plans Are Shot/", "obj_ch2_scene26_slash_Step_0_gml_1079_0");
		c_msgnextloc("\\EF* My One Idea To Help Noelle^1, Failed/", "obj_ch2_scene26_slash_Step_0_gml_1080_0");
		c_msgnextloc("\\ED* Go Ahead Kris^1, Seal The Fountain/", "obj_ch2_scene26_slash_Step_0_gml_1081_0");
		c_msgnextloc("\\EB* I Will Not Stay In Your Way Any Longer/%", "obj_ch2_scene26_slash_Step_0_gml_1082_0");
		c_talk_wait();
		c_sel(qu);
		c_facing("u");
		c_panobj(kr_actor, 30);
		c_wait(34);
		c_var_instance(id, "make_npc_a", true);
		c_wait(1);
		c_pannable(0);
		c_actortokris();
		c_actortocaterpillar();
		c_terminatekillactors();
	}
}
if (con == 15 && !d_ex())
{
	con = 16;
	customcon = 0;
	c_waitcustom_end();
	c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 30);
	scr_tempsave();
	c_wait(30);
}
if (con == 16 && !d_ex() && skipbattle == 1)
{
	con = 0;
	global.plot = 170;
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
	snd_free_all();
	room_goto(room_dw_mansion_top_post);
}
if (con == 16 && !d_ex() && skipbattle == 0)
{
	con = 17;
	alarm[0] = 40;
	global.plot = 170;
}
if (con == 18)
{
	con = 19;
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
	with (obj_ch2_scene26_powers_combined)
		instance_destroy();
	with (obj_power_up_fx)
		instance_destroy();
	with (obj_thrashmachine)
		instance_destroy();
	with (obj_anime_bg_controller)
		instance_destroy();
	with (obj_ch2_scene26_wall)
		instance_destroy();
	with (obj_ch2_scene26_cityscape)
		instance_destroy();
	if (i_ex(obj_looping_tiled_area))
	{
		with (obj_looping_tiled_area)
			instance_destroy();
	}
	with (anime_bg)
		instance_destroy();
	snd_free_all();
	global.char[1] = 0;
	global.char[2] = 0;
	global.flag[9] = 2;
	encounterflag = 551;
	global.flag[54] = encounterflag;
	scr_battle(84, 2, 0, 0, 0);
	global.flag[9] = 1;
	camerax_set(0);
	cameray_set(0);
}
if (con == 19 && i_ex(obj_battlecontroller))
{
	if (i_ex(whiteall))
	{
		whiteall.image_alpha -= 0.1;
		if (whiteall.image_alpha < 0)
		{
			with (whiteall)
				instance_destroy();
		}
	}
}
if (con == 20)
{
	con = 21;
	alarm[0] = 30;
	snd_volume(global.batmusic[1], 0, 25);
}
if (con == 22)
{
	snd_free(global.batmusic[0]);
	snd_volume(global.currentsong[1], 0, 0);
	snd_resume(global.currentsong[1]);
	snd_volume(global.currentsong[1], 1, 20);
	with (obj_monsterparent)
		instance_destroy();
	with (obj_bulletparent)
		instance_destroy();
	with (obj_heroparent)
		instance_destroy();
	if (i_ex(obj_battleback))
	{
		with (obj_battleback)
			destroy = 1;
	}
	if (i_ex(obj_battlecontroller))
		instance_destroy(obj_battlecontroller);
	scr_tempsave();
	room_goto(room_dw_mansion_top_post);
}
if (con == 11)
{
	if (scr_sideb_get_phase() < 2)
	{
		if (customcon == 1 && !d_ex())
		{
			con = 12;
			if (power_up == -4)
			{
				power_up = instance_create(camerax() + (view_wport[0] / 2), cameray() + (view_hport[0] / 2), obj_ch2_scene26_powers_combined);
				if (i_ex(obj_ch2_scene26_cityscape))
				{
					with (obj_ch2_scene26_cityscape)
						auto_scroll = false;
				}
			}
		}
	}
	else if (!i_ex(obj_cutscene_master))
	{
		global.interact = 0;
		global.facing = 0;
		con = 30;
		kris_active = true;
	}
}
if (make_npc_a)
{
	make_npc_a = false;
	queen_npc = instance_create(qu_actor.x, qu_actor.y, obj_npc_sign);
	queen_npc.sprite_index = qu_actor.sprite_index;
	queen_npc.image_index = qu_actor.image_index;
	with (queen_npc)
		scr_depth();
}
if (con == 30 && !d_ex() && scr_sideb_get_phase() >= 2)
{
	if (kris_active)
	{
		if (obj_mainchara.x < 1650)
		{
			obj_mainchara.x += 8;
			global.facing = 1;
			global.interact = 1;
			scr_speaker("ralsei");
			msgsetloc(0, "\\E2* Kris^1, the Fountain is right over there!/%", "obj_ch2_scene26_slash_Step_0_gml_1292_0_b");
			d_make();
			extra_con = 1;
		}
		if (extra_con > 0)
		{
			extra_con++;
			if (extra_con > 2 && !i_ex(obj_writer))
			{
				global.interact = 0;
				extra_con = 0;
			}
		}
		if (obj_mainchara.x > 2300)
		{
			kris_active = false;
			con = 31;
			global.interact = 1;
			queen_npc.visible = 0;
		}
	}
}
if (con == 31 && scr_sideb_get_phase() >= 2)
{
	con = 32;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	qu = 4;
	qu_actor = instance_create(queen_npc.x, queen_npc.y, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_up;
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene26_slash_Step_0_gml_1328_0");
	c_talk_wait();
	c_walkdirect(2105, 200, 30);
	c_pannable(1);
	c_panspeed(-5, 0, 15);
	c_wait(10);
	c_sel(kr);
	c_facing("l");
	c_sel(ra);
	c_facing("l");
	c_wait(20);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* ..^1. Uh^1, hey. Hey^1, wait./%", "obj_ch2_scene26_slash_Step_0_gml_1349_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* You don't have to..^1. I mean.../%", "obj_ch2_scene26_slash_Step_0_gml_1357_0_b");
	c_talk_wait();
	c_sprite(spr_cutscene_11b_susie_scratch);
	c_addxy(0, -6);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\ED* Uh^1, it doesn't have to be..^1. goodbye^1, you know?/", "obj_ch2_scene26_slash_Step_0_gml_1368_0");
	c_facenext("queen", 21);
	c_msgnextloc("\\EL* Error: I Have No Idea What You're Talking About/%", "obj_ch2_scene26_slash_Step_0_gml_1370_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("u");
	c_addxy(0, 6);
	c_speaker("susie");
	c_msgsetloc(0, "\\E3* We..^1. have our own Dark World./", "obj_ch2_scene26_slash_Step_0_gml_1379_0");
	c_msgnextloc("\\EA* You can stay there^1, you know?/", "obj_ch2_scene26_slash_Step_0_gml_1380_0");
	c_msgnextloc("\\E1* Who knows^1, maybe someday you'll even.../%", "obj_ch2_scene26_slash_Step_0_gml_1381_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Get to meet Noelle again?/%", "obj_ch2_scene26_slash_Step_0_gml_1388_0");
	c_talk_wait();
	c_wait(30);
	c_sel(qu);
	c_facing("l");
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Really/%", "obj_ch2_scene26_slash_Step_0_gml_1399_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_11b_susie_scratch);
	c_addxy(0, -6);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Uhh^1, maybe?/%", "obj_ch2_scene26_slash_Step_0_gml_1411_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(0);
	c_soundplay(snd_queen_laugh_0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_addxy(8, 0);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\EP* Fatal Exception \"Sweet\" In Oh Hell Yeah.EXE/", "obj_ch2_scene26_slash_Step_0_gml_1424_0");
	c_msgnextloc("\\EQ* Susie I Knew You Were A Nice Girl/%", "obj_ch2_scene26_slash_Step_0_gml_1425_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("d");
	c_addxy(-8, 0);
	c_sel(su);
	c_autowalk(1);
	c_facing("l");
	c_addxy(0, 6);
	c_wait(15);
	c_facing("r");
	c_wait(15);
	c_facing("l");
	c_wait(15);
	c_facing("r");
	c_wait(15);
	c_facing("l");
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\EG* Hey^1, uhh^1, I'm just.../%", "obj_ch2_scene26_slash_Step_0_gml_1448_0");
	c_talk_wait();
	c_wait(30);
	c_sprite(spr_cutscene_09_susie_exasperated);
	c_shakeobj();
	c_soundplay(snd_whip_crack_only);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* Kris^1, go seal the fountain!/%", "obj_ch2_scene26_slash_Step_0_gml_1459_0");
	c_talk_wait();
	c_facing("u");
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* I.../%", "obj_ch2_scene26_slash_Step_0_gml_1468_0");
	c_talk_wait();
	c_wait(30);
	c_facing("susieunhappy");
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* ..^1. I'm gonna go..^1. see Noelle before you do./%", "obj_ch2_scene26_slash_Step_0_gml_1479_0");
	c_talk_wait();
	c_walk_wait("d", 5, 6);
	c_walk("l", 10, 60);
	c_sel(qu);
	c_facing("r");
	c_sel(ra);
	c_walkdirect_wait(2042, 245, 30);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EQ* Umm^1, Kris^1, I'll tell Queen about our town!/%", "obj_ch2_scene26_slash_Step_0_gml_1496_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(0);
	c_soundplay(snd_queen_laugh_0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_addxy(8, 0);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\EN* Kris I Look Forward To Being Your Wacky Roommate/%", "obj_ch2_scene26_slash_Step_0_gml_1509_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("d");
	c_sel(ra);
	c_facing("u");
	c_panobj(kr_actor, 30);
	c_sel(qu);
	c_visible(0);
	c_var_instance(id, "make_npc_b", true);
	c_wait(30);
	c_pannable(0);
	c_actortokris();
	c_terminatekillactors();
}
if (make_npc_b)
{
	make_npc_b = false;
	scr_losechar();
	queen_npc.x = qu_actor.x;
	queen_npc.y = qu_actor.y;
	queen_npc.sprite_index = qu_actor.sprite_index;
	queen_npc.image_index = qu_actor.image_index;
	queen_npc.visible = 1;
	ralsei_npc = instance_create(ra_actor.x, ra_actor.y, obj_npc_sign);
	ralsei_npc.sprite_index = ra_actor.sprite_index;
	ralsei_npc.image_index = ra_actor.image_index;
	with (ralsei_npc)
		scr_depth();
}
if (con == 32 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.plot = 170;
	global.interact = 0;
	global.facing = 0;
}
if (rudebuster)
{
	rudebuster = false;
	rudebusteranim = instance_create(camerax() - 60, room_height / 2, obj_rudebuster_bolt);
	rudebusteranim.target = qu_actor;
}
if (winelaser)
{
	_winelaser = instance_create(queenwinehand.x, queenwinehand.y, obj_ch2_scene26_wine_laser);
	winelaser = false;
	_winelaser.timer = -10;
	_winelaser.noelle_x = no_actor.x + (no_actor.sprite_width / 2);
}
if (shakeloop)
{
	if (shakecon)
	{
		shakecon = false;
		alarm[1] = 30;
		snd_play(snd_closet_impact);
		instance_create(0, 0, obj_shake);
	}
}
if (fist_explode)
{
	fist_explode = false;
	alarm[2] = 3;
}
if (platform_fall)
{
	platform_timer++;
	if (platform_timer > 15)
	{
		platform_fall = false;
	}
	else
	{
		platform_y += 30;
		layer_y("TILES", platform_y);
		if (i_ex(obj_ch2_scene26_wall))
		{
			with (obj_ch2_scene26_wall)
			{
				looping_coaster_top.y_pos += 30;
				looping_coaster.y_pos += 30;
			}
		}
	}
}
if (hand_shake)
{
	hand_shake = false;
	for (var i = 0; i < 3; i++)
	{
		with (hand_platform[i])
			scr_shakeobj();
	}
}
if (hand_catch)
{
	for (var i = 0; i < 3; i++)
	{
		var _i = i;
		with (hand_platform[i])
		{
			y = lerp(y, 70 + (_i * 100), 0.125);
			if (_i == 2 && y >= 270)
				hand_catch = false;
		}
	}
}
if (cityscape_fall)
{
	cityscape_fall = false;
	if (i_ex(obj_ch2_scene26_cityscape))
	{
		with (obj_ch2_scene26_cityscape)
			auto_scroll_y = true;
	}
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
if (set_queen_voice)
{
	set_queen_voice = false;
	global.typer = 62;
}
if (rockanim)
{
	layer_x("BG_rocks", camerax());
	instance_create(camerax(), cameray() + 480, obj_ch2_scene26_rockstarter);
	layer_vspeed("BG_rocks", -5);
	layer_x("BG_Rocks_Small", camerax());
	var rockstart = instance_create(camerax(), cameray() + 420, obj_ch2_scene26_rockstarter);
	rockstart.smallrocks = true;
	layer_vspeed("BG_Rocks_Small", -2);
	rockanim = false;
}
if (rockdog)
{
	rockdog = false;
	rockdogobj = instance_create(__view_get(e__VW.XView, 0) + 545 + 12, cameray() + 6 + view_hport[0] + 100, obj_ch2_scene26_rock_dog);
}
if (rockdogstop)
{
	rockdogstop = false;
	instance_destroy(rockdogobj);
}
if (rockanimstop)
{
	rockanimstop = false;
	layer_vspeed("BG_rocks", 0);
	layer_set_visible("BG_rocks", 0);
	layer_vspeed("BG_Rocks_Small", 0);
	layer_set_visible("BG_Rocks_Small", 0);
}
if (queen_afterimage)
{
	if (qu_actor != -4)
	{
		with (qu_actor)
			scr_afterimagefast();
	}
}
if (wallanimstart)
{
	if (wallcon == 1)
	{
		wallcon = 99;
		if (i_ex(obj_ch2_scene26_wall))
		{
			with (obj_ch2_scene26_wall)
				wall_con = 1;
		}
	}
	if (wallcon == 2)
	{
		wallcon = 99;
		wallanimstart = false;
		if (i_ex(obj_ch2_scene26_wall))
		{
			with (obj_ch2_scene26_wall)
				wall_con = 3;
		}
		if (i_ex(obj_ch2_scene26_cityscape))
		{
			with (obj_ch2_scene26_cityscape)
				auto_scroll = true;
		}
	}
}
if (berdly_coaster_start)
{
	berdly_coaster_start = false;
	berdly_coaster = instance_create(camerax(), cameray(), obj_berdlycoaster_event);
}
if (berdly_coaster_leave)
{
	berdly_coaster_leave = false;
	with (berdly_coaster)
		con = 4;
}
if (laser_con >= 0)
{
	if (laser_con == 0)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			show_laser_outline = true;
	}
	if (laser_con == 1)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
		{
			show_hands = true;
			hand_both_reveal = true;
		}
	}
	if (laser_con == 2)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			knife_reveal = true;
	}
	if (laser_con == 3)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			knife_stab = true;
	}
	if (laser_con == 5)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			fade_away = true;
	}
	if (laser_con == 6)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			show_lightners = true;
	}
	if (laser_con == 7)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			show_mini_fountains = true;
	}
	if (laser_con == 8)
	{
		laser_con = 99;
		with (obj_ch2_scene26_cityscape)
			merge_lightners = true;
	}
}
if (release_queen)
{
	release_queen = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			release = true;
	}
}
if (queen_laugh_start)
{
	queen_laugh_start = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			laugh = true;
	}
}
if (queen_laugh_stop)
{
	queen_laugh_stop = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			laugh = false;
	}
}
if (hand_release)
{
	hand_release = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
		{
			if (scr_sideb_get_phase() < 2)
				release = true;
			else
				release_normal = true;
		}
	}
}
if (hand_leave)
{
	hand_leave = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			leave = true;
	}
}
if (su_struggle)
{
	su_struggle = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_struggle = true;
	}
}
if (su_shocked)
{
	su_shocked = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_shocked = true;
	}
}
if (su_look_left)
{
	su_look_left = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_look_left = true;
	}
}
if (su_look_right)
{
	su_look_right = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_look_right = true;
	}
}
if (su_grin_1)
{
	su_grin_1 = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_grin_1 = true;
	}
}
if (su_grin_2)
{
	su_grin_2 = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_grin_2 = true;
	}
}
if (su_squint_1)
{
	su_squint_1 = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_squint_1 = true;
	}
}
if (su_squint_2)
{
	su_squint_2 = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_squint_2 = true;
	}
}
if (su_concerned)
{
	su_concerned = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			su_concerned = true;
	}
}
if (ra_struggle)
{
	ra_struggle = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_struggle = true;
	}
}
if (ra_huh)
{
	ra_huh = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_huh = true;
	}
}
if (ra_look)
{
	ra_look = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_look = true;
	}
}
if (ra_smile)
{
	ra_smile = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_smile = true;
	}
}
if (ra_scared)
{
	ra_scared = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_scared = true;
	}
}
if (ra_stern)
{
	ra_stern = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_stern = true;
	}
}
if (ra_mu)
{
	ra_mu = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_mu = true;
	}
}
if (ra_shake)
{
	ra_shake = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			ra_shake = true;
	}
}
if (shake_hand)
{
	shake_hand = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			scr_shakeobj();
	}
}
if (queen_laugh_start)
{
	queen_laugh_start = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			laugh = true;
	}
}
if (queen_laugh_stop)
{
	queen_laugh_stop = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			laugh = false;
	}
}
if (queen_surprised)
{
	queen_surprised = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			surprised = true;
	}
}
if (queen_leave)
{
	queen_leave = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			leave = true;
	}
}
if (queen_leave_fast)
{
	queen_leave_fast = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			leave_fast = true;
	}
}
if (queen_release_fast)
{
	queen_release_fast = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			release_fast = true;
	}
}
