if (con == 0 && global.interact == 0 && global.plot < 54)
{
	global.interact = 1;
	global.facing = 0;
	con = 1;
}
if (con == 1)
{
	con = 2;
	growStep = 0;
	lerpValue = 0;
	time = 0;
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	kr = 0;
	kr_actor = instance_create(obj_mainchara.x - 100, obj_mainchara.y - 16, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisr_dark;
	su = 1;
	su_actor = instance_create(obj_mainchara.x - 160, global.cinstance[0].y - 16, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_right_dw;
	ra = 2;
	ra_actor = instance_create(obj_mainchara.x - 200, global.cinstance[1].y - 16, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_walk_right;
	qu = 3;
	qu_actor = instance_create(400, 100, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_left;
	no = 4;
	no_actor = instance_create(297, 50, obj_actor);
	scr_actor_setup(no, no_actor, "noelledark");
	no_actor.sprite_index = spr_noelle_shocked_dw;
	c_sel(no);
	c_autowalk(0);
	ca = 5;
	ca_actor = instance_create(280, 10, obj_actor);
	scr_actor_setup(ca, ca_actor, "capsule");
	ca_actor.sprite_index = spr_cutscene_09_capsule_1;
	c_sel(ca);
	c_autowalk(0);
	sw = 6;
	sw_actor = instance_create(240, -160, obj_actor);
	scr_actor_setup(sw, sw_actor, "swatchling");
	sw_actor.sprite_index = spr_swatchling_cannonball;
	c_sel(sw);
	c_autowalk(0);
	pb = 7;
	pb_actor = instance_create(290, -160, obj_actor);
	scr_actor_setup(pb, pb_actor, "plattertop");
	pb_actor.sprite_index = spr_cutscene_10_platter_bottom;
	c_sel(pb);
	c_autowalk(0);
	pt = 8;
	pt_actor = instance_create(290, -160, obj_actor);
	scr_actor_setup(pt, pt_actor, "platterbottom");
	pt_actor.sprite_index = spr_cutscene_10_platter_top;
	c_sel(pt);
	c_autowalk(0);
	ar = 9;
	ar_actor = instance_create(290, -200, obj_actor);
	scr_actor_setup(ar, ar_actor, "arcade");
	ar_actor.sprite_index = spr_cutscene_10_arcade_off;
	ar_actor.image_yscale = 0.25;
	ar_actor.depthbonus = 2000;
	c_sel(ar);
	c_autowalk(0);
	c_visible(0);
	c_var_instance(id, "pause_music", true);
	c_wait(25);
	c_mus2("initloop", "queen.ogg", 0);
	c_wait(5);
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* Noelle Honey Become My Willing Peon And I Will Free You/", "obj_ch2_scene10_slash_Step_0_gml_97_0");
	c_msgnextloc("\\E0* All You Have To Do Is Hit Yes On The Peon Release Form/", "obj_ch2_scene10_slash_Step_0_gml_98_0");
	c_facenext("noelle", "C");
	c_msgnextloc("\\EC* I^1... I'm scared.../", "obj_ch2_scene10_slash_Step_0_gml_100_0");
	c_facenext("queen", "1");
	c_msgnextloc("\\E1* Oh Have You Never Signed A Form Before/", "obj_ch2_scene10_slash_Step_0_gml_102_0");
	c_facenext("noelle", "E");
	c_msgnextloc("\\EE* No!^1! It's everything else that's scary!!/", "obj_ch2_scene10_slash_Step_0_gml_104_0");
	c_facenext("queen", "D");
	c_msgnextloc("\\ED* Please Abort Your Sadness Protocol/", "obj_ch2_scene10_slash_Step_0_gml_106_0");
	c_msgnextloc("\\E1* I Told You Being A Peon Will Be Cool/%", "obj_ch2_scene10_slash_Step_0_gml_107_0");
	c_talk_wait();
	c_sel(kr);
	c_walk("r", 12, 25);
	c_sel(su);
	c_walk("r", 12, 20);
	c_sel(ra);
	c_walk("r", 12, 20);
	c_wait(20);
	c_sel(su);
	c_walkdirect(159, 117, 5);
	c_sel(ra);
	c_walkdirect(110, 150, 5);
	c_wait(10);
	c_speaker("susie");
	c_msgsetloc(0, "\\EJ* Noelle!/", "obj_ch2_scene10_slash_Step_0_gml_124_0");
	c_facenext("noelle", "B");
	c_msgnextloc("\\EB* S..^1. Susie!? Kris...!?/", "obj_ch2_scene10_slash_Step_0_gml_126_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* Don't worry^1, we won't let your face get roboticized!/%", "obj_ch2_scene10_slash_Step_0_gml_128_0");
	c_talk_wait();
	c_wait(5);
	c_sel(no);
	c_shakeobj();
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* THAT'S..^1. SOMETHING THEY'RE GOING TO DO!?/", "obj_ch2_scene10_slash_Step_0_gml_135_0");
	c_facenext("susie", "P");
	c_msgnextloc("\\EP* Whoops^1, thought^1, uh^1, you knew that./%", "obj_ch2_scene10_slash_Step_0_gml_137_0");
	c_talk_wait();
	c_wait(5);
	c_sel(qu);
	c_facing("d");
	c_wait(5);
	c_speaker("queen");
	c_msgsetloc(0, "\\EF* Oh Dear That Was Supposed To Be A Surprise/%", "obj_ch2_scene10_slash_Step_0_gml_145_0");
	c_talk_wait();
	c_wait(5);
	c_facing("l");
	c_wait(5);
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* Oh Well/%", "obj_ch2_scene10_slash_Step_0_gml_152_0");
	c_talk_wait();
	c_wait(5);
	c_sprite(spr_cutscene_10_queen_armup);
	c_soundplay(snd_swing);
	c_wait(5);
	c_soundplay(snd_noelle_scared);
	c_animate(0, 8, 0.5);
	c_wait(8);
	c_sel(no);
	c_walk("u", 30, 30);
	c_sel(ca);
	c_walk("u", 30, 30);
	c_wait(8);
	c_sel(qu);
	c_autowalk(0);
	c_sel(kr);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_wait(14);
	c_speaker("susie");
	c_msgsetloc(0, "\\ER* W-wait--!!/%", "obj_ch2_scene10_slash_Step_0_gml_174_0");
	c_talk();
	c_sel(su);
	c_walk_wait("u", 16, 5);
	c_waittalk();
	c_wait(5);
	c_sel(qu);
	c_facing("r");
	c_autowalk(1);
	c_sel(kr);
	c_facing("r");
	c_sel(su);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_speaker("queen");
	c_msgsetloc(0, "\\E3* It Is Quite Troubling/", "obj_ch2_scene10_slash_Step_0_gml_192_0");
	c_msgnextloc("\\EF* A Peon Must Be \"Willing\" To Assist Me In World Domination/", "obj_ch2_scene10_slash_Step_0_gml_193_0");
	c_msgnextloc("\\E5* If Only She Had Fellow Peons To Encourage Her/", "obj_ch2_scene10_slash_Step_0_gml_194_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* ..^1. So?/%", "obj_ch2_scene10_slash_Step_0_gml_196_0");
	c_talk_wait();
	c_wait(5);
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_queen_walk_left);
	c_imagespeed(0.5);
	c_walk_wait("l", 6, 8);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* So Like/", "obj_ch2_scene10_slash_Step_0_gml_209_0");
	c_msgnextloc("\\E9* You \"Guys\"/", "obj_ch2_scene10_slash_Step_0_gml_210_0");
	c_msgnextloc("\\E1* Hey/", "obj_ch2_scene10_slash_Step_0_gml_211_0");
	c_msgnextloc("\\ED* Are You Like/", "obj_ch2_scene10_slash_Step_0_gml_212_0");
	c_msgnextloc("\\E1* .../", "obj_ch2_scene10_slash_Step_0_gml_213_0");
	c_msgnextloc("\\ED* Doing Anything Right Now/", "obj_ch2_scene10_slash_Step_0_gml_214_0");
	c_facenext("ralsei", "W");
	c_msgnextloc("* We aren't going to help you!!/%", "obj_ch2_scene10_slash_Step_0_gml_216_0");
	c_talk_wait();
	c_wait(5);
	c_speaker("queen");
	c_msgsetloc(0, "\\E6* Understood. Mind-Changing Protocol Necessitated/%", "obj_ch2_scene10_slash_Step_0_gml_221_0");
	c_talk();
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_queen_walk_left);
	c_imagespeed(0.5);
	c_walk_wait("r", 10, 10);
	c_imagespeed(0);
	c_imageindex(0);
	c_waittalk();
	c_wait(5);
	c_sel(sw);
	c_jump(270, 120, 20, 15);
	c_wait(16);
	c_shake();
	c_soundplay(snd_impact);
	c_sel(su);
	c_autowalk(0);
	c_walk("l", 14, 3);
	c_sprite(spr_susie_shock_r);
	c_sel(ra);
	c_autowalk(0);
	c_arg_objectxy(ra_actor, 0, 6);
	c_setxy(x, y);
	c_walk("l", 14, 3);
	c_sprite(spr_ralsei_hurt);
	c_sel(kr);
	c_autowalk(0);
	c_walk("l", 14, 4);
	c_imagespeed(0.5);
	c_sel(sw);
	c_sprite(spr_swatchling_hurt);
	c_arg_objectxy(sw_actor, -40, -30);
	c_setxy(x, y);
	c_imageindex(1);
	c_wait(3);
	c_sel(kr);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait(27);
	c_sel(sw);
	c_arg_objectxy(sw_actor, -14, -22);
	c_setxy(x, y);
	c_sprite(spr_swatchling_cannonball_prepare);
	c_imageindex(2);
	c_sel(pt);
	c_autodepth(0);
	c_depth(-501);
	c_jump(290, 20, 20, 15);
	c_sel(pb);
	c_jump(290, 20, 20, 15);
	c_wait(16);
	c_shake();
	c_shakeobj();
	c_sel(pt);
	c_shakeobj();
	c_sel(sw);
	c_shakeobj();
	c_soundplay(snd_impact);
	c_sel(su);
	c_autowalk(0);
	c_walk("l", 14, 2);
	c_sprite(spr_susie_shock_r);
	c_sel(ra);
	c_autowalk(0);
	c_arg_objectxy(ra_actor, 0, 6);
	c_setxy(x, y);
	c_walk("l", 14, 2);
	c_sprite(spr_ralsei_hurt);
	c_sel(kr);
	c_autowalk(0);
	c_walk("l", 14, 3);
	c_imagespeed(0.5);
	c_wait(3);
	c_sel(kr);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait(27);
	c_sel(sw);
	c_sprite(spr_swatchling_hurt);
	c_autowalk(0);
	c_imagespeed(0);
	c_imageindex(1);
	c_depth(-502);
	c_arg_objectxy(sw_actor, 14, 22);
	c_setxy(x, y);
	c_walk("l", 14, 7);
	c_sel(kr);
	c_imagespeed(0.5);
	c_walk("l", 2, 7);
	c_wait(7);
	c_imagespeed(0);
	c_imageindex(0);
	c_sel(sw);
	c_imageindex(1);
	c_sel(pt);
	c_arg_objectxy(pt_actor, 0, 145);
	c_jump(x, y, 5, 15);
	c_sel(pb);
	c_arg_objectxy(pb_actor, 0, 145);
	c_jump(x, y, 5, 15);
	c_wait(16);
	c_shake();
	c_soundplay(snd_impact);
	c_wait(20);
	c_sel(sw);
	c_autodepth(0);
	c_depth(90000);
	c_arg_objectxy(sw_actor, -14, -22);
	c_setxy(x, y);
	c_sprite(spr_swatchling_cannonball_prepare);
	c_imageindex(2);
	c_sel(pt);
	c_walk("u", 40, 60);
	c_sel(ar);
	c_autodepth(0);
	c_depth(95000);
	c_visible(1);
	c_arg_objectxy(pb_actor, 32, 45);
	c_setxy(x, y);
	c_shakeobj();
	c_wait(5);
	c_shakeobj();
	c_wait(5);
	c_soundplay(snd_jump);
	c_waitcustom();
	c_wait(30);
	c_sel(sw);
	c_sprite(spr_swatchling_spared);
	c_arg_objectxy(sw_actor, 18, 22);
	c_setxy(x, y);
	c_wait(30);
	c_sprite(spr_swatchling_cannonball);
	c_arg_objectxy(sw_actor, 18, 20);
	c_setxy(x, y);
	c_arg_objectxy(sw_actor, 0, -300);
	c_jump(x, y, 20, 10);
	c_soundplay(snd_jump);
	c_wait(20);
	c_sel(ar);
	c_autodepth(1);
	c_sel(pb);
	c_autodepth(0);
	c_depth(100000);
	c_wait(15);
	c_sel(ar);
	c_sprite(spr_cutscene_10_arcade_on);
	c_soundplay(snd_item);
	c_wait(15);
	c_sel(kr);
	c_autowalk(1);
	c_walkdirect(307, 151, 24);
	c_sel(ra);
	c_autowalk(1);
	c_walkdirect(255, 175, 28);
	c_sel(su);
	c_autowalk(1);
	c_walkdirect_wait(89, 175, 15);
	c_walkdirect_wait(345, 175, 32);
	c_sel(kr);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_wait(30);
	c_sel(su);
	c_facing("r");
	c_sel(kr);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* A giant arcade game!?/", "obj_ch2_scene10_slash_Step_0_gml_413_0");
	c_facenext("queen", "1");
	c_msgnextloc("\\E1* I Shall Humiliate You At: A Simple Children's Diversion/", "obj_ch2_scene10_slash_Step_0_gml_415_0");
	c_msgnextloc("\\EC* With Your Self-Esteem Eradicated/%", "obj_ch2_scene10_slash_Step_0_gml_416_0");
	c_talk_wait();
	c_sel(ar);
	c_sprite(spr_cutscene_10_arcade_laugh);
	c_imagespeed(0.25);
	c_sel(qu);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\E7* There Will Be No Choice But To Serve Me/%", "obj_ch2_scene10_slash_Step_0_gml_427_0");
	c_talk_wait();
	c_wait(5);
	c_sel(ar);
	c_sprite(spr_cutscene_10_arcade_on);
	c_sel(qu);
	c_imagespeed(0);
	c_sprite(spr_queen_walk_left);
	c_imageindex(0);
	c_sel(su);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* The hell!? I've never played this one before...!/%", "obj_ch2_scene10_slash_Step_0_gml_442_0");
	c_talk_wait();
	c_wait(5);
	c_sel(ra);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* But Kris is quite good at games^1, aren't they?/%", "obj_ch2_scene10_slash_Step_0_gml_449_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Oh yeah. Kris^1, forgot you were a nerd. Show her!!/%", "obj_ch2_scene10_slash_Step_0_gml_456_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_walk("d", 6, 7);
	c_sel(ra);
	c_walk_wait("d", 6, 8);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_wait(5);
	c_sel(kr);
	c_facing("d");
	c_wait(5);
	c_waitcustom();
	c_actortokris();
	c_terminatekillactors();
}
if (con == 2 && customcon == 1 && morphDone == 0)
{
	time++;
	if (growStep == 0)
	{
		lerpValue = ease_out_elastic(time, 0, 1, 20);
		lerpValue2 = ease_out_elastic(time, 0, 1, 15);
		yScale = lerp(0.25, 2, lerpValue);
		xScale = lerp(1, 2, lerpValue2);
		ar_actor.image_yscale = yScale;
		ar_actor.image_xscale = xScale;
		if (lerpValue == 1)
		{
			customcon = 0;
			morphDone = 1;
			c_waitcustom_end();
		}
	}
}
if (con == 2 && customcon == 1 && morphDone == 1)
{
	su_npc = instance_create(su_actor.x, su_actor.y, obj_npc_facing);
	with (su_actor)
		instance_destroy();
	ra_npc = instance_create(ra_actor.x, ra_actor.y, obj_npc_facing);
	with (ra_actor)
		instance_destroy();
	qu_npc = instance_create(qu_actor.x, qu_actor.y, obj_npc_facing);
	with (qu_actor)
		instance_destroy();
	ar_npc = instance_create(ar_actor.x, ar_actor.y, obj_npc_sign);
	ar_npc.sprite_index = spr_cutscene_10_arcade_on;
	ar_npc.depthbonus = ar_actor.depthbonus;
	ar_npc.image_yscale = ar_actor.image_yscale;
	ar_npc.image_xscale = ar_actor.image_xscale;
	ar_npc.depth = ar_actor.depth;
	with (ar_actor)
		instance_destroy();
	pb_marker = instance_create(pb_actor.x, pb_actor.y, obj_marker);
	pb_marker.image_yscale = 2;
	pb_marker.image_xscale = 2;
	pb_marker.sprite_index = pb_actor.sprite_index;
	pb_marker.depth = pb_actor.depth;
	customcon = 0;
	c_waitcustom_end();
}
if (con == 2)
{
	if (!instance_exists(obj_cutscene_master))
	{
		global.interact = 0;
		global.plot = 33;
		con = 3;
		forcefield_left = instance_create(20, 120, obj_forcefield);
		forcefield_left.image_xscale = 2;
		forcefield_left.image_yscale = 8;
		forcefield_left.depth = 80000;
		forcefield_right = instance_create(580, 120, obj_forcefield);
		forcefield_right.image_xscale = 2;
		forcefield_right.image_yscale = 8;
		forcefield_right.depth = 8000;
	}
}
if (con == 4)
{
	con = 5;
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	with (su_npc)
		visible = 0;
	with (ra_npc)
		visible = 0;
	with (qu_npc)
		visible = 0;
	kr = 0;
	kr_actor = instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisu_dark;
	su = 1;
	su_actor = instance_create(su_npc.x, su_npc.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_dw;
	ra = 2;
	ra_actor = instance_create(ra_npc.x, ra_npc.y, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_walk_up;
	qu = 3;
	qu_actor = instance_create(qu_npc.x, qu_npc.y, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_left;
	c_sel(kr);
	c_walkdirect_wait(271, 144, 10);
	c_facing("u");
	c_wait(5);
	c_autowalk(0);
	c_speaker("no_name");
	c_msgsetloc(0, "* You tried to use the arcade machine./%", "obj_ch2_scene10_slash_Step_0_gml_586_0");
	c_talk_wait();
	c_sel(kr);
	c_sprite(spr_krisb_defeat);
	c_halt();
	c_shakeobj();
	c_soundplay(snd_grab);
	c_wait(5);
	c_speaker("no_name");
	c_msgsetloc(0, "* (You weren't tall or strong enough to use the controls...)/%", "obj_ch2_scene10_slash_Step_0_gml_595_0");
	c_talk_wait();
	c_wait(5);
	c_wait(20);
	c_sel(ra);
	c_facing("r");
	c_sel(su);
	c_facing("r");
	c_speaker("queen");
	c_msgsetloc(0, "\\EC* Self-Esteem Eradication Complete/", "obj_ch2_scene10_slash_Step_0_gml_611_0");
	c_msgnextloc("\\EC* Running Laughing Protocol/%", "obj_ch2_scene10_slash_Step_0_gml_612_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imagespeed(0.25);
	c_soundplay(snd_queen_laugh_1);
	c_speaker("queen");
	c_msgsetloc(0, "\\EP* Ha Ha Ha Ha Ha Ha Ha Ha Ha Ha/%", "obj_ch2_scene10_slash_Step_0_gml_620_0");
	c_talk_wait();
	c_wait(5);
	c_sel(ra);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_wait(5);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EQ* Uh..^1. ummm..^1. it's ok^1, Kris..^1. err..^1. I'm short^1, too.../", "obj_ch2_scene10_slash_Step_0_gml_630_0");
	c_msgnextloc("\\EK* K..^1. Kris...!^1! Wait^1, I have an idea!!/%", "obj_ch2_scene10_slash_Step_0_gml_631_0");
	c_talk_wait();
	c_wait(5);
	c_sel(kr);
	c_facing("l");
	c_sel(ra);
	c_sel(2);
	c_walk("u", 8, 9);
	c_wait(4);
	c_sel(kr);
	c_autowalk(1);
	c_autofacing(0);
	c_walk("r", 8, 6);
	c_wait(10.875);
	c_sel(ra);
	c_facing("r");
	c_sel(kr);
	c_autowalk(1);
	c_facing("l");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EJ* Kris^1, if we can combine our powers^1, then.../", "obj_ch2_scene10_slash_Step_0_gml_653_0");
	c_msgnextloc("\\EH* Look!^1! I'll show you what I've been practicing!!/%", "obj_ch2_scene10_slash_Step_0_gml_654_0");
	c_talk_wait();
	c_wait(5);
	c_delaycmd4(20, "fadeout", 20, 16777215, 0, 0);
	c_soundplay(snd_great_shine);
	c_waitcustom();
	c_sel(kr);
	c_setxy(335, 141);
	c_sel(ra);
	c_sprite(spr_cutscene_10_ralsei_stool);
	c_setxy(275, 139);
	c_fadein(15);
	c_wait(2);
	c_soundplay(snd_badexplosion);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EH* \\cYMagical Stool Forme R\\cW!!/", "obj_ch2_scene10_slash_Step_0_gml_670_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* Now we're talking!^1! Arright Kris^1, leave it to me!!/%", "obj_ch2_scene10_slash_Step_0_gml_672_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_walkdirect_wait(385, 125, 15);
	c_facing("l");
	c_sel(kr);
	c_facing("r");
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Put your arms out!!/%", "obj_ch2_scene10_slash_Step_0_gml_683_0");
	c_talk_wait();
	c_wait(5);
	c_autodepth(0);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_kris_t_pose);
	c_waitcustom();
	c_walkdirect_wait(282, 180, 15);
	c_wait(30);
	c_sel(su);
	c_script_instance(su_actor, scr_afterimage, 3);
	c_autodepth(0);
	c_autowalk(0);
	c_setxy(272, -100);
	c_depth(16);
	c_sprite(spr_cutscene_10_susie_t_pose);
	c_walkdirect_wait(272, 160, 30);
	c_wait(5);
	c_soundplay(snd_equip);
	c_wait(30);
	c_script_instance_stop(su_actor, scr_afterimage);
	c_sel(kr);
	c_visible(0);
	c_sel(su);
	c_sprite(spr_cutscene_10_susie_kris_t_pose_front);
	c_wait(1);
	c_imageindex(1);
	c_soundplay(snd_grab);
	c_wait(30);
	c_imageindex(2);
	c_soundplay(snd_shineselect);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* \\cYPower Beast Forme S\\c0!!/%", "obj_ch2_scene10_slash_Step_0_gml_715_0");
	c_talk_wait();
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Move your arms and I'll move 'em with ya!/", "obj_ch2_scene10_slash_Step_0_gml_720_0");
	c_msgnextloc("\\E2* Let's go!!/%", "obj_ch2_scene10_slash_Step_0_gml_721_0");
	c_talk_wait();
	c_sel(qu);
	c_setxy(335, 94);
	c_autowalk(1);
	c_sprite(spr_queen_walk_left);
	c_wait(5);
	c_waitcustom();
	c_sel(su);
	c_sprite(spr_cutscene_10_susie_kris_t_pose_back);
	c_jump(255, 113, 20, 15);
	c_wait(15);
	c_soundplay(snd_splat);
	c_sel(ra);
	c_autodepth(0);
	c_sprite(spr_cutscene_10_ralsei_splat);
	c_setxy(245, 183);
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "* Incredible/", "obj_ch2_scene10_slash_Step_0_gml_741_0");
	c_msgnextloc("\\ED* Your Transformation Is Combining All Your Weak Points/", "obj_ch2_scene10_slash_Step_0_gml_742_0");
	c_msgnextloc("\\E1* Self-Esteem Crushing Efficiency 300`% And Rising/%", "obj_ch2_scene10_slash_Step_0_gml_743_0");
	c_talk_wait();
	c_sel(qu);
	c_facing("u");
	c_speaker("queen");
	c_msgsetloc(0, "\\E7* Commence Virtual Combat/%", "obj_ch2_scene10_slash_Step_0_gml_748_0");
	c_talk_wait();
	c_wait(5);
	c_mus2("volume", 0, 15);
	c_wait(15);
	c_mus("free");
	c_actortokris();
	c_terminatekillactors();
}
if (con == 10)
{
	con = 11;
	if (i_ex(obj_npc_sign))
	{
		with (obj_npc_sign)
			instance_destroy();
		ar_npc = -4;
	}
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	with (global.cinstance[0])
		visible = 0;
	with (global.cinstance[1])
		visible = 0;
	kr = 0;
	kr_actor = instance_create(261, 143, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisu_dark;
	su = 1;
	su_actor = instance_create(282, 143, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_dw;
	ra = 2;
	ra_actor = instance_create(231, 147, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_walk_up;
	qu = 3;
	qu_actor = instance_create(325, 90, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_up;
	ar_npc = instance_create(322, 190, obj_npc_sign);
	ar_npc.sprite_index = spr_cutscene_10_arcade_on;
	ar_npc.depthbonus = 2000;
	ar_npc.image_yscale = 2;
	ar_npc.image_xscale = 2;
	ar_npc.depth = kr_actor.depth + 5;
	pb_marker = instance_create(290, 145, obj_marker);
	pb_marker.image_yscale = 2;
	pb_marker.image_xscale = 2;
	pb_marker.sprite_index = spr_cutscene_10_platter_bottom;
	pb_marker.depth = ar_npc.depth + 5000;
	c_wait(30);
	c_soundplay(snd_explosion_8bit);
	c_waitcustom();
	c_sel(kr);
	c_autofacing(0);
	c_walk("d", 16, 2);
	c_sel(ra);
	c_autofacing(0);
	c_walk("d", 16, 2);
	c_sel(su);
	c_autofacing(0);
	c_walk("d", 16, 2);
	c_sel(qu);
	c_autofacing(0);
	c_walk("d", 22, 2);
	c_wait(30);
	c_sel(kr);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_sel(su);
	c_facing("r");
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\EQ* Heh^1, thought you could beat US!?/%", "obj_ch2_scene10_slash_Step_0_gml_845_0");
	c_talk_wait();
	c_wait(5);
	c_mus2("initloop", "queen.ogg", 0);
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imagespeed(0.25);
	c_arg_objectxy(qu_actor, 20, 0);
	c_setxy(x, y);
	c_waitcustom();
}
if (con == 13 && customcon == 0)
{
	con = 14;
	cutscene_master = scr_cutscene_make();
	scr_actor_setup(kr, kr_actor, "kris");
	scr_actor_setup(su, su_actor, "susie");
	scr_actor_setup(ra, ra_actor, "ralsei");
	scr_actor_setup(qu, qu_actor, "queen");
	if (global.choice == 0)
	{
		c_sel(ra);
		c_sprite(spr_ralsei_walk_right_blush);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\ED* B..^1. Bosom...?/%", "obj_ch2_scene10_slash_Step_0_gml_879_0");
		c_talk_wait();
		c_wait(5);
		c_sel(qu);
		c_imagespeed(0);
		c_imageindex(0);
		c_autowalk(1);
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* It Means Tity/", "obj_ch2_scene10_slash_Step_0_gml_888_0");
		c_facenext("susie", "H");
		c_msgnextloc("* WE KNOW WHAT IT MEANS!!!/", "obj_ch2_scene10_slash_Step_0_gml_890_0");
		c_msgnextloc("\\E5* We aren't helping you!!!/", "obj_ch2_scene10_slash_Step_0_gml_891_0");
		c_facenext("queen", "C");
		c_msgnextloc("* Understood^1, Preference Settings Set To Perish/%", "obj_ch2_scene10_slash_Step_0_gml_893_0");
		c_talk_wait();
		c_wait(5);
		c_mus2("volume", 0, 40);
		c_sel(qu);
		c_walk_wait("u", 16, 2.857);
		c_walk("r", 16, 18.4375);
		c_wait(60);
	}
	if (global.choice == 1)
	{
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* (..^1. the hell did you say that so enthusiastically!?)/", "obj_ch2_scene10_slash_Step_0_gml_908_0");
		c_facenext("ralsei", "2");
		c_msgnextloc("\\E2* Err^1, Queen..^1. aren't there any other options?/%", "obj_ch2_scene10_slash_Step_0_gml_910_0");
		c_talk_wait();
		c_sel(qu);
		c_imagespeed(0);
		c_imageindex(0);
		c_autowalk(1);
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\E9* Yes..^1. You Can Also: Mega-Perish/", "obj_ch2_scene10_slash_Step_0_gml_918_0");
		c_facenext("susie", 4);
		c_msgnextloc("* Yeah^1, uh^1, no. Perishing..^1. bites./", "obj_ch2_scene10_slash_Step_0_gml_920_0");
		c_facenext("queen", "Q");
		c_msgnextloc("* You Could Say It: Mega-Bytes/", "obj_ch2_scene10_slash_Step_0_gml_922_0");
		c_facenext("susie", "H");
		c_msgnextloc("\\EH* Would you get out of here already!?!?/", "obj_ch2_scene10_slash_Step_0_gml_924_0");
		c_facenext("queen", "C");
		c_msgnextloc("* Understood. Preference Settings Set To \"Perish\"/%", "obj_ch2_scene10_slash_Step_0_gml_926_0");
		c_talk_wait();
		c_wait(5);
		c_mus2("volume", 0, 40);
		c_sel(qu);
		c_autowalk(1);
		c_walk_wait("u", 16, 2.857);
		c_walk("r", 16, 18.4375);
		c_wait(60);
	}
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* C'mon^1, let's go after her!/%", "obj_ch2_scene10_slash_Step_0_gml_940_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("d");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 5 && customcon == 1)
{
	if (specialTimer < 60)
	{
		specialDraw = 1;
		specialTimer++;
	}
	else
	{
		specialDraw = 0;
		customcon = 0;
		specialTimer = 0;
		con = 6;
		c_waitcustom_end();
	}
}
if (con == 6 && customcon == 1)
{
	if (specialTimer == 0)
	{
		animeBG = instance_create(0, 0, obj_anime_bg_controller);
		animeBG.image_alpha = 0;
		kr_actor.depth = 15;
		animeBG.depth = 19;
		specialTimer = 1;
	}
	if (animeBG.image_alpha >= 1)
	{
		specialTimer = 0;
		customcon = 0;
		con = 7;
		c_waitcustom_end();
	}
	else
	{
		animeBG.image_alpha += 0.05;
	}
}
if (con == 7 && customcon == 1)
{
	bgAlpha = clamp(bgAlpha - 0.1, 0, 1);
	animeBG.image_alpha -= 0.1;
	if (animeBG.image_alpha <= 0)
	{
		with (animeBG)
			instance_destroy();
		ar_npc.depthbonus = 3000;
		pb_marker.depth = 99999;
		ra_actor.depthbonus = 450;
		customcon = 0;
		specialTimer = 0;
		con = 8;
		c_waitcustom_end();
	}
}
if (con == 8 && customcon == 0)
{
	if (!instance_exists(obj_cutscene_master))
	{
		global.plot = 54;
		con = 20;
		customcon = 0;
	}
	else
	{
		kr_x_save = kr_actor.x;
		kr_y_save = kr_actor.y;
		su_x_save = su_actor.x;
		su_y_save = su_actor.y;
		ra_x_save = ra_actor.x;
		ra_y_save = ra_actor.y;
	}
}
if (con == 20)
{
	con = 9;
	with (obj_mainchara)
		visible = 0;
	with (global.cinstance[0])
		visible = 0;
	with (global.cinstance[1])
		visible = 0;
	ra_actor = instance_create(ra_x_save, ra_y_save, obj_marker);
	ra_actor.sprite_index = spr_cutscene_10_ralsei_splat;
	ra_actor.image_xscale = 2;
	ra_actor.image_yscale = 2;
	kr_actor = instance_create(su_x_save, su_y_save, obj_marker);
	kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back;
	kr_actor.image_xscale = 2;
	kr_actor.image_yscale = 2;
	su_actor = instance_create(su_x_save, su_y_save, obj_marker);
	su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back;
	su_actor.image_xscale = 2;
	su_actor.image_yscale = 2;
	ra_actor.depth = su_actor.depth + 1;
	qu_actor = instance_create(335, 90, obj_marker);
	qu_actor.sprite_index = spr_queen_walk_up;
	qu_actor.image_xscale = 2;
	qu_actor.image_yscale = 2;
	qu_actor.image_speed = 0;
	instance_create(x, y, obj_ch2_scene10_arcade_bg);
}
if (con == 11 && customcon == 1 && !i_ex(obj_battlecontroller))
{
	if (specialDraw == 0)
	{
		explosion_marker = instance_create(ar_npc.x, ar_npc.y - 90, obj_marker);
		explosion_marker.image_yscale = 4;
		explosion_marker.image_xscale = 4;
		explosion_marker.depth = qu_actor.depth + 1;
		explosion_marker.sprite_index = spr_vector_explosion;
		explosion_marker.image_speed = 0.1333;
		specialDraw = 69;
		con = 12;
		customcon = 0;
		c_waitcustom_end();
	}
}
if (con == 12 && customcon == 1)
{
	if (specialDraw == 70)
	{
		global.msc = 1014;
		scr_text(global.msc);
		mydialoguer = instance_create(0, 0, obj_dialoguer);
		specialDraw = 71;
	}
	if (!instance_exists(obj_dialoguer))
	{
		con = 13;
		customcon = 0;
		c_waitcustom_end();
	}
}
if (specialDraw == 69)
{
	if (explosion_marker.image_index > 0 && ar_npc.sprite_index == spr_cutscene_10_arcade_on)
	{
		ar_npc.sprite_index = spr_cutscene_10_arcade_rubble;
		ar_npc.y = 200;
	}
	explosiontimer++;
	if (explosiontimer == 32)
	{
		with (explosion_marker)
			instance_destroy();
		specialDraw = 70;
	}
}
if (con == 15)
{
	if (instance_exists(obj_musicer_cyber))
	{
		with (obj_musicer_cyber)
			instance_destroy();
	}
	instance_create(x, y, obj_musicer_cyber);
	con = 16;
	instance_destroy();
}
if (con == 14 && customcon == 0)
{
	if (!instance_exists(obj_cutscene_master))
	{
		global.interact = 0;
		global.plot = 55;
		con = 15;
		instance_create(458, 127, obj_savepoint);
		snd_free_all();
		instance_destroy(forcefield_left);
		instance_destroy(forcefield_right);
		if (i_ex(obj_npc_facing))
		{
			with (obj_npc_facing)
				instance_destroy();
		}
	}
}
if (pause_music)
{
	pause_music = false;
	snd_free_all();
}
