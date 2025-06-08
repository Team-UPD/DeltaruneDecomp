if (i_ex(nisesusie))
{
	with (nisesusie)
		scr_depth();
}
if (obj_mainchara.x >= x && con == -1)
{
	con = 1;
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	nisesusie.visible = 0;
	berdlynpc.visible = 0;
	su = 1;
	su_actor = instance_create(nisesusie.x, nisesusie.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_down;
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_down);
	c_halt();
	be = 2;
	be_actor = instance_create(berdlynpc.x, berdlynpc.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_down_dw;
	nisesusie.x = 12;
	nisesusie.y = 200;
	nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right;
	berdlynpc.x = 555;
	berdlynpc.y = 216;
	berdlynpc.sprite_index = spr_berdly_walk_left_dw;
}
if (con == 1)
{
	con = 2;
	c_msgside("top");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* Ha. Child's play. Couldn't you give me a harder one?/", "obj_ch2_scene19b_slash_Step_0_gml_47_0");
	c_msgnextloc("\\E1* For example^1, if anyone had a 4x4 Puzzle Cube.../", "obj_ch2_scene19b_slash_Step_0_gml_48_0");
	c_facenext("susie", "B");
	c_msgnextloc("\\EB* Just tell us the solution./%", "obj_ch2_scene19b_slash_Step_0_gml_50_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_cross_arms);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EJ* Well^1, hahah - ah^1, you see -/%", "obj_ch2_scene19b_slash_Step_0_gml_52_0");
	c_talk_wait();
	c_sprite(spr_berdly_cross_arms_nervous);
	c_msgsetloc(0, "\\E0* /%", "obj_ch2_scene19b_slash_Step_0_gml_53_0");
	c_talk_wait();
	c_sprite(spr_berdly_cross_arms);
	c_msgsetloc(0, "\\E1* First^1, you/%", "obj_ch2_scene19b_slash_Step_0_gml_54_0");
	c_talk_wait();
	c_sprite(spr_berdly_cross_arms_nervous);
	c_msgsetloc(0, "\\E0* /%", "obj_ch2_scene19b_slash_Step_0_gml_55_0");
	c_talk_wait();
	c_sprite(spr_berdly_cross_arms);
	c_msgsetloc(0, "\\ED* You align the shadows..^1. with the lines on the floor./%", "obj_ch2_scene19b_slash_Step_0_gml_56_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Alright. What do we move first./", "obj_ch2_scene19b_slash_Step_0_gml_58_0");
	c_facenext("berdly", 13);
	c_msgnextloc("\\ED* Um.../", "obj_ch2_scene19b_slash_Step_0_gml_60_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Kris^1, just do the puzzle./%", "obj_ch2_scene19b_slash_Step_0_gml_62_0");
	c_talk_wait();
	c_sprite(spr_berdly_mad_dw);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EC* J...Just give me a moment!!/", "obj_ch2_scene19b_slash_Step_0_gml_64_0");
	c_msgnextloc("\\EB* It's not like Kris could even solve it anyway!!/%", "obj_ch2_scene19b_slash_Step_0_gml_65_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_left);
	c_imagespeed(0.25);
	c_walkdirect(12, 200, 10);
	c_sel(be);
	c_walkdirect(555, 216, 10);
	c_delayfacing(21, "d");
	c_wait(11);
	c_sel(su);
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
	nisesusie.visible = 1;
	berdlynpc.visible = 1;
	global.interact = 0;
	con = 0;
}
if (con == 20 && !d_ex())
{
	con = 21;
	global.interact = 1;
	if (i_ex(exitcollider))
		instance_destroy(exitcollider);
	cutscene_master = scr_cutscene_make();
	su = 0;
	su_actor = instance_create(nisesusie.x, nisesusie.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right;
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	be = 1;
	be_actor = instance_create(berdlynpc.x, berdlynpc.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_left_dw;
	with (berdlynpc)
		instance_destroy();
	with (nisesusie)
		instance_destroy();
	c_wait(60);
	c_msgside("top");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Whoops^1, looks like Kris got it again!/%", "obj_ch2_scene19b_slash_Step_0_gml_146_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_cutscene_17_berdly_shocked);
	c_emote("!", 30);
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* H-huh!? W..^1. wait!^1! Wait just a second!!/", "obj_ch2_scene19b_slash_Step_0_gml_156_0");
	c_msgnextloc("\\EB* You can't have --/%", "obj_ch2_scene19b_slash_Step_0_gml_157_0");
	c_talk_wait();
	c_sprite(spr_cutscene_17_berdly_angry);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* You just got lucky^1! It's just trial and error!/", "obj_ch2_scene19b_slash_Step_0_gml_163_0");
	c_msgnextloc("\\ED* The brute force method^1! Ha^1! A caveman could do it!/", "obj_ch2_scene19b_slash_Step_0_gml_164_0");
	c_msgnextloc("\\E2* Except cavemen died OUT^1, because they're STUPID!/%", "obj_ch2_scene19b_slash_Step_0_gml_165_0");
	c_talk_wait();
	c_sel(be);
	c_facing("r");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EC* I'M solving the next one^1, so --/", "obj_ch2_scene19b_slash_Step_0_gml_173_0");
	c_msgnextloc("\\EB* Just STAY HERE until I'm done!!/%", "obj_ch2_scene19b_slash_Step_0_gml_174_0");
	c_talk_wait();
	c_walk_wait("r", 15, 30);
	c_speaker("susie");
	c_msgsetloc(0, "* .../", "obj_ch2_scene19b_slash_Step_0_gml_180_0");
	c_msgnextloc("\\E2* Yeah^1, like we're gonna wait that long./%", "obj_ch2_scene19b_slash_Step_0_gml_181_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walk_wait("r", 10, 90);
	c_actortokris();
	c_terminatekillactors();
}
if (con == 21 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.interact = 0;
	global.facing = 0;
	global.plot = 110;
	instance_destroy();
}
