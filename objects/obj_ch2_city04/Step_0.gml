if (obj_mainchara.x > x && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	be = 4;
	be_actor = instance_create(berdlynpc.x, berdlynpc.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_down_dw;
	berdlynpc.visible = 0;
}
if (con == 1)
{
	con = 10;
	c_sel(kr);
	c_walk("r", 4, 20);
	c_pannable(1);
	c_panspeed_wait(5, 0, 20);
	c_sel(be);
	c_emote("!", 30);
	c_facing("l");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* Kris^1! Where were you!/", "obj_ch2_city04_slash_Step_0_gml_38_0");
	c_msgnextloc("\\E1* Tut tut..^1. even late for your own truce./", "obj_ch2_city04_slash_Step_0_gml_39_0");
	c_msgnextloc("\\E6* Well^1, not as if your presence even matters./", "obj_ch2_city04_slash_Step_0_gml_40_0");
	c_msgnextloc("\\E7* Ahead of us is a mind meltingly difficult puzzle./", "obj_ch2_city04_slash_Step_0_gml_41_0");
	c_msgnextloc("\\EJ* So just take your nap time^1, Kris.  I'll handle it./%", "obj_ch2_city04_slash_Step_0_gml_42_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("berdly");
	c_msgsetloc(0, "\\ED* (I..^1. only have to figure out how it works...)/%", "obj_ch2_city04_slash_Step_0_gml_48_0");
	c_talk_wait();
	c_facing("d");
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_pannable(0);
}
if (con == 10 && !d_ex())
{
	con = 11;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 11 && !i_ex(obj_cutscene_master))
{
	con = 20;
	global.interact = 0;
	global.facing = 0;
	berdlynpc.visible = 1;
	global.plot = 82;
}
if (con == 20 && obj_mainchara.x > 1440)
{
	con = 50;
	global.interact = 1;
	global.facing = 3;
	global.plot = 83;
	berdlynpc.visible = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	qu = 3;
	qu_actor = instance_create(950, 250, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_left;
	c_sel(qu);
	c_visible(0);
	be = 4;
	be_actor = instance_create(berdlynpc.x, berdlynpc.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_left_dw;
	c_sel(be);
	c_facing("l");
	c_sel(kr);
	c_walkdirect_wait(1477, 266, 15);
	c_facing("l");
	c_pannable(1);
	c_panspeed_wait(-10, 0, 50);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* Just a moment^1, Kris^1, I.../%", "obj_ch2_city04_slash_Step_0_gml_112_0");
	c_talk_wait();
	c_sel(be);
	c_facing("r");
	c_wait(30);
	c_sprite(spr_berdly_shocked_right);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* You..^1. How'd you do that!? I..^1. I.../%", "obj_ch2_city04_slash_Step_0_gml_124_0");
	c_talk_wait();
	c_sprite(spr_berdly_walk_right_dw);
	c_walkdirect(1427, 261, 60);
	c_panspeed_wait(8, 0, 60);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EC* .../", "obj_ch2_city04_slash_Step_0_gml_134_0");
	c_msgnextloc("\\EB* ..^1. Kris. You c-can't tell anyone about this^1, okay!?/", "obj_ch2_city04_slash_Step_0_gml_135_0");
	c_msgnextloc("\\ED* If anyone asks^1, I solved the puzzle!!/%", "obj_ch2_city04_slash_Step_0_gml_136_0");
	c_talk_wait();
	c_flip("x");
	c_sprite(spr_cutscene_17_berdly_angry);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* Got it? Not a word to ANYONE!!/", "obj_ch2_city04_slash_Step_0_gml_144_0");
	c_msgnextloc("\\EC* ESPECIALLY!!^1! SUSIE!!!/", "obj_ch2_city04_slash_Step_0_gml_145_0");
	c_msgnextloc("\\EA* You KNOW she'd just..^1. lord it over me!!!/%", "obj_ch2_city04_slash_Step_0_gml_146_0");
	c_talk_wait();
	c_flip("x");
	c_facing("u");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EC* Ugh!!/%", "obj_ch2_city04_slash_Step_0_gml_154_0");
	c_talk_wait();
	c_walk("r", 6, 100);
	c_wait(5);
	c_sel(kr);
	c_walk("u", 5, 5);
	c_delayfacing(6, "d");
	c_wait(30);
	c_sel(qu);
	c_visible(1);
	c_walk_wait("r", 12, 20);
	c_speaker("queen");
	c_msgsetloc(0, "\\EN* I'm Going To Tell Susie/%", "obj_ch2_city04_slash_Step_0_gml_174_0");
	c_talk_wait();
	c_walk_wait("l", 12, 20);
	c_panobj(kr_actor, 30);
	c_wait(31);
	c_pannable(0);
	c_actortokris();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.interact = 0;
	global.facing = 0;
}
