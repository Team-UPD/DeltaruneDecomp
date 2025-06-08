if (con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(kr);
	c_visible(0);
	su = actor_count + 1;
	su_actor = instance_create(1670, 130, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_down_dw;
	c_sel(su);
	c_visible(0);
	ra = actor_count + 2;
	ra_actor = instance_create(1670, 130, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_walk_down;
	c_sel(ra);
	c_visible(0);
	qu = actor_count + 3;
	qu_actor = instance_create(510, cameray() + view_hport[0] + 80, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_left;
	no = actor_count + 4;
	no_actor = instance_create(400, 210, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_cutscene_23b_noelle_kneel_forward;
	be = actor_count + 5;
	be_actor = instance_create(-60, 240, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_right_dw;
	queenfistleft = scr_dark_marker(78, cameray() + view_hport[0] + 100, spr_cutscene_27_queen_hand);
	queenfistleft.depth = 1000100;
	queenfistleft.image_speed = 0.15;
	cutscene_master.save_object[0] = id;
}
if (con == 1)
{
	con = 10;
	alarm[0] = 30;
	var bigqueen = instance_find(obj_ch2_scene26_gigaqueen, 0);
	c_mus("free_all");
	c_var_instance(bigqueen, "head_y_pos", 464);
	c_var_instance(bigqueen, "rem_head_y_pos", 464);
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
	c_wait(120);
	c_msgside("bottom");
	c_speaker("queen_2");
	c_fefc(0, 0);
	c_msgsetloc(0, "\\E1* Noelle/%", "obj_ch2_scene27_slash_Step_0_gml_70_0");
	c_talk_wait();
	c_var_instance(bigqueen, "climb", 1);
	c_wait(41);
	c_msgsetloc(0, "\\E1* Darling/%", "obj_ch2_scene27_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_var_instance(bigqueen, "climb", 1);
	c_wait(41);
	c_msgsetloc(0, "\\E1* Honey/%", "obj_ch2_scene27_slash_Step_0_gml_72_0");
	c_talk_wait();
	c_var_instance(bigqueen, "climb", 1);
	c_wait(41);
	c_msgsetloc(0, "\\E1* Sweetie/%", "obj_ch2_scene27_slash_Step_0_gml_73_0");
	c_talk_wait();
	c_var_instance(bigqueen, "climb", 1);
	c_wait(41);
	c_msgsetloc(0, "\\E1* Gravy/%", "obj_ch2_scene27_slash_Step_0_gml_74_0");
	c_talk_wait();
	c_var_instance(id, "hand_release", true);
	c_wait(90);
	c_mus2("initloop", "wind_highplace.ogg", 0);
	c_wait(90);
	c_speaker("queen_2");
	c_fefc(0, 0);
	c_var_instance(id, "set_queen_voice", true);
	c_msgsetloc(0, "\\E6* Take..^1. The Pin..^1. I Gave You/", "obj_ch2_scene27_slash_Step_0_gml_82_0");
	c_msgnextloc("\\E6* And..^1. Stab The Earth/", "obj_ch2_scene27_slash_Step_0_gml_83_0");
	c_msgnextloc("\\E7* Creating..^1. Our New..^1. Supreme Empire/", "obj_ch2_scene27_slash_Step_0_gml_84_0");
	c_facenext("noelle", 12);
	c_msgnextloc("\\EC* I..^1. I.../", "obj_ch2_scene27_slash_Step_0_gml_86_0");
	c_facenext("queen2", "B");
	c_msgnextloc("\\EB* What's..^1. Wrong..^1. Noelle?/", "obj_ch2_scene27_slash_Step_0_gml_88_0");
	c_msgnextloc("\\EB* I Know It Would..^1. Make You..^1. Happy/", "obj_ch2_scene27_slash_Step_0_gml_89_0");
	c_msgnextloc("\\EB* Or..^1. Should I^1, With The Last 1`% Of My Battery.../%", "obj_ch2_scene27_slash_Step_0_gml_90_0");
	c_talk_wait();
	c_sel(no);
	c_autowalk(0);
	c_sprite(spr_cutscene_23b_noelle_kneel_forward);
	c_imageindex(0);
	c_imagespeed(0);
	c_var_instance(id, "shake_hand", true);
	c_wait(15);
	c_var_instance(id, "shake_hand", true);
	c_wait(15);
	c_var_instance(id, "shake_hand", true);
	c_wait(50);
	c_speaker("queen_2");
	c_fefc(0, 0);
	c_msgsetloc(0, "\\E7* Crush Susie Into 8..^1. Bits?/%", "obj_ch2_scene27_slash_Step_0_gml_103_0");
	c_talk_wait();
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\EW* Leave.../%", "obj_ch2_scene27_slash_Step_0_gml_112_0");
	c_talk_wait();
	c_mus("free");
	c_sel(no);
	c_autowalk(1);
	c_facing("u");
	c_soundplay(snd_step1);
	c_wait(30);
	c_sprite(spr_noelle_point_dw);
	c_soundplay(snd_wing);
	c_shakeobj();
	c_wait(40);
	c_var_instance(bigqueen, "head_sprite", spr_cutscene_27_queen_damaged_unhappy);
	c_speaker("noelle");
	c_msgsetloc(0, "\\Ef* Leave Susie ALONE!!/", "obj_ch2_scene27_slash_Step_0_gml_125_0");
	c_msgnextloc("\\Ef* You think listening to YOU makes me happy!?/", "obj_ch2_scene27_slash_Step_0_gml_126_0");
	c_msgnextloc("\\Ef* No!/", "obj_ch2_scene27_slash_Step_0_gml_127_0");
	c_msgnextloc("\\Ef* I'll never be happy^1! Not if I'm controlled by you!/", "obj_ch2_scene27_slash_Step_0_gml_128_0");
	c_msgnextloc("\\Ef* Why can't you understand that!?/", "obj_ch2_scene27_slash_Step_0_gml_129_0");
	c_facenext("queen2", "5");
	c_msgnextloc("\\E5* .../", "obj_ch2_scene27_slash_Step_0_gml_131_0");
	c_msgnextloc("\\E5* .../", "obj_ch2_scene27_slash_Step_0_gml_132_0");
	c_msgnextloc("\\E5* ..^1. Noelle.../", "obj_ch2_scene27_slash_Step_0_gml_133_0");
	c_msgnextloc("\\E5* Perhaps My Computations Were/", "obj_ch2_scene27_slash_Step_0_gml_134_0");
	c_msgnextloc("\\E5* Miscalibrated/", "obj_ch2_scene27_slash_Step_0_gml_135_0");
	c_facenext("noelle", 12);
	c_msgnextloc("\\EC* .../", "obj_ch2_scene27_slash_Step_0_gml_137_0");
	c_facenext("queen2", "5");
	c_msgnextloc("\\E5* Noelle/", "obj_ch2_scene27_slash_Step_0_gml_139_0");
	c_msgnextloc("\\E5* Disregard..^1. Me..^1. And.../", "obj_ch2_scene27_slash_Step_0_gml_140_0");
	c_msgnextloc("\\E5* With Your Own Power/", "obj_ch2_scene27_slash_Step_0_gml_141_0");
	c_msgnextloc("\\E1* Choose The World..^1. That Makes You Happy/%", "obj_ch2_scene27_slash_Step_0_gml_142_0");
	c_talk();
	c_wait_box(6);
	c_var_instance(id, "queen_sad", 1);
	c_wait_box(14);
	c_var_instance(id, "queen_happy", 1);
	c_wait_talk();
	c_shake();
	c_mus("free_all");
	c_soundplay_x(snd_closet_impact, 1, 0.5);
	c_var_instance(bigqueen, "damagedfx", 0);
	c_var_instance(id, "static_queen", true);
	c_var_instance(id, "su_shocked", true);
	c_var_instance(id, "ra_look", true);
	c_wait(90);
	c_var_instance(id, "su_look_right", true);
	c_sel(no);
	c_facing("u");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E2* ..^1. Queen?/", "obj_ch2_scene27_slash_Step_0_gml_161_0");
	c_msgnextloc("\\EC* Q-Queen!/", "obj_ch2_scene27_slash_Step_0_gml_162_0");
	c_msgnextloc("\\ED* Queen^1, are you okay...?/", "obj_ch2_scene27_slash_Step_0_gml_163_0");
	c_facenext("ralsei", "I");
	c_msgnextloc("\\EI* Seems she ran out of battery power./", "obj_ch2_scene27_slash_Step_0_gml_165_0");
	c_msgnextloc("\\E2* Guess we can seal the fountain now^1, right everybody?/%", "obj_ch2_scene27_slash_Step_0_gml_166_0");
	c_talk();
	c_wait_box(1);
	c_sprite(spr_noelle_head_lowered_left_dw);
	c_wait_box(2);
	c_facing("u");
	c_wait_box(3);
	c_var_instance(id, "ra_smile", true);
	c_waittalk();
	c_wait(90);
	c_var_instance(id, "ra_look", true);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EK* Everybody?/%", "obj_ch2_scene27_slash_Step_0_gml_173_0");
	c_talk_wait();
	c_wait(60);
	c_mus2("initloop", "noelle_normal.ogg", 0);
	c_speaker("noelle");
	c_msgsetloc(0, "\\Ee* Queen..^1. she said.../", "obj_ch2_scene27_slash_Step_0_gml_180_0");
	c_msgnextloc("\\Ee* \"Choose the world that makes you happy...\"/", "obj_ch2_scene27_slash_Step_0_gml_181_0");
	c_msgnextloc("\\Ee* I..^1. don't want to live in a world ruled by her./", "obj_ch2_scene27_slash_Step_0_gml_182_0");
	c_msgnextloc("\\Ed* ..^1. but^1, if that wasn't the case.../", "obj_ch2_scene27_slash_Step_0_gml_183_0");
	c_msgnextloc("\\Eb* I wonder if this world..^1. wouldn't be so bad?/", "obj_ch2_scene27_slash_Step_0_gml_184_0");
	c_facenext("ralsei", 21);
	c_msgnextloc("\\EL* Huh?/", "obj_ch2_scene27_slash_Step_0_gml_186_0");
	c_facenext("noelle", "b");
	c_msgnextloc("\\Eb* ..^1. Susie^1, don't you think so too...?/", "obj_ch2_scene27_slash_Step_0_gml_188_0");
	c_facenext("susie", 6);
	c_msgnextloc("\\E6* I..^1. uh^1,/", "obj_ch2_scene27_slash_Step_0_gml_190_0");
	c_msgnextloc("\\ED* Now that you mention it.../", "obj_ch2_scene27_slash_Step_0_gml_191_0");
	c_msgnextloc("\\E2* Kris^1, isn't this world just..^1. BETTER?/", "obj_ch2_scene27_slash_Step_0_gml_192_0");
	c_msgnextloc("\\EA* We make so many..^1. friends here. Y'know?/", "obj_ch2_scene27_slash_Step_0_gml_193_0");
	c_facenext("noelle", "2");
	c_msgnextloc("\\E2* I've never..^1. had an adventure like this before./", "obj_ch2_scene27_slash_Step_0_gml_195_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* With axes..^1. and battles..^1. and magic./", "obj_ch2_scene27_slash_Step_0_gml_197_0");
	c_facenext("noelle", "9");
	c_msgnextloc("\\E9* Where everything can be healed with a little spell./", "obj_ch2_scene27_slash_Step_0_gml_199_0");
	c_facenext("susie", "Q");
	c_msgnextloc("\\EQ* And no matter what happens.../", "obj_ch2_scene27_slash_Step_0_gml_201_0");
	c_msgnextloc("\\EY* No one tells us what to do!/", "obj_ch2_scene27_slash_Step_0_gml_202_0");
	c_facenext("noelle", 8);
	c_msgnextloc("\\E8* Gosh^1, yeah!/", "obj_ch2_scene27_slash_Step_0_gml_204_0");
	c_msgnextloc("\\E9* S-so^1, even if things were really scary just now.../", "obj_ch2_scene27_slash_Step_0_gml_205_0");
	c_msgnextloc("\\Ed* ..^1. I mean.../%", "obj_ch2_scene27_slash_Step_0_gml_206_0");
	c_talk();
	c_wait_box(0);
	c_sel(no);
	c_sprite(spr_noelle_head_lowered_dw);
	c_wait_box(2);
	c_sprite(spr_noelle_head_lowered_right_dw);
	c_wait_box(3);
	c_sprite(spr_noelle_head_lowered_dw);
	c_wait_box(4);
	c_sprite(spr_noelle_head_lowered_left_dw);
	c_wait_box(6);
	c_var_instance(id, "ra_huh", true);
	c_wait_box(8);
	c_sprite(spr_noelle_head_lowered_dw);
	c_wait_box(10);
	c_var_instance(id, "su_look_left", true);
	c_wait_box(12);
	c_var_instance(id, "su_grin_1", true);
	c_wait_box(15);
	c_sprite(spr_noelle_head_lowered_left_dw);
	c_halt();
	c_wait_box(19);
	c_sprite(spr_noelle_head_lowered_dw);
	c_wait_box(21);
	c_var_instance(id, "su_grin_2", true);
	c_wait_box(22);
	c_var_instance(id, "su_grin_1", true);
	c_wait_box(24);
	c_sprite(spr_noelle_head_lowered_left_dw);
	c_halt();
	c_wait_box(25);
	c_var_instance(id, "su_look_right", true);
	c_sprite(spr_noelle_walk_up_dw);
	c_halt();
	c_wait_box(26);
	c_sprite(spr_noelle_head_lowered_dw);
	c_waittalk();
	c_wait(30);
	c_var_instance(id, "su_squint_2", true);
	c_sel(be);
	c_autowalk(0);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right);
	c_imagespeed(0.25);
	c_walkdirect(262, 222, 40);
	c_delaycmd(41, "imagespeed", 0);
	c_delaycmd(41, "imageindex", 0);
	c_mus2("volume", 0, 40);
	c_wait(20);
	c_sel(no);
	c_sprite(spr_noelle_smile_left_dw);
	c_autowalk(0);
	c_imagespeed(0);
	c_imageindex(1);
	c_emote("!", 20);
	c_wait(20);
	c_mus("free");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EI* So is there any reason not to...?/", "obj_ch2_scene27_slash_Step_0_gml_221_0");
	c_facenext("noelle", "4");
	c_msgnextloc("\\E4* Not that I can think of./", "obj_ch2_scene27_slash_Step_0_gml_223_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* Me neither./", "obj_ch2_scene27_slash_Step_0_gml_225_0");
	c_facenext("berdly", "5");
	c_msgnextloc("\\E5* Then^1, Noelle..^1. let THIS be my real apology!/%", "obj_ch2_scene27_slash_Step_0_gml_227_0");
	c_talk();
	c_wait_box(2);
	c_sel(no);
	c_sprite(spr_noelle_smile_forward_dw);
	c_wait_box(4);
	c_var_instance(id, "su_squint_1", true);
	c_waittalk();
	c_sprite(spr_noelle_smile_left_dw);
	c_autowalk(0);
	c_imagespeed(0);
	c_imageindex(1);
	c_var_instance(id, "su_squint_2", true);
	c_sel(be);
	c_autowalk(0);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_haliberd_form_normal);
	else
		c_sprite(spr_cutscene_27_berdly_haliberd_form_loop);
	c_arg_objectxy(be_actor, 0, 0);
	c_setxy(x, y);
	c_imageindex(0);
	c_soundplay(snd_weaponpull);
	c_var_instance(id, "berdly_power_up_start", true);
	c_wait(60);
	c_var_instance(id, "berdly_power_up", true);
	c_mus2("initloop", "gigaqueen_pre.ogg", 0);
	c_wait(60);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E4* Concentrating my will into this blade.../", "obj_ch2_scene27_slash_Step_0_gml_244_0");
	c_msgnextloc("\\EI* I will make a new Fountain.../", "obj_ch2_scene27_slash_Step_0_gml_245_0");
	c_msgnextloc("\\E4* And unleash a bright future!/", "obj_ch2_scene27_slash_Step_0_gml_246_0");
	c_msgnextloc("* A future that shines for US!/", "obj_ch2_scene27_slash_Step_0_gml_378_0");
	c_msgnextloc("* A future whose brightness... is born from DARKNESS!/%", "obj_ch2_scene27_slash_Step_0_gml_247_0");
	c_talk_wait();
	c_var_instance(id, "berdly_power_up_cancel", true);
	c_mus("pause");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_halt_normal);
	else
		c_sprite(spr_cutscene_27_berdly_halt);
	c_sel(no);
	c_sprite(spr_noelle_surprise_left_dw);
	c_var_instance(id, "su_concerned", true);
	c_sel(be);
	c_emote("!", 30);
	c_sel(no);
	c_emote("!", 30);
	c_mus("pause");
	c_soundplay(snd_whip_crack_only);
	c_var_instance(id, "ra_scared", true);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EY* STOP!/%", "obj_ch2_scene27_slash_Step_0_gml_403_0");
	c_talk_wait();
	c_wait(60);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EY* What.../", "obj_ch2_scene27_slash_Step_0_gml_256_0");
	c_msgnextloc("\\EZ* In the world are you all doing?/%", "obj_ch2_scene27_slash_Step_0_gml_257_0");
	c_talk_wait();
	c_wait(60);
	c_mus("resume");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_haliberd_form_stop_normal);
	else
		c_sprite(spr_cutscene_27_berdly_haliberd_form_stop);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EI* Well^1, we thought we would just%%", "obj_ch2_scene27_slash_Step_0_gml_268_0");
	c_talk_wait();
	c_var_instance(id, "su_look_right", true);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_halt_talk_normal);
	else
		c_sprite(spr_cutscene_27_berdly_halt_talk);
	c_mus("pause");
	c_soundplay(snd_whip_crack_only);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EY* Stop./%", "obj_ch2_scene27_slash_Step_0_gml_275_0");
	c_talk_wait();
	c_mus("resume");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_haliberd_form_stop_normal);
	else
		c_sprite(spr_cutscene_27_berdly_haliberd_form_stop);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* I mean -%%", "obj_ch2_scene27_slash_Step_0_gml_277_0");
	c_talk_wait();
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_halt_look_up_normal);
	else
		c_sprite(spr_cutscene_27_berdly_halt_look_up);
	c_mus("free");
	c_soundplay(snd_whip_crack_only);
	c_var_instance(id, "ra_shake", true);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EY* Stop!/", "obj_ch2_scene27_slash_Step_0_gml_283_0");
	c_msgnextloc("\\EZ* Do you realize what will happen if you do that?/", "obj_ch2_scene27_slash_Step_0_gml_284_0");
	c_facenext("berdly", 5);
	c_msgnextloc("\\E5* I..^1. we'll..^1. just.../", "obj_ch2_scene27_slash_Step_0_gml_286_0");
	c_facenext("ralsei", "T");
	c_msgnextloc("\\ET* You'll bring the Roaring./%", "obj_ch2_scene27_slash_Step_0_gml_288_0");
	c_talk();
	c_wait_box(3);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_halt_look_forward_normal);
	else
		c_sprite(spr_cutscene_27_berdly_halt_look_forward);
	c_wait_box(5);
	c_var_instance(id, "ra_stern", true);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_cutscene_27_berdly_halt_look_up_normal);
	else
		c_sprite(spr_cutscene_27_berdly_halt_look_up);
	c_waittalk();
	c_var_instance(blackall, "image_blend", 0);
	c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
	c_var_instance(id, "hide_border", true);
	c_wait(60);
	c_waitcustom();
}
if (con == 11 && customcon == 1)
{
	con = 12;
	alarm[0] = 30;
	room_persistent = true;
	room_goto(room_legend_neo);
}
if (con == 13 || scr_cutscene_loaded())
{
	room_persistent = false;
	static_queen_stop = true;
	con = 49;
	alarm[0] = 30;
	c_waitcustom_end();
	c_var_instance(id, "hide_border", false);
	c_var_instance(id, "show_border", true);
	c_sel(be);
	c_autowalk(1);
	c_setxy(220, 222);
	c_sprite(spr_cutscene_27_berdly_shocked);
	c_var_instance(id, "queen_surprised", true);
	c_var_instance(id, "su_shocked", true);
	c_var_instance(blackall, "image_blend", 0);
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
	c_wait(165);
	c_var_instance(id, "ra_look", true);
	c_speaker("queen");
	c_msgsetloc(0, "\\E8* Oh Damn I Did Not Know That/", "obj_ch2_scene27_slash_Step_0_gml_343_0");
	c_facenext("ralsei", "L");
	c_msgnextloc("\\EL* You..^1. didn't!?/", "obj_ch2_scene27_slash_Step_0_gml_345_0");
	c_msgnextloc("\\EC* But your whole plan was to --/%", "obj_ch2_scene27_slash_Step_0_gml_346_0");
	c_talk();
	c_wait_box(2);
	c_var_instance(id, "ra_huh", true);
	c_wait_box(3);
	c_var_instance(id, "ra_scared", true);
	c_waittalk();
	c_var_instance(id, "su_squint_1", true);
	c_var_instance(id, "ra_mu", true);
	c_var_instance(id, "queen_laugh_start", true);
	c_soundplay(snd_queen_laugh_0);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_up_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_up);
	c_halt();
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\EN* I'm Just A Computer LMAO I Don't Know Everything/", "obj_ch2_scene27_slash_Step_0_gml_361_0");
	c_msgnextloc("\\ED* I Was Just Guessing Based Off The Knight's Actions/", "obj_ch2_scene27_slash_Step_0_gml_362_0");
	c_msgnextloc("\\EB* Why The Heck (Hell) Would I Want To End The World/%", "obj_ch2_scene27_slash_Step_0_gml_363_0");
	c_talk_wait();
	c_var_instance(id, "queen_laugh_stop", true);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right);
	c_halt();
	c_sel(no);
	c_sprite(spr_noelle_smile_left_dw);
	c_mus2("initloop", "noelle_school.ogg", 0);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EI* W..^1. well^1, that's a relief!/%", "obj_ch2_scene27_slash_Step_0_gml_377_0");
	c_talk_wait();
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw_unhappy);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right_unhappy);
	c_halt();
	c_sel(no);
	c_facing("l");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* Uhh..^1. ummm..^1. I'm sorry. I..^1. I.../", "obj_ch2_scene27_slash_Step_0_gml_388_0");
	c_msgnextloc("\\E8* After everything^1, I just caused trouble for you again^1, Noelle./", "obj_ch2_scene27_slash_Step_0_gml_389_0");
	c_facenext("queen", 13);
	var small_text = stringsetloc("I Thought About It While Charging My Battery", "obj_ch2_scene27_slash_Step_0_gml_656_0");
	scr_smallface(1, "queen", 1, "leftmid", "bottom", small_text);
	c_msgnextloc("\\ED* That's Okay Berdly I Understand \\f1 /", "obj_ch2_scene27_slash_Step_0_gml_391_0");
	c_msgnextloc("\\E1* You Cannot Calculate Other People's Feelings/%", "obj_ch2_scene27_slash_Step_0_gml_392_0");
	c_talk();
	c_wait_box(1);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_depressed_dw_right);
	else
		c_sprite(spr_cutscene_27_berdly_depressed);
	c_sel(no);
	c_facing("l");
	c_waittalk();
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_up_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_up);
	c_halt();
	c_wait(5);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* You..^1. you understand how I feel?/%", "obj_ch2_scene27_slash_Step_0_gml_402_0");
	c_talk_wait();
	c_var_instance(id, "queen_laugh_start", true);
	c_soundplay(snd_queen_laugh_0);
	c_sel(no);
	c_facing("u");
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\EN* Not Really LMAO I Just Don't Want Noelle To Be Sad/%", "obj_ch2_scene27_slash_Step_0_gml_417_0");
	c_talk_wait();
	c_var_instance(id, "queen_laugh_stop", true);
	c_sel(no);
	c_sprite(spr_cutscene_23b_noelle_walk_happy_up_left);
	c_halt();
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* Haha^1, well..^1. I'm glad..^1. you two kind of get it now./%", "obj_ch2_scene27_slash_Step_0_gml_437_0");
	c_talk_wait();
	c_sel(be);
	c_autowalk(0);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_smug_point);
	else
		c_sprite(spr_cutscene_27_berdly_smug);
	c_imagespeed(0.25);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EE* Guess we all..^1. made a pretty sweet team in the end./%", "obj_ch2_scene27_slash_Step_0_gml_446_0");
	c_talk_wait();
	c_soundplay(snd_queen_bandicoot);
	c_sel(no);
	c_autowalk(0);
	c_sprite(spr_noelle_laugh_dw);
	c_imagespeed(0.25);
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_laugh_dw);
	else
		c_sprite(spr_cutscene_27_berdly_laugh);
	c_imagespeed(0.25);
	c_var_instance(id, "queen_laugh_start", true);
	c_wait(99);
	c_var_instance(id, "queen_laugh_stop", true);
	c_sel(be);
	c_halt();
	c_sel(no);
	c_halt();
	c_speaker("queen");
	c_msgsetloc(0, "\\EI* No We Freaking Didn't?/%", "obj_ch2_scene27_slash_Step_0_gml_486_0");
	c_talk_wait();
	c_var_instance(id, "su_look_right", true);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* CAN YOU LET GO OF US NOW!?/%", "obj_ch2_scene27_slash_Step_0_gml_494_0");
	c_talk_wait();
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Oh Yeah/%", "obj_ch2_scene27_slash_Step_0_gml_498_0");
	c_talk_wait();
	c_sel(no);
	c_autowalk(1);
	c_facing("l");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right);
	c_halt();
	c_var_instance(id, "hand_leave", true);
	c_soundplay(snd_jump);
	c_soundplay(snd_queen_pirouette);
	c_sel(kr);
	c_setxy(145, 135);
	c_sprite(spr_kris_sword_jump);
	c_visible(1);
	c_sel(su);
	c_setxy(65, 118);
	c_sprite(spr_susie_jump_back);
	c_visible(1);
	c_sel(ra);
	c_setxy(174, 90);
	c_sprite(spr_ralsei_jump);
	c_visible(1);
	c_sel(ra);
	c_autowalk(0);
	c_walkdirect(157, 216, 10);
	c_sel(kr);
	c_autowalk(0);
	c_walkdirect(110, 228, 10);
	c_sel(su);
	c_autowalk(0);
	c_walkdirect(54, 211, 10);
	c_var_instance(id, "queen_leave", true);
	c_wait(10);
	c_sel(kr);
	c_autowalk(1);
	c_facing("r");
	c_sel(ra);
	c_autowalk(1);
	c_facing("r");
	c_sel(su);
	c_autowalk(1);
	c_facing("r");
	c_wait(30);
	c_walkdirect_wait(54, 224, 4);
	c_walkdirect_wait(320, 224, 36);
	c_sel(su);
	c_walkdirect_wait(320, 211, 4);
	c_facing("r");
	c_sel(no);
	c_sprite(spr_cutscene_23b_noelle_walk_happy_up_left);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* S..^1. Susie!!/%", "obj_ch2_scene27_slash_Step_0_gml_567_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_susie_walk_back_arm);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Hey^1, you stood up to Queen. Not half bad./%", "obj_ch2_scene27_slash_Step_0_gml_575_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_noelle_blush_dw);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E3* R..^1. really?/", "obj_ch2_scene27_slash_Step_0_gml_583_0");
	c_facenext("susie", "A");
	c_msgnextloc("\\EA* Uh^1, yeah./%", "obj_ch2_scene27_slash_Step_0_gml_585_0");
	c_talk();
	c_wait_box(2);
	c_sel(su);
	c_flip("x");
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk("l", 5, 5);
	c_delaycmd(6, "imagespeed", 0);
	c_waittalk();
	c_wait(10);
	c_sel(su);
	c_flip("x");
	c_autowalk(1);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. just^1, guess you gotta wake up soon^1, huh?/%", "obj_ch2_scene27_slash_Step_0_gml_592_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EN* H-huh?/%", "obj_ch2_scene27_slash_Step_0_gml_599_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_wait(5);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E8* (Everything got so intense^1, I forgot it was a dream...)/%", "obj_ch2_scene27_slash_Step_0_gml_609_0");
	c_talk_wait();
	c_sel(no);
	c_facing("d");
	c_sel(su);
	c_facing("r");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E9* Then..^1. I just hope.../%", "obj_ch2_scene27_slash_Step_0_gml_620_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_23b_noelle_walk_happy_up_left);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* I get to have more dreams like this./%", "obj_ch2_scene27_slash_Step_0_gml_629_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene27_slash_Step_0_gml_637_0");
	c_talk_wait();
	c_walk_wait("r", 3, 4);
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* Hey^1, Noelle^1, when you wake up..^1. um.../%", "obj_ch2_scene27_slash_Step_0_gml_644_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Well^1, I just wanted to say..^1. uhh.../%", "obj_ch2_scene27_slash_Step_0_gml_651_0");
	c_talk_wait();
	c_wait(5);
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_cutscene_26_queen_climb);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_walkdirect_wait(518, 342, 40);
	c_halt();
	c_wait(15);
	c_soundplay(snd_jump);
	c_soundplay(snd_queen_hoot_0);
	c_autowalk(0);
	c_sprite(spr_cutscene_city01_queen_stealth);
	c_jump(452, 178, 45, 15);
	c_wait(16);
	c_autowalk(1);
	c_facing("l");
	c_setxy(492, 178);
	c_shakeobj();
	c_imageindex(0);
	c_imagespeed(0);
	c_sel(su);
	c_facing("r");
	c_sel(no);
	c_facing("r");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right);
	c_halt();
	c_wait(40);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Well Then I Suppose It Is Time For You All To Exit/", "obj_ch2_scene27_slash_Step_0_gml_682_0");
	c_msgnextloc("\\EB* Running Program..^1. Tender Goodbye.EXE/", "obj_ch2_scene27_slash_Step_0_gml_683_0");
	c_msgnextloc("\\ED* I Will Miss Each Of You/", "obj_ch2_scene27_slash_Step_0_gml_684_0");
	c_msgnextloc("\\E9* Noelle^1, Your Un-needed Honesty/", "obj_ch2_scene27_slash_Step_0_gml_685_0");
	c_msgnextloc("\\E1* Susie^1, Your Foolish Bravery/", "obj_ch2_scene27_slash_Step_0_gml_686_0");
	c_msgnextloc("\\EB* Kris^1, Your Chill Vibes/", "obj_ch2_scene27_slash_Step_0_gml_687_0");
	c_msgnextloc("\\ED* .../", "obj_ch2_scene27_slash_Step_0_gml_688_0");
	c_msgnextloc("\\EF* B...Burghley?/%", "obj_ch2_scene27_slash_Step_0_gml_689_0");
	c_talk();
	c_wait_box(1);
	c_sel(qu);
	c_soundplay(snd_wing);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_armup);
	c_imageindex(0);
	c_imagespeed(0.4);
	c_delaycmd(15, "imagespeed", 0);
	c_delayfacing(20, "l");
	c_var_instance(id, "tender_goodbye", true);
	c_sel(kr);
	c_facing("u");
	c_sel(no);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_up_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_up);
	c_halt();
	c_sel(ra);
	c_autowalk(1);
	c_facing("u");
	c_wait_box(2);
	c_sel(qu);
	c_facing("l");
	c_wait_box(3);
	c_var_instance(id, "noelle_qs", true);
	c_wait_box(4);
	c_var_instance(id, "susie_qs", true);
	c_wait_box(5);
	c_var_instance(id, "kris_qs", true);
	c_wait_box(6);
	c_sel(qu);
	c_facing("d");
	c_wait_box(7);
	c_facing("l");
	c_var_instance(id, "berdly_qs", true);
	c_waittalk();
	c_wait(5);
	c_sel(kr);
	c_facing("r");
	c_sel(no);
	c_facing("l");
	c_sel(su);
	c_facing("l");
	c_sel(be);
	c_autowalk(1);
	c_facing("l");
	c_sel(ra);
	c_sprite(spr_ralsei_laugh);
	c_arg_objectxy(ra_actor, 0, 5);
	c_setxy(x, y);
	c_halt();
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* It doesn't have to be goodbye^1, Queen!/", "obj_ch2_scene27_slash_Step_0_gml_711_0");
	c_msgnextloc("\\E2* Kris can take you back to our Castle Town!/", "obj_ch2_scene27_slash_Step_0_gml_712_0");
	c_msgnextloc("\\EH* You and all our recruits can live there!/", "obj_ch2_scene27_slash_Step_0_gml_713_0");
	c_facenext("queen", 3);
	c_msgnextloc("\\E3* Oh/%", "obj_ch2_scene27_slash_Step_0_gml_715_0");
	c_talk();
	c_wait_box(4);
	c_sel(qu);
	c_facing("d");
	c_waittalk();
	c_sel(ra);
	c_facing("r");
	c_arg_objectxy(ra_actor, 0, -5);
	c_setxy(x, y);
	c_sel(qu);
	c_autowalk(1);
	c_walk("r", 10, 60);
	c_var_instance(id, "tender_cancel", true);
	c_var_instance(id, "tender_finish", true);
	c_wait(30);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Deleting Tender Goodbye.EXE/%", "obj_ch2_scene27_slash_Step_0_gml_728_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_sprite(spr_susie_pose);
	c_halt();
	c_sel(no);
	c_facing("l");
	c_sel(be);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_walk_right_dw);
	else
		c_sprite(spr_cutscene_27_berdly_walk_right);
	c_halt();
	c_sel(ra);
	c_facing("r");
	c_sel(kr);
	c_facing("r");
	c_msgside("top");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Alright^1! Time to do what we came here for.../%", "obj_ch2_scene27_slash_Step_0_gml_734_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_noelle_sad_left_dw);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E6* .../%", "obj_ch2_scene27_slash_Step_0_gml_742_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_sel(no);
	c_sprite(spr_cutscene_23b_noelle_walk_happy_up_left);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Hey^1, Noelle./", "obj_ch2_scene27_slash_Step_0_gml_750_0");
	c_msgnextloc("\\EC* ..^1. If you see the real Susie^1, just.../%", "obj_ch2_scene27_slash_Step_0_gml_751_0");
	c_talk();
	c_wait_box(1);
	c_sel(su);
	c_walk("r", 3, 5);
	c_waittalk();
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Just know that maybe^1, she's.../%", "obj_ch2_scene27_slash_Step_0_gml_759_0");
	c_talk_wait();
	c_wait(30);
	c_sprite(spr_cutscene_09_susie_exasperated);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* Look^1, she doesn't have a tail^1, OK!?/%", "obj_ch2_scene27_slash_Step_0_gml_769_0");
	c_talk_wait();
	c_sel(no);
	c_autowalk(0);
	c_sprite(spr_noelle_laugh_dw);
	c_imagespeed(0.25);
	scr_smallface(0, "susie", 17, "right", "bottom", stringsetloc("It's not a secret!!", "obj_ch2_scene27_slash_Step_0_gml_778_0"));
	c_speaker("noelle");
	c_msgsetloc(0, "\\ER* Hahaha^1, okay^1! I got it!!\\f0/%", "obj_ch2_scene27_slash_Step_0_gml_780_0");
	c_talk_wait();
	c_sel(su);
	c_flip("x");
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* (Let's just go^1, Kris!!!)/%", "obj_ch2_scene27_slash_Step_0_gml_788_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(0);
	c_sprite(spr_ralsei_laugh);
	c_arg_objectxy(ra_actor, 0, 5);
	c_setxy(x, y);
	c_imagespeed(0.25);
	c_sel(be);
	c_autowalk(0);
	if (global.flag[457] == 1)
		c_sprite(spr_berdly_laugh_dw);
	else
		c_sprite(spr_cutscene_27_berdly_laugh);
	c_imagespeed(0.25);
	c_sel(su);
	c_flip("x");
	c_walk_wait("d", 5, 5);
	c_walk_wait("l", 8, 32);
	c_walk_wait("u", 5, 5);
	c_walk("r", 5, 5);
	c_sel(kr);
	c_autowalk(0);
	c_walk_wait("d", 5, 5);
	c_sel(su);
	c_walk("d", 5, 5);
	c_sel(kr);
	c_walk_wait("r", 5, 5);
	c_sel(su);
	c_walk("r", 8, 80);
	c_sel(kr);
	c_autowalk(0);
	c_walk_wait("r", 8, 80);
	c_mus2("volume", 0, 60);
	c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
	c_var_instance(id, "show_border", false);
	c_var_instance(id, "hide_border", true);
	c_wait(180);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	con = 99;
	if (scr_get_total_recruits(2) == 0)
		global.flag[388] = 1;
	snd_free_all();
	global.plot = 171;
	room_goto(room_cc_fountain);
}
if (berdly_power_up_start)
{
	berdly_power_up_start = false;
	berdly_halberd = instance_create(camerax() + 320, cameray() + 180, obj_ch2_scene27_halberd);
}
if (berdly_power_up)
{
	berdly_power_up = false;
	with (berdly_halberd)
		con = 4;
}
if (berdly_power_up_cancel)
{
	berdly_power_up_cancel = false;
	with (berdly_halberd)
		con = 5;
}
if (shake_hand)
{
	shake_hand = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
		{
			var shakething = scr_shakeobj();
			shakeobj.shakeamt = 20;
		}
		var dmgsnd = snd_play(snd_damage);
		snd_pitch(dmgsnd, 0.8 + random(0.2));
	}
}
if (tender_goodbye)
{
	tender_goodbye = false;
	if (i_ex(obj_ch2_scene26_cityscape))
	{
		with (obj_ch2_scene26_cityscape)
			tender_goodbye = true;
	}
}
if (tender_cancel)
{
	tender_cancel = false;
	if (i_ex(obj_ch2_scene26_cityscape))
	{
		with (obj_ch2_scene26_cityscape)
			tender_cancel = true;
	}
}
if (noelle_qs)
{
	noelle_qs = false;
	var screen = instance_create(no_actor.x + 25, cameray() + 160, obj_queenscreen);
	screen.image_index = 7;
	screen.aligned = 1;
}
if (susie_qs)
{
	susie_qs = false;
	var screen = instance_create(su_actor.x + 26, cameray() + 160, obj_queenscreen);
	screen.image_index = 39;
	screen.aligned = 1;
}
if (kris_qs)
{
	kris_qs = false;
	var screen = instance_create(kr_actor.x + 20, cameray() + 160, obj_queenscreen);
	screen.image_index = 38;
	screen.aligned = 1;
}
if (berdly_qs)
{
	berdly_qs = false;
	var screen = instance_create(be_actor.x + 24, cameray() + 160, obj_queenscreen);
	screen.image_index = 20;
	screen.aligned = 1;
}
if (tender_finish)
{
	tender_finish = false;
	if (i_ex(obj_queenscreen))
	{
		with (obj_queenscreen)
			instance_destroy();
	}
}
if (hand_release)
{
	hand_release = false;
	if (i_ex(obj_ch2_scene27_queenhand))
	{
		with (obj_ch2_scene27_queenhand)
			release = true;
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
if (set_queen_voice)
{
	set_queen_voice = false;
	global.typer = 62;
}
if (queen_laugh_start)
{
	queen_laugh_start = false;
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
if (static_queen)
{
	static_queen = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			static_start = true;
	}
}
if (static_queen_stop)
{
	static_queen_stop = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
			static_stop = true;
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
if (queen_sad)
{
	queen_sad = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
		{
			head_sprite = spr_cutscene_27_queen_look_down_damaged_opaque;
			pilot_sprite = spr_cutscene_26_queen_pilot_unhappy;
		}
	}
}
if (queen_happy)
{
	queen_happy = false;
	if (i_ex(obj_ch2_scene26_gigaqueen))
	{
		with (obj_ch2_scene26_gigaqueen)
		{
			head_sprite = spr_cutscene_27_queen_damaged;
			pilot_sprite = spr_cutscene_26_queen_pilot_laugh;
		}
	}
}
