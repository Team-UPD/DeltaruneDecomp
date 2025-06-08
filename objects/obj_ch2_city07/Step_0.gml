if (obj_mainchara.x > (x - 60) && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	var noelle_x = obj_caterpillarchara.x;
	var noelle_y = obj_caterpillarchara.y;
	scr_losechar();
	instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(camerax() - 260, 205, 2, 0);
	scr_makecaterpillar(camerax() - 200, 200, 3, 1);
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(su);
	c_sprite(spr_susie_walk_back_arm);
	c_autowalk(0);
	c_sel(ra);
	c_sprite(spr_cutscene_15_ralsei_cotton_candy_left);
	c_autowalk(0);
	qu = 5;
	qu_actor = instance_create(camerax() + 700, 167, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_left;
	no = 6;
	no_actor = instance_create(noelle_x, noelle_y, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_noelle_walk_right_dw;
	be = 7;
	be_actor = instance_create(camerax() + 760, 229, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_left_lw;
	gi = 8;
	gi_actor = instance_create(camerax() + 760, 200, obj_actor);
	scr_actor_setup(gi, gi_actor, "gift");
	gi_actor.sprite_index = spr_cutscene_15_gift;
	c_sel(gi);
	c_autodepth(0);
	gift = scr_dark_marker(camerax() + 1000, 120, spr_cutscene_15_gift);
	healimpact = scr_dark_marker(camerax() + 1000, 120, spr_cutscene_15_susie_heal_impact);
	boxhead = scr_dark_marker(camerax() + 1000, 120, spr_cutscene_13_noelle_box_antlers);
	ralsei_ball = scr_dark_marker(camerax() + 1000, 120, spr_cutscene_15_ralsei_ball);
	if (havewalker == true)
	{
		starwalker = scr_dark_marker(camerax() - 500, 239, spr_npc_originalstarwalker);
		cutscene_master.save_object[4] = starwalker;
	}
	cutscene_master.save_object[0] = gift;
	cutscene_master.save_object[1] = healimpact;
	cutscene_master.save_object[2] = boxhead;
	cutscene_master.save_object[3] = ralsei_ball;
}
if (con == 1)
{
	con = 2;
	c_mus2("volume", 0, 30);
	c_sel(kr);
	c_delayfacing(16, "r");
	c_soundplay(snd_queen_laugh_0);
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	c_wait(30);
	c_wait(10);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* O-oh no^1, she's coming back this way!!/", "obj_ch2_city07_slash_Step_0_gml_91_0");
	c_msgnextloc("\\EE* I'll hide in that stall!/%", "obj_ch2_city07_slash_Step_0_gml_92_0");
	c_talk_wait();
	c_var_instance(tentback, "depth", no_actor.depth + 100000);
	c_autowalk(1);
	c_walkdirect_wait(1276, 139, 11);
	c_autodepth(0);
	c_depth(97900);
	c_walkdirect_wait(1371, 139, 11);
	c_facing("d");
	c_wait(15);
	c_autowalk(0);
	c_sprite(spr_cutscene_13_noelle_box_wear);
	c_imageindex(0);
	c_imagespeed(0.4);
	c_wait(20);
	c_sel(no);
	c_imagespeed(0);
	c_wait(15);
	c_mus("free_all");
	c_wait(5);
	c_mus2("initloop", "queen.ogg", 0);
	c_pannable(1);
	c_pan(1070, 0, 30);
	c_sel(kr);
	c_walkdirect(1301, 234, 40);
	c_delayfacing(41, "r");
	c_sel(qu);
	c_autodepth(0);
	c_depth(10000);
	c_walkdirect_wait(1456, 183, 40);
	c_wait(30);
	c_speaker("queen");
	c_msgside("bottom");
	c_msgsetloc(0, "\\E9* Hey Check This Out/%", "obj_ch2_city07_slash_Step_0_gml_139_0");
	c_talk_wait();
	c_walkdirect_wait(1495, 225, 20);
	c_wait(1);
	c_autowalk(0);
	c_facing("l");
	c_wait(10);
	c_imagespeed(0);
	c_wait(10);
	c_setxy(1451, 220);
	c_sprite(spr_cutscene_15_queen_baseball);
	c_autowalk(0);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait(5);
	c_imageindex(1);
	c_wait(20);
	c_imageindex(2);
	c_wait(2);
	c_imageindex(3);
	c_wait(1);
	c_imageindex(4);
	c_wait(1);
	c_var_lerp_instance(ralsei_ball, "x", 1530, 1348, 5);
	c_var_lerp_instance(ralsei_ball, "y", 264, 145, 5);
	c_wait(5);
	c_var_instance(ralsei_ball, "visible", 0);
	c_var_instance(id, "hit_bottles", true);
	c_sel(no);
	c_sprite(spr_cutscene_13_noelle_box_walk_down);
	c_halt();
	c_visible(1);
	c_wait(5);
	c_shakeobj();
	c_wait(55);
	c_sel(qu);
	c_setxy(1495, 225);
	c_sprite(spr_queen_walk_up);
	c_imagespeed(0.25);
	c_walkdirect_wait(1456, 183, 15);
	c_sprite(spr_queen_left);
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\EQ* Sweet Right/%", "obj_ch2_city07_slash_Step_0_gml_200_0");
	c_talk_wait();
	c_autowalk(1);
	c_walkdirect_wait(1456, 125, 20);
	c_sprite(spr_queen_left);
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\E9* Where's My Prize/%", "obj_ch2_city07_slash_Step_0_gml_209_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_13_noelle_box_walk_right);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* Oh! Um.../%", "obj_ch2_city07_slash_Step_0_gml_217_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_13_noelle_box_walk_right);
	c_halt();
	c_sel(gi);
	c_setxy(1400, 155);
	c_soundplay(snd_item);
	c_wait(15);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* H-here!/%", "obj_ch2_city07_slash_Step_0_gml_231_0");
	c_talk_wait();
	c_var_lerp_instance(gi_actor, "x", 1400, 1430, 6);
	c_wait(8);
	c_sel(gi);
	c_stickto(qu_actor, -10);
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\EQ* Ha Ha Nice/%", "obj_ch2_city07_slash_Step_0_gml_242_0");
	c_talk_wait();
	c_wait(10);
	c_sel(gi);
	c_stickto_stop();
	c_sel(qu);
	c_facing("r");
	c_sel(gi);
	c_setxy(1500, 160);
	c_stickto(qu_actor, -10);
	c_sel(qu);
	c_walkdirect_wait(1590, 183, 20);
	c_wait(25);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Wait I Actually Don't Want This/%", "obj_ch2_city07_slash_Step_0_gml_262_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_13_noelle_box_walk_down);
	c_halt();
	c_sel(qu);
	c_facing("l");
	c_sel(gi);
	c_stickto_stop();
	c_setxy(1555, 220);
	c_stickto(qu_actor, -10);
	c_sel(qu);
	c_walkdirect_wait(1355, 183, 25);
	c_wait(10);
	c_sel(gi);
	c_stickto_stop();
	c_wait(5);
	c_autowalk(0);
	c_walkdirect_wait(1296, 195, 5);
	c_stickto(kr_actor, -10);
	c_wait(20);
	c_sel(qu);
	c_walk("r", 12, 90);
	c_mus2("volume", 0, 30);
	c_sel(su);
	c_imagespeed(0.25);
	c_walk("r", 3, 60);
	c_sel(ra);
	c_imagespeed(0.25);
	c_walk("r", 3, 60);
	c_pannable(1);
	c_panspeed(-4.5, 0, 60);
	c_wait(60);
	c_mus("free_all");
	c_sel(su);
	c_halt();
	c_sel(ra);
	c_halt();
	c_sel(kr);
	c_facing("l");
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Hahaha^1, how was THAT!?/", "obj_ch2_city07_slash_Step_0_gml_326_0");
	c_facenext("ralsei", 2);
	c_msgnextloc("\\E2* Haha^1, Susie^1! You're not supposed to ATTACK people with it!/", "obj_ch2_city07_slash_Step_0_gml_328_0");
	c_facenext("susie", 2);
	c_msgnextloc("\\E2* Oh yeah!? Watch me!!!/%", "obj_ch2_city07_slash_Step_0_gml_330_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(1);
	c_facing("r");
	c_emote("!", 30);
	c_sel(ra);
	c_autowalk(1);
	c_facing("r");
	c_emote("!", 30);
	c_wait(30);
	c_walkdirect(1230, 200, 30);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EP* Kris!!!!^1! There you are!!!/%", "obj_ch2_city07_slash_Step_0_gml_350_0");
	c_talk_wait();
	c_facing("r");
	c_pannable(1);
	c_pan(928, 0, 30);
	c_msgzurasu(1);
	c_sel(su);
	c_walkdirect(1159, 218, 30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Kris!^1! Check out my new attack!!/%", "obj_ch2_city07_slash_Step_0_gml_363_0");
	c_talk();
	c_wait(30);
	c_waittalk();
	c_msgzurasu(0);
	c_sel(ra);
	c_facing("d");
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_15_susie_heal);
	c_arg_objectxy(su_actor, -39, -21);
	c_setxy(x, y);
	c_imagespeed(0.25);
	c_delaycmd(20, "sprite", spr_cutscene_15_susie_heal_loop);
	c_wait(30);
	c_var_instance(id, "susie_heal", true);
	c_wait(40);
	c_soundplay(snd_spellcast);
	c_var_instance(id, "heal_effect", true);
	c_sel(su);
	c_arg_objectxy(su_actor, 39, 21);
	c_setxy(x, y);
	c_autowalk(1);
	c_facing("r");
	c_wait(60);
	c_speaker("no_name");
	c_msgsetloc(0, "* (You felt slightly healed.)/%", "obj_ch2_city07_slash_Step_0_gml_399_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_susie_walk_back_arm);
	c_imagespeed(0.25);
	c_sel(su);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Heh^1, how's that!? Meet the new healing master^1, Kris!/%", "obj_ch2_city07_slash_Step_0_gml_412_0");
	c_talk_wait();
	c_sel(ra);
	c_sprite(spr_ralsei_laugh);
	c_setxy(1230, 206);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EG * Oh. Yes. She is a real..^1. \"master\" at it^1, Kris./%", "obj_ch2_city07_slash_Step_0_gml_419_0");
	c_talk_wait();
	c_sel(su);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* God^1, teaching you sarcasm was a mistake./", "obj_ch2_city07_slash_Step_0_gml_427_0");
	c_facenext("ralsei", "H");
	c_msgnextloc("\\EH* Hahahahaha!/%", "obj_ch2_city07_slash_Step_0_gml_429_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("r");
	c_setxy(1229, 200);
	c_sel(su);
	c_facing("r");
	c_msc(1083);
	c_talk_wait();
}
if (con == 10)
{
	global.flag[307] = 1;
	con = 2;
	alarm[0] = 30;
	c_sel(gi);
	c_stickto_stop();
	c_autowalk(0);
	c_walkdirect_wait(1225, 178, 15);
	c_stickto(ra_actor, -10);
	c_sel(ra);
	c_autowalk(0);
	c_sprite(spr_ralsei_walk_down_blush);
	c_wait(15);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\ED * H..^1. huh!? You're giving it to..^1. me...?/%", "obj_ch2_city07_slash_Step_0_gml_466_0");
	c_talk_wait();
	c_sprite(spr_ralsei_walk_right_blush);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E0* Kris.../", "obj_ch2_city07_slash_Step_0_gml_472_0");
	c_msgnextloc("\\E1* I..^1. I've never gotten a gift like this before./", "obj_ch2_city07_slash_Step_0_gml_473_0");
	c_msgnextloc("\\E1* U..^1. ummm..^1. I'm sorry^1, I.../%", "obj_ch2_city07_slash_Step_0_gml_474_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("u");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* (I'm so happy^1, I don't really know what to say...)/", "obj_ch2_city07_slash_Step_0_gml_481_0");
	c_msgnextloc("\\E1* .../%", "obj_ch2_city07_slash_Step_0_gml_482_0");
	c_talk_wait();
	c_sel(gi);
	c_stickto_stop();
	c_var_instance(gi_actor, "depth", ra_actor.depth + 100);
	c_var_lerp_instance(gi_actor, "y", 178, 164, 3);
	c_wait(3);
	c_var_lerp_instance(gi_actor, "y", 164, 214, 8);
	c_wait(8);
	c_soundplay(snd_item);
	c_var_instance(gi_actor, "visible", 0);
	c_wait(15);
	c_sel(ra);
	c_sprite(spr_ralsei_walk_down);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* I..^1. I'll win something for you too^1, okay!?/%", "obj_ch2_city07_slash_Step_0_gml_500_0");
	c_talk_wait();
	c_pannable(1);
	c_pan(1074, 0, 30);
	c_sel(ra);
	c_walkdirect_wait(1439, 170, 30);
	c_facing("l");
	c_sel(kr);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EH\\U* One baseball^1, please!!!/%", "obj_ch2_city07_slash_Step_0_gml_515_0");
	c_talk_wait();
	c_sel(ra);
	c_walkdirect_wait(1480, 230, 15);
	c_facing("l");
	c_wait(5);
	c_autowalk(0);
	c_sprite(spr_cutscene_15_ralsei_throw_ball);
	c_arg_objectxy(ra_actor, -25, -5);
	c_setxy(x, y);
	c_halt();
	c_var_instance(boxhead, "x", no_actor.x);
	c_var_instance(boxhead, "y", no_actor.y);
	c_var_instance(boxhead, "depth", no_actor.depth - 10);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* W-wait a second!!/%", "obj_ch2_city07_slash_Step_0_gml_535_0");
	c_talk_wait();
	c_imagespeed(0.25);
	c_wait(10);
	c_var_instance(ralsei_ball, "x", 1467);
	c_var_instance(ralsei_ball, "y", 244);
	c_var_instance(ralsei_ball, "visible", 1);
	c_var_lerp_instance(ralsei_ball, "x", 1467, 1388, 5);
	c_var_lerp_instance(ralsei_ball, "y", 244, 165, 5);
	c_wait(5);
	c_var_instance(ralsei_ball, "visible", 0);
	c_wait(5);
	c_sel(ra);
	c_imagespeed(0);
	c_var_instance(id, "box_remove_effect", true);
	c_sel(no);
	c_shakeobj();
	c_sprite(spr_noelle_shocked_dw);
	c_halt();
	c_var_instance(boxhead, "depth", 0);
	c_var_lerp_instance(boxhead, "y", no_actor.y, -100, 8);
	c_wait(30);
	c_sel(ra);
	c_flip("x");
	c_arg_objectxy(ra_actor, 20, 5);
	c_setxy(x, y);
	c_sprite(spr_ralsei_hurt);
	c_shakeobj();
	c_sel(su);
	c_flip("x");
	c_sprite(spr_susie_shock);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* N..^1. Noelle!?/%", "obj_ch2_city07_slash_Step_0_gml_586_0");
	c_talk_wait();
	c_wait(15);
	c_sel(ra);
	c_arg_objectxy(ra_actor, 5, 0);
	c_setxy(x, y);
	c_autowalk(1);
	c_flip("x");
	c_sel(su);
	c_flip("x");
	c_autowalk(1);
	c_walkdirect(1453, 192, 30);
	c_delayfacing(31, "l");
	c_sel(ra);
	c_walkdirect(1271, 202, 25);
	c_delayfacing(26, "r");
	c_sel(no);
	c_autowalk(1);
	c_walk_wait("r", 4, 23.5);
	c_autodepth(1);
	c_walk_wait("d", 4, 5);
	c_walkdirect_wait(1390, 173, 10);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_sel(kr);
	c_autodepth(1);
}
if (con == 20)
{
	global.flag[307] = 2;
	con = 2;
	alarm[0] = 30;
	c_sel(gi);
	c_stickto_stop();
	c_autowalk(0);
	c_walkdirect_wait(1157, 188, 15);
	c_stickto(su_actor, -10);
	c_sel(ra);
	c_facing("d");
	c_sel(su);
	c_sprite(spr_susie_sheeh);
	c_imagespeed(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* ..^1. huh? What...?/%", "obj_ch2_city07_slash_Step_0_gml_643_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_susier_dark_eyes);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Alright. Where'd the hell'd you get this?/", "obj_ch2_city07_slash_Step_0_gml_650_0");
	c_facenext("ralsei", "2");
	c_msgnextloc("\\E2* Perhaps they won it at that orb-tossing game./%", "obj_ch2_city07_slash_Step_0_gml_652_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_susier_dark_laugh);
	c_imagespeed(0.25);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Yeah^1, like Kris could ever win that!^1! Hahaha!!/", "obj_ch2_city07_slash_Step_0_gml_662_0");
	c_msgnextloc("\\EA* They musta stole it or something!^1! Haha!!/%", "obj_ch2_city07_slash_Step_0_gml_663_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(0);
	c_imageindex(1);
	c_imagespeed(0);
	c_sprite(spr_ralsei_down_surprised2);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EL* S..^1. Stole it...?/%", "obj_ch2_city07_slash_Step_0_gml_673_0");
	c_talk_wait();
	c_sel(ra);
	c_sprite(spr_ralsei_down);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Wow^1, they must have really wanted to give it to you!/%", "obj_ch2_city07_slash_Step_0_gml_680_0");
	c_talk_wait();
	c_sel(su);
	c_imagespeed(0);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* .../%", "obj_ch2_city07_slash_Step_0_gml_689_0");
	c_talk_wait();
	c_wait(30);
	c_autowalk(0);
	c_imageindex(0);
	c_imagespeed(0);
	c_sprite(spr_susiel_dark_eyes);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Well^1, takes guts to do something stupid like that./%", "obj_ch2_city07_slash_Step_0_gml_701_0");
	c_talk_wait();
	c_facing("u");
	c_wait(30);
	c_sel(gi);
	c_stickto_stop();
	c_var_instance(gi_actor, "depth", su_actor.depth + 100);
	c_var_lerp_instance(gi_actor, "y", 188, 176, 3);
	c_wait(3);
	c_var_lerp_instance(gi_actor, "y", 176, 236, 8);
	c_wait(8);
	c_soundplay(snd_item);
	c_var_instance(gi_actor, "visible", 0);
	c_wait(50);
	c_sel(su);
	c_sprite(spr_susie_point_right);
	c_setxy(1169, 273);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* ..^1. Don't think I'm gonna let you out-do me!/%", "obj_ch2_city07_slash_Step_0_gml_727_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\EQ* If you're gonna pull some stupid stunt like that.../%", "obj_ch2_city07_slash_Step_0_gml_731_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(1);
	c_facing("r");
	c_imagespeed(0.25);
	c_sprite(spr_susier_dark_eyes);
	c_setxy(1159, 218);
	c_pannable(1);
	c_pan(1074, 0, 15);
	c_walkdirect_wait(1374, 222, 15);
	c_sel(kr);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_wait(5);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_09_susie_point);
	c_imagespeed(0.25);
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* Then I'll steal you something too!!/%", "obj_ch2_city07_slash_Step_0_gml_759_0");
	c_talk_wait();
	c_autowalk(1);
	c_walkdirect_wait(1404, 152, 10);
	c_facing("u");
	c_wait(5);
	c_soundplay(snd_grab);
	c_autowalk(0);
	c_sprite(spr_cutscene_15_susie_grab_box);
	c_imageindex(0);
	c_imagespeed(0);
	c_wait(5);
	c_imageindex(1);
	c_sel(no);
	c_shakeobj();
	c_sprite(spr_noelle_shocked_dw);
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Cool box.../%", "obj_ch2_city07_slash_Step_0_gml_786_0");
	c_talk_wait();
	c_speaker("noelle");
	c_msgsetloc(0, "\\EF* A.../", "obj_ch2_city07_slash_Step_0_gml_793_0");
	c_msgnextloc("\\EE* AHHHH!!!/%", "obj_ch2_city07_slash_Step_0_gml_794_0");
	c_talk_wait();
	c_var_instance(boxhead, "x", 1410);
	c_var_instance(boxhead, "depth", 0);
	c_var_lerp_instance(boxhead, "y", 140, -100, 10);
	c_sel(su);
	c_sprite(spr_susie_shock);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* N..^1. Noelle!?/%", "obj_ch2_city07_slash_Step_0_gml_806_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_autowalk(1);
	c_autofacing(0);
	c_sprite(spr_susie_walk_left_dw);
	c_walkdirect(1453, 192, 10);
	c_sel(ra);
	c_autowalk(1);
	c_walkdirect(1271, 202, 20);
	c_delayfacing(21, "r");
	c_sel(no);
	c_autowalk(1);
	c_walk_wait("r", 4, 23.6);
	c_autodepth(1);
	c_walk_wait("d", 4, 5);
	c_walkdirect_wait(1390, 173, 10);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_sel(kr);
	c_autodepth(1);
}
if (con == 30)
{
	global.flag[307] = 3;
	con = 2;
	alarm[0] = 30;
	c_pannable(1);
	c_pan(1074, 0, 20);
	c_sel(kr);
	c_walkdirect_wait(1328, 172, 24);
	c_facing("r");
	c_var_instance(boxhead, "x", no_actor.x);
	c_var_instance(boxhead, "y", no_actor.y);
	c_var_instance(boxhead, "visible", 1);
	c_wait(15);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E2* K..^1. Kris...? Y..^1. You have something for me...?/%", "obj_ch2_city07_slash_Step_0_gml_860_0");
	c_talk_wait();
	c_sel(gi);
	c_stickto_stop();
	c_var_lerp_instance(gi_actor, "x", 1321, 1375, 15);
	c_var_lerp_instance(gi_actor, "y", 127, 110, 15);
	c_autodepth(0);
	c_depth(0);
	c_wait(15);
	c_depth(-10);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* (Kris hasn't given me a gift like this...)/", "obj_ch2_city07_slash_Step_0_gml_873_0");
	c_msgnextloc("\\E9* (Since we were little kids.)/", "obj_ch2_city07_slash_Step_0_gml_874_0");
	c_msgnextloc("\\E6* (Are they saying they want things to go back to...)/", "obj_ch2_city07_slash_Step_0_gml_875_0");
	c_msgnextloc("\\E8* W-wait^1, isn't that the plush I just gave Queen!?/", "obj_ch2_city07_slash_Step_0_gml_876_0");
	c_msgnextloc("\\E8* What!? You want a refund!? So you can...!?/%", "obj_ch2_city07_slash_Step_0_gml_877_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_15_noelle_mad);
	c_var_lerp_instance(gi_actor, "y", 97, -100, 10);
	c_var_lerp_instance(boxhead, "y", no_actor.y, -100, 10);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E8* Come on^1, say that to my face!^1! Gosh!!/%", "obj_ch2_city07_slash_Step_0_gml_888_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("d");
	c_sel(ra);
	c_sprite(spr_ralsei_hurt_overworld);
	c_sel(su);
	c_flip("x");
	c_sprite(spr_susie_shock);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* N..^1. Noelle!?/%", "obj_ch2_city07_slash_Step_0_gml_903_0");
	c_talk_wait();
	c_wait(15);
	c_sel(ra);
	c_setxy(1229, 200);
	c_autowalk(1);
	c_facing("r");
	c_sel(su);
	c_flip("x");
	c_setxy(1159, 218);
	c_autowalk(1);
	c_facing("r");
	c_sel(kr);
	c_walkdirect(1301, 234, 20);
	c_delayfacing(21, "r");
	c_sel(su);
	c_walkdirect(1453, 192, 20);
	c_delayfacing(21, "l");
	c_sel(ra);
	c_walkdirect(1271, 202, 20);
	c_delayfacing(21, "r");
	c_sel(no);
	c_autowalk(1);
	c_walk_wait("r", 4, 23.6);
	c_autodepth(1);
	c_walk_wait("d", 4, 5);
	c_walkdirect_wait(1390, 173, 10);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_sel(kr);
	c_autodepth(1);
}
if (con == 40)
{
	global.flag[307] = 4;
	con = 2;
	alarm[0] = 30;
	berdlygift = true;
	c_pannable(1);
	c_pan(1074, 0, 40);
	c_sel(be);
	c_walkdirect_wait(1522, 229, 40);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E0* Kris^1, have you seen.../%", "obj_ch2_city07_slash_Step_0_gml_961_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("r");
	c_sel(be);
	c_sprite(spr_cutscene_17_berdly_shocked);
	c_emote("!", 30, 5);
	c_shakeobj();
	c_sel(su);
	c_emote("!", 30);
	c_sel(ra);
	c_emote("!", 30);
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* Kris!^1? We took a break from trucing for ONE second.../", "obj_ch2_city07_slash_Step_0_gml_982_0");
	c_msgnextloc("\\EB* And you're ALREADY back with Susie?!/", "obj_ch2_city07_slash_Step_0_gml_984_0_b");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* ???????/%", "obj_ch2_city07_slash_Step_0_gml_984_0");
	c_talk_wait();
	c_sel(be);
	c_facing("r");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EH* Should have expected this..^1. hmph.../%", "obj_ch2_city07_slash_Step_0_gml_991_0");
	c_talk_wait();
	c_facing("l");
	c_shakeobj();
	c_speaker("berdly");
	c_msgsetloc(0, "\\E2* You couldn't keep up with my puzzle-solving skills!/%", "obj_ch2_city07_slash_Step_0_gml_998_0");
	c_talk_wait();
	c_sel(kr);
	c_walkdirect_wait(1478, 234, 30);
	c_wait(15);
	c_sel(gi);
	c_stickto_stop();
	c_var_lerp("x", 1470, 1527, 15);
	c_wait(16);
	c_stickto(be_actor, -10);
	c_wait(10);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* H..^1. huh...?/%", "obj_ch2_city07_slash_Step_0_gml_1017_0");
	c_talk_wait();
	c_var_instance(id, "present_transform", true);
	c_soundplay(snd_spearrise);
	c_wait(5);
	c_sel(gi);
	c_sprite(spr_cutscene_15_berdly_plush);
	c_wait(60);
	c_msgsetloc(0, "\\E5* A plush...? Of ..^1. me?/", "obj_ch2_city07_slash_Step_0_gml_1018_0");
	c_msgnextloc("\\E4* With..^1. nipples?/%", "obj_ch2_city07_slash_Step_0_gml_1019_0");
	c_talk_wait();
	c_sel(be);
	c_facing("r");
	c_sel(gi);
	c_stickto_stop();
	c_flip("x");
	c_addxy(-6, 0);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EE* ..^1. Hmph. Guess I'll forgive you for now./%", "obj_ch2_city07_slash_Step_0_gml_1026_0");
	c_talk_wait();
	c_sel(be);
	c_facing("l");
	c_sel(gi);
	c_flip("x");
	c_addxy(6, 0);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E1* See you^1, Kris./%", "obj_ch2_city07_slash_Step_0_gml_1033_0");
	c_talk_wait();
	c_sel(gi);
	c_flip("x");
	c_addxy(-6, 0);
	c_stickto(be_actor, -10);
	c_sel(be);
	c_walkdirect(camerax() + 900, 229, 40);
	c_wait(60);
	c_sel(gi);
	c_stickto_stop();
	c_wait(1);
	c_sel(su);
	c_shakeobj();
	c_sprite(spr_cutscene_09_susie_exasperated);
	c_sel(kr);
	c_facing("l");
	scr_smallface(0, "susie", 17, "left", "top", stringsetloc("Why the hell'd you give it to Berdly!?", "obj_ch2_city07_slash_Step_0_gml_1054_0"));
	scr_smallface(1, "noelle", 20, 150, "middle", stringsetloc("Why did you give it to Berdly!?", "obj_ch2_city07_slash_Step_0_gml_1055_0"));
	scr_smallface(2, "ralsei", 30, 250, "bottom", stringsetloc("Um, what... unexpected kindness, Kris!", "obj_ch2_city07_slash_Step_0_gml_1056_0"));
	c_speaker("no_one");
	c_msgsetloc(0, "\\f0\\f1\\f2/%", "obj_ch2_city07_slash_Step_0_gml_1059_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* ..^1. Let's just get the hell out of here./%", "obj_ch2_city07_slash_Step_0_gml_1067_0");
	c_talk_wait();
	c_autowalk(1);
	c_walk("r", 6, 30);
	c_wait(30);
	c_halt();
	c_sel(no);
	c_sprite(spr_cutscene_15_noelle_mad);
	c_var_instance(boxhead, "x", no_actor.x);
	c_var_instance(boxhead, "y", no_actor.y);
	c_var_instance(boxhead, "visible", 1);
	c_var_lerp_instance(boxhead, "y", no_actor.y, -100, 5);
	c_sel(ra);
	c_shakeobj();
	c_sprite(spr_ralsei_hurt_overworld);
	c_sel(su);
	c_flip("x");
	c_shakeobj();
	c_sprite(spr_susie_shock);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E8* W..^1. wait!!/%", "obj_ch2_city07_slash_Step_0_gml_1096_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* N..^1. Noelle!?/%", "obj_ch2_city07_slash_Step_0_gml_1100_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(1);
	c_facing("r");
	c_sel(su);
	c_flip("x");
	c_autowalk(1);
	c_facing("r");
	c_sel(no);
	c_facing("d");
	c_wait(15);
	c_sel(kr);
	c_walkdirect(1301, 234, 20);
	c_delayfacing(21, "r");
	c_sel(su);
	c_walkdirect(1453, 192, 20);
	c_delayfacing(21, "l");
	c_sel(ra);
	c_walkdirect(1271, 202, 20);
	c_delayfacing(21, "r");
	c_sel(no);
	c_autowalk(1);
	c_walk_wait("r", 4, 23.6);
	c_autodepth(1);
	c_walk_wait("d", 4, 5);
	c_walkdirect_wait(1390, 173, 10);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_sel(kr);
	c_autodepth(1);
	c_wait(60);
}
if (con == 3)
{
	con = 4;
	alarm[0] = 30;
	c_sel(no);
	c_autowalk(0);
	c_imagespeed(0);
	c_sprite(spr_noelle_blush_dw);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. the hell were you doing in there? That's cheating./", "obj_ch2_city07_slash_Step_0_gml_1156_0");
	c_facenext("noelle", "2");
	c_msgnextloc("\\E2* I..^1. I..^1. um..^1. I.../", "obj_ch2_city07_slash_Step_0_gml_1158_0");
	c_facenext("susie", "1");
	c_msgnextloc("\\E1* ..^1. hm. Glad you're okay though./", "obj_ch2_city07_slash_Step_0_gml_1160_0");
	c_msgnextloc("\\E0* Since that stupid Queen took you^1, I was kinda worried.../", "obj_ch2_city07_slash_Step_0_gml_1161_0");
	c_facenext("noelle", "L");
	c_msgnextloc("\\EL* (Thump^1, thump...)/%", "obj_ch2_city07_slash_Step_0_gml_1163_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_susie_sheeh);
	c_speaker("susie");
	c_msgsetloc(0, "\\EF* Wait./%", "obj_ch2_city07_slash_Step_0_gml_1169_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(1);
	c_walkdirect_wait(1372, 229, 8);
	c_sprite(spr_cutscene_09_susie_point);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* Aren't you on their side!?/", "obj_ch2_city07_slash_Step_0_gml_1184_0");
	c_facenext("noelle", "B");
	c_msgnextloc("\\EB* H-huh!?/", "obj_ch2_city07_slash_Step_0_gml_1186_0");
	c_msgnextloc("\\ED* W-wait^1, wait^1, wait^1, wait^1, wait!!/", "obj_ch2_city07_slash_Step_0_gml_1187_0");
	c_msgnextloc("\\E3* Umm^1, I..^1. I.../%", "obj_ch2_city07_slash_Step_0_gml_1188_0");
	c_talk_wait();
	c_msc(1085);
	c_talk_wait();
}
if (con == 11)
{
	con = 6;
	alarm[0] = 30;
	var arg1 = 390;
	var arg2 = 47;
	if (jp)
	{
		arg1 = 400;
		arg2 = 63;
	}
	scr_smallface(0, "noelle", 22, arg1, arg2, stringsetloc("Thump, thump...", "obj_ch2_city07_slash_Step_0_gml_1201_0"));
	c_sel(no);
	c_facing("d");
	c_sel(su);
	c_imagespeed(0);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E3* Th..^1. that's right^1! We have a truce!!/", "obj_ch2_city07_slash_Step_0_gml_1210_0");
	c_msgnextloc("\\E2* Kris said I could..^1. I could be on your team!/%", "obj_ch2_city07_slash_Step_0_gml_1211_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_09_susie_point2);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Oh^1, really?/%", "obj_ch2_city07_slash_Step_0_gml_1218_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_11b_susie_scratch);
	c_setxy(1370, 219);
	c_msgsetloc(0, "\\E0* ..^1. well^1, if Kris said so^1, I guess./%", "obj_ch2_city07_slash_Step_0_gml_1225_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_11b_susie_hand_up);
	c_msgsetloc(0, "\\E2* Didn't really wanna kill you anyway.\\f0/%", "obj_ch2_city07_slash_Step_0_gml_1231_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_susie_down_dw);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EY* So? Get in line already./", "obj_ch2_city07_slash_Step_0_gml_1241_0");
	c_facenext("noelle", "M");
	c_msgnextloc("\\EM* O..^1. okay!!/%", "obj_ch2_city07_slash_Step_0_gml_1243_0");
	c_talk_wait();
}
if (con == 12)
{
	con = 6;
	alarm[0] = 30;
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	c_shakeobj();
	c_sel(kr);
	c_autowalk(0);
	c_sprite(spr_krisb_intro);
	c_imagespeed(0.5);
	c_delaycmd(20, "imagespeed", 0);
	c_sel(su);
	c_flip("x");
	c_sprite(spr_susieb_attackready);
	c_setxy(1455, 217);
	c_imagespeed(0.25);
	c_walkdirect_wait(1535, 217, 3);
	c_wait(5);
	c_sprite(spr_susieb_attackready);
	c_imagespeed(0);
	c_setxy(1535, 217);
	c_soundplay(snd_weaponpull);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* Kris!!^1! What the heck are you saying!!!/%", "obj_ch2_city07_slash_Step_0_gml_1277_0");
	c_talk_wait();
	c_sel(no);
	c_shakeobj();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E8* We have a truce!^1! A truce!!!/", "obj_ch2_city07_slash_Step_0_gml_1284_0");
	c_facenext("susie", "6");
	c_msgnextloc("\\E6* Huh?/%", "obj_ch2_city07_slash_Step_0_gml_1286_0");
	c_talk_wait();
	c_sel(no);
	c_autowalk(1);
	c_facing("d");
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_15_susie_withdraw);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_sel(kr);
	c_sprite(spr_krisb_victory);
	c_imagespeed(0.25);
	c_wait(30);
	c_autowalk(1);
	c_facing("r");
	c_sel(su);
	c_flip("x");
	c_autowalk(1);
	c_facing("l");
	c_setxy(1479, 215);
	c_sel(no);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E7* I..^1. I'm afraid Queen is going to find me..^1. I.../", "obj_ch2_city07_slash_Step_0_gml_1320_0");
	c_msgnextloc("\\E6* I thought you guys..^1. might be able to..^1. protect me.../", "obj_ch2_city07_slash_Step_0_gml_1321_0");
	c_facenext("susie", 6);
	c_msgnextloc("\\E6* Protect..^1. you?/", "obj_ch2_city07_slash_Step_0_gml_1323_0");
	c_facenext("noelle", "A");
	c_msgnextloc("\\EA* S..^1. sorry..^1. I..^1. if I'm getting in the way^1, I can.../%", "obj_ch2_city07_slash_Step_0_gml_1325_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_11b_susie_scratch);
	c_speaker("susie");
	c_msgsetloc(0, "\\ED* Hey^1, look./%", "obj_ch2_city07_slash_Step_0_gml_1332_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_11b_susie_hand_up);
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* You can..^1. tag along in back or something./%", "obj_ch2_city07_slash_Step_0_gml_1339_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_11b_susie_away_b);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Just..^1. don't get in our way or anything^1, okay?/", "obj_ch2_city07_slash_Step_0_gml_1346_0");
	c_facenext("noelle", "M");
	c_msgnextloc("\\EM* Of..^1. of course!!/%", "obj_ch2_city07_slash_Step_0_gml_1348_0");
	c_talk_wait();
}
if (con == 7)
{
	con = 8;
	alarm[0] = 30;
	var krisPosX = kr_actor.x;
	var krisPosY = kr_actor.y;
	c_sel(su);
	c_autowalk(1);
	c_imagespeed(0.25);
	c_walkdirect(krisPosX - 60, krisPosY - 15, 30);
	c_delayfacing(31, "r");
	c_sel(ra);
	c_walkdirect(krisPosX - 115, krisPosY - 10, 30);
	c_delayfacing(31, "r");
	c_sel(no);
	c_autowalk(1);
	c_imagespeed(0.25);
	c_walkdirect(krisPosX - 168, krisPosY - 15, 30);
	c_delayfacing(31, "r");
	c_wait(60);
	c_sprite(spr_cutscene_23b_noelle_blush);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\EM* Kris..^1. also s-said I should be..^1. behind..^1. Susie./", "obj_ch2_city07_slash_Step_0_gml_1384_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Uhh..^1. well^1, if Kris said so?/%", "obj_ch2_city07_slash_Step_0_gml_1386_0");
	c_talk_wait();
	c_sel(ra);
	c_walkdirect(krisPosX - 168, krisPosY - 10, 14);
	c_delayfacing(15, "r");
	c_sel(no);
	c_autowalk(0);
	c_sprite(spr_noelle_walk_right_blush_dw);
	c_imagespeed(0.25);
	c_walkdirect(krisPosX - 115, krisPosY - 15, 14);
	c_delaycmd(17, "imagespeed", 0);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Let's go already./%", "obj_ch2_city07_slash_Step_0_gml_1403_0");
	c_talk_wait();
}
if (con == 9)
{
	con = 49;
	alarm[0] = 30;
	if (berdlygift == true)
	{
		c_sel(be);
		c_walkdirect_wait(1410, 215, 30);
		c_speaker("berdly");
		c_msgsetloc(0, "\\E7* Hmph. Guess I'll join too. ..^1. but only for this room!/%", "obj_ch2_city07_slash_Step_0_gml_1419_0");
		c_talk_wait();
		c_walkdirect_wait(1084, 215, 20);
		c_walkdirect_wait(1084, 230, 10);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* (NO ONE WAS ASKING!)/%", "obj_ch2_city07_slash_Step_0_gml_1427_0");
		c_talk_wait();
	}
	if (havewalker == true)
	{
		c_pannable(1);
		c_panspeed(-5, 0, 15);
		var starXPos = berdlygift ? 1005 : 1054;
		c_var_lerp_instance(starwalker, "x", 905, starXPos, 15);
		c_wait(31);
		c_speaker("no_name");
		c_msgsetloc(0, "* I will also            join/%", "obj_ch2_city07_slash_Step_0_gml_1439_0");
		c_talk_wait();
	}
	c_panobj(kr_actor, 15);
	c_wait(16);
	c_pannable(0);
}
if (con == 50 && !d_ex())
{
	con = 60;
	c_actortokris();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	con = 0;
	scr_spellget(2, 11);
	global.plot = 95;
	global.interact = 0;
	global.facing = 0;
	explore = true;
	scr_makecaterpillar(su_actor.x, su_actor.y, 2, 0);
	scr_makecaterpillar(no_actor.x, no_actor.y, 4, 1);
	scr_makecaterpillar(ra_actor.x, ra_actor.y, 3, 2);
	if (berdlygift)
		scr_makecaterpillar(be_actor.x, be_actor.y, 5, 3);
	if (havewalker)
	{
		var walkerpos = berdlygift ? 4 : 3;
		scr_makecaterpillar(starwalker.x, starwalker.y, 6, walkerpos);
		with (starwalker)
			instance_destroy();
	}
	with (obj_actor)
		instance_destroy();
	with (obj_caterpillarchara)
		scr_caterpillar_interpolate();
}
if (explore && obj_mainchara.x < 50 && global.interact == 0)
{
	global.interact = 1;
	wrongexit++;
	if (wrongexit == 1)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\EQ* Isn't that where we came from?/", "obj_ch2_city07_slash_Step_0_gml_1499_0");
		scr_anyface_next("susie", "2");
		msgnextloc("\\E2* Yeah^1, there isn't any cotton candy left so.../%", "obj_ch2_city07_slash_Step_0_gml_1501_0");
		d_make();
	}
	else
	{
		scr_speaker("noelle");
		msgsetloc(0, "\\E8* (How did Kris end up being the leader...?)/%", "obj_ch2_city07_slash_Step_0_gml_1506_0");
		d_make();
	}
}
if (explore && global.interact == 1 && !d_ex())
{
	obj_mainchara.x = 50;
	global.facing = 1;
	global.interact = 0;
}
if (hit_bottles)
{
	hit_timer++;
	if (hit_timer == 1)
	{
		snd_play(snd_badexplosion);
		explosion_marker = instance_create(1375, 140, obj_marker);
		explosion_marker.sprite_index = spr_realisticexplosion;
		explosion_marker.image_xscale = 2;
		explosion_marker.image_yscale = 2;
		with (explosion_marker)
			scr_depth();
	}
	else
	{
		var finish = false;
		with (obj_marker)
		{
			if (sprite_index == spr_realisticexplosion && image_index >= 16)
			{
				finish = true;
				instance_destroy();
			}
		}
	}
	for (var i = 0; i < array_length_1d(bottle); i++)
	{
		if (hit_timer == 1)
		{
			bottle[i].gravity += 2;
			bottle[i].gravity_direction = random_range(60, 150);
		}
		bottle[i].image_angle += (bottle[i].x <= 1390) ? 50 : -50;
	}
	if (hit_timer >= 30)
		hit_bottles = false;
}
if (susie_heal)
{
	heal_timer++;
	if (heal_beam == -1)
	{
		snd_stop_all();
		snd_play(snd_spell_cure_slight_smaller);
		heal_beam = scr_dark_marker(su_actor.x + 100, su_actor.y + 65, spr_cutscene_18_susie_heal_small);
		heal_beam.image_speed = 0.25;
	}
	heal_beam.x += 2;
	if (heal_beam.x >= 1310)
	{
		susie_heal = false;
		instance_destroy(heal_beam);
	}
}
if (heal_effect)
{
	heal_effect = false;
	healamt = instance_create(kr_actor.x, kr_actor.y, obj_dmgwriter);
	with (healamt)
	{
		delay = 4;
		type = 3;
	}
	healamt.damage = 2;
	healanim = instance_create(kr_actor.x, kr_actor.y, obj_healanim);
	healanim.target = kr_actor.id;
	global.hp[global.char[0]] = min(global.hp[global.char[0]] + 2, global.maxhp[global.char[0]]);
}
if (box_remove_effect)
{
	box_remove_timer++;
	if (box_remove_timer == 1)
	{
		snd_play(snd_impact);
		fx = scr_dark_marker(no_actor.x + 20, no_actor.y, spr_thrash_missile_explosion);
		fx.image_speed = 1;
		fx.depth = 0;
	}
	if (box_remove_timer >= 5)
	{
		box_remove_effect = false;
		with (fx)
			instance_destroy();
	}
}
if (present_transform)
{
	present_transform = false;
	if (gi_actor != -4)
	{
		with (gi_actor)
			scr_oflash();
	}
}
