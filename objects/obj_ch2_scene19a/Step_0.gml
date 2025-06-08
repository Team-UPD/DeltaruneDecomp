if (i_ex(nisesusie))
{
	with (nisesusie)
		scr_depth();
}
if (obj_mainchara.x >= 20 && con == -1)
{
	con = 1;
	global.interact = 1;
	with (obj_mainchara)
		visible = 0;
	global.facing = 0;
	cutscene_master = scr_cutscene_make();
	kr = 0;
	kr_actor = instance_create(-20, 190, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisd_dark;
	su = 1;
	su_actor = instance_create(28, 165, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right;
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	be = 2;
	be_actor = instance_create(-60, 186, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_right_dw;
}
if (con == 1)
{
	con = 2;
	c_sel(kr);
	c_walk("r", 8, 35);
	c_delayfacing(36, "d");
	c_sel(su);
	c_walk("r", 8, 38);
	c_wait(39);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_up);
	c_wait(40);
	c_msgside("top");
	c_speaker("susie");
	c_msgsetloc(0, "* Looks like a puzzle./%", "obj_ch2_scene19a_slash_Step_0_gml_56_0");
	c_talk_wait();
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_left);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. think^1, uh^1, YOU can do it^1, Kris?/%", "obj_ch2_scene19a_slash_Step_0_gml_62_0");
	c_talk_wait();
	c_sel(be);
	c_walk_wait("r", 10, 25);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EJ* Calm your skinless^1, boneless^1, thighs everyone./", "obj_ch2_scene19a_slash_Step_0_gml_69_0");
	c_msgnextloc("\\E7* I'LL think of a solution!/", "obj_ch2_scene19a_slash_Step_0_gml_70_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* (Kris^1, just ignore him.)/", "obj_ch2_scene19a_slash_Step_0_gml_72_0");
	c_msgnextloc("\\EK* I'll just be over here where I can't hear you./", "obj_ch2_scene19a_slash_Step_0_gml_73_0");
	c_facenext("berdly", "I");
	c_msgnextloc("\\EI* And I'll be here^1, away from your IQ-debuffing aura!/%", "obj_ch2_scene19a_slash_Step_0_gml_75_0");
	c_talk_wait();
	c_walkdirect(47, 210, 15);
	c_delayfacing(21, "d");
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walkdirect_wait(529, 191, 15);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_left);
	c_imagespeed(0);
}
if (con == 2 && !d_ex())
{
	con = 3;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	nisesusie = instance_create(529, 191, obj_npc_sign);
	nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_left;
	nisesusie.image_speed = 0;
	berdlynpc = instance_create(47, 210, obj_npc_sign);
	berdlynpc.sprite_index = spr_berdly_walk_right_dw;
	global.interact = 0;
	con = 0;
}
if (con == 20 && !d_ex())
{
	con = 21;
	global.interact = 1;
	if (i_ex(exitcollider))
		instance_destroy(exitcollider);
	if (i_ex(leftcollider))
		instance_destroy(leftcollider);
	cutscene_master = scr_cutscene_make();
	su = 0;
	su_actor = instance_create(nisesusie.x, nisesusie.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_left;
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_left);
	c_halt();
	be = 1;
	be_actor = instance_create(berdlynpc.x, berdlynpc.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_right_dw;
	with (berdlynpc)
		instance_destroy();
	with (nisesusie)
		instance_destroy();
	c_sel(be);
	c_halt();
	c_sprite(spr_berdly_shocked_right);
	c_emote("!", 30);
	c_wait(30);
	c_msgside("top");
	c_speaker("susie");
	c_msgsetloc(0, "* \\E9Yeah!^1! We got it!!/%", "obj_ch2_scene19a_slash_Step_0_gml_153_0");
	c_talk_wait();
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* Wh..^1. What!? Hey^1, wait a second --/", "obj_ch2_scene19a_slash_Step_0_gml_162_0");
	c_msgnextloc("\\EB* How'd you..^1. How'd you solve it without me!?/", "obj_ch2_scene19a_slash_Step_0_gml_163_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* Hahaha!^1! Kris figured it out before you!^1! Jealous?/%", "obj_ch2_scene19a_slash_Step_0_gml_165_0");
	c_talk_wait();
	c_facing("u");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EC* Well I.../%", "obj_ch2_scene19a_slash_Step_0_gml_172_0");
	c_talk_wait();
	c_sprite(spr_berdly_cross_arms);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* I knew the answer^1, I just wanted to see Kris try^1, first!/", "obj_ch2_scene19a_slash_Step_0_gml_178_0");
	c_msgnextloc("\\E6* It's called SUSPENSE^1, Susan!^1! DRAMATIC^1, suspense!!/%", "obj_ch2_scene19a_slash_Step_0_gml_179_0");
	c_talk_wait();
	c_sprite(spr_berdly_cross_arms_nervous);
	c_sel(su);
	c_imagespeed(0.25);
	c_walk("l", 8, 8);
	c_wait(9);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Then YOU do the next one./%", "obj_ch2_scene19a_slash_Step_0_gml_192_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_walk_right_dw);
	c_walk("r", 8, 80);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* Fine^1! WATCH me!!/%", "obj_ch2_scene19a_slash_Step_0_gml_199_0");
	c_talk();
	c_wait(80);
	c_waittalk();
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* (Also my name's not Susan?)/%", "obj_ch2_scene19a_slash_Step_0_gml_205_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walk_wait("r", 10, 30);
	c_actortokris();
	c_terminatekillactors();
}
if (con == 21 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.interact = 0;
	global.facing = 0;
	global.plot = 105;
	instance_destroy();
}
