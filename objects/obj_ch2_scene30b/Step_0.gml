if (con == -1)
{
	snd_free_all();
	con = 1;
	global.interact = 1;
	global.facing = 0;
	obj_mainchara.x = 555;
	obj_mainchara.y = 133;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	su = 2;
	su_actor = instance_create(580, 130, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_30b_susie_unslouch_walk;
	c_sel(su);
	c_autowalk(0);
	c_halt();
	to = 3;
	to_actor = instance_create(520, 120, obj_actor);
	scr_actor_setup(to, to_actor, "toriel");
}
if (con == 1)
{
	con = 2;
	c_mus2("initloop", "home.ogg", 0);
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
	c_sel(kr);
	c_walk("l", 1, 40);
	c_sel(to);
	c_walk_wait("l", 1, 80);
	c_facing("r");
	c_wait(30);
	c_speaker("toriel");
	c_msgsetloc(0, "* Feel free to come in./%", "obj_ch2_scene30b_slash_Step_0_gml_48_0");
	c_talk_wait();
	c_sel(su);
	c_imagespeed(0.25);
	c_walk_wait("l", 1, 15);
	c_imagespeed(0);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* .../", "obj_ch2_scene30b_slash_Step_0_gml_61_0");
	c_facenext("toriel", 0);
	c_msgnextloc("* Oh^1, excuse me. I am Kris's mother^1, Toriel.../", "obj_ch2_scene30b_slash_Step_0_gml_63_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Y.. yes^1, Ma'am. I..^1. remember./", "obj_ch2_scene30b_slash_Step_0_gml_65_0");
	c_facenext("toriel", 4);
	c_msgnextloc("\\E4* Oh^1, you do? And you are..^1. Susie^1, are you not?/", "obj_ch2_scene30b_slash_Step_0_gml_67_0");
	c_facenext("susie", "6");
	c_msgnextloc("\\E6* H..^1. huh? You^1, um..^1. remember my name^1, too...?/", "obj_ch2_scene30b_slash_Step_0_gml_69_0");
	c_facenext("toriel", 2);
	c_msgnextloc("\\E2* Of course. Ms. Alphys is a good friend of mine./%", "obj_ch2_scene30b_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_sel(to);
	c_autowalk(0);
	c_sprite(spr_cutscene_30b_toriel_laugh);
	c_imagespeed(0.25);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* She often talks about you!/", "obj_ch2_scene30b_slash_Step_0_gml_80_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* ..^1. umm^1, glad to hear it./%", "obj_ch2_scene30b_slash_Step_0_gml_82_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_30b_susie_unslouch);
	c_imagespeed(0.5);
	c_wait(6);
	c_imagespeed(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* (Kris^1, the hell is Alphys saying about me!?)/%", "obj_ch2_scene30b_slash_Step_0_gml_93_0");
	c_talk_wait();
	c_sel(to);
	c_autowalk(1);
	c_walk_wait("l", 4, 5);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* Susie^1, why don't you wash your hands over there.../%", "obj_ch2_scene30b_slash_Step_0_gml_102_0");
	c_talk_wait();
	c_sel(to);
	c_facing("r");
	c_sel(su);
	c_sprite(spr_cutscene_30b_susie_unslouch_walk);
	c_imageindex(0);
	c_imagespeed(0);
	c_shakeobj();
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* Then we can make the pie together?/%", "obj_ch2_scene30b_slash_Step_0_gml_117_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Make it..^1. together?/", "obj_ch2_scene30b_slash_Step_0_gml_121_0");
	c_msgnextloc("\\EC* Uhh..^1. but I don't know how to.../%", "obj_ch2_scene30b_slash_Step_0_gml_122_0");
	c_talk_wait();
	c_sel(to);
	c_facing("d");
	c_speaker("toriel");
	c_msgsetloc(0, "* Do not worry^1, I can teach you!/", "obj_ch2_scene30b_slash_Step_0_gml_130_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* ..^1. OK./%", "obj_ch2_scene30b_slash_Step_0_gml_132_0");
	c_talk_wait();
	c_sel(su);
	c_imagespeed(0.25);
	c_walk("l", 4, 70);
	c_wait(40);
	c_sel(to);
	c_walk("r", 3, 8);
	c_sel(kr);
	c_walk_wait("l", 3, 8);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E0* Kris^1, Susie seems like a nice girl./", "obj_ch2_scene30b_slash_Step_0_gml_151_0");
	c_msgnextloc("\\E1* I am very happy you are friends with her^1, but.../%", "obj_ch2_scene30b_slash_Step_0_gml_152_0");
	c_talk_wait();
	c_sel(to);
	c_facing("d");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* .../%", "obj_ch2_scene30b_slash_Step_0_gml_160_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* Kris^1, I..^1. heard from Alphys^1, about her..^1. behavior./", "obj_ch2_scene30b_slash_Step_0_gml_167_0");
	c_msgnextloc("\\E8* If by any chance^1, she^1, er^1, influences you^1, er.../%", "obj_ch2_scene30b_slash_Step_0_gml_168_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_cutscene_30b_toriel_laugh);
	c_imagespeed(0.25);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* Leave the chalk alone^1, alright???/%", "obj_ch2_scene30b_slash_Step_0_gml_177_0");
	c_talk_wait();
	c_sel(to);
	c_sprite(spr_toriel_dt);
	c_halt();
	c_sel(su);
	c_flip("x");
	c_setxy(350, 130);
	c_imagespeed(0.25);
	c_walk_wait("r", 4, 45);
	c_flip("x");
	c_imagespeed(0);
	c_imageindex(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Hands^1, uh..^1. washed./", "obj_ch2_scene30b_slash_Step_0_gml_194_0");
	c_facenext("toriel", 0);
	c_msgnextloc("* Wonderful^1! Now we can.../%", "obj_ch2_scene30b_slash_Step_0_gml_196_0");
	c_talk_wait();
	c_sel(to);
	c_facing("r");
	c_emote("!", 30);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* Oh^1, Kris^1! How about YOU show Susie how to bake it?/", "obj_ch2_scene30b_slash_Step_0_gml_205_0");
	c_facenext("susie", 6);
	c_msgnextloc("\\E6* Kris!? You know how to make pie!?/%", "obj_ch2_scene30b_slash_Step_0_gml_207_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_30b_susie_playful_punch);
	c_sel(kr);
	c_facing("d");
	c_sel(su);
	c_autowalk(0);
	c_imagespeed(0.1);
	c_var_instance(id, "punchcon", 1);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* The hell haven't you made ME any then^1, dumbass!!/", "obj_ch2_scene30b_slash_Step_0_gml_224_0");
	c_msgnextloc("* You pie-hoarding piece of -/%", "obj_ch2_scene30b_slash_Step_0_gml_225_0");
	c_talk_wait();
	c_var_instance(id, "punchcon", -1);
	c_sel(to);
	c_sprite(spr_cutscene_30b_toriel_laugh);
	c_imagespeed(0.25);
	c_sel(su);
	c_sprite(spr_cutscene_30b_susie_playful_punch2);
	c_wait(30);
	c_sprite(spr_cutscene_30b_susie_unslouch_walk);
	c_imageindex(0);
	c_imagespeed(0);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\EG* I mean^1, uhh..^1. 'scuse me^1, Ma'am./%", "obj_ch2_scene30b_slash_Step_0_gml_246_0");
	c_talk_wait();
	c_sel(to);
	c_sprite(spr_toriel_rt);
	c_imagespeed(0);
	c_speaker("toriel");
	c_msgsetloc(0, "* Susie^1, you can just call me Toriel outside of school./%", "obj_ch2_scene30b_slash_Step_0_gml_255_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_30b_susie_unslouch);
	c_imagespeed(0.5);
	c_wait(6);
	c_imagespeed(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EL* Oh okay sweet./%", "obj_ch2_scene30b_slash_Step_0_gml_267_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("d");
	c_sel(to);
	c_autowalk(1);
	c_facing("d");
	c_sel(kr);
	c_walk_wait("d", 2, 10);
	c_facing("u");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* ..^1. huh? Kris? Oh^1, YOU need to wash your hands too?/", "obj_ch2_scene30b_slash_Step_0_gml_281_0");
	c_msgnextloc("\\E1* Then^1, I suppose I shall teach Susie for now./", "obj_ch2_scene30b_slash_Step_0_gml_282_0");
	c_msgnextloc("\\E0* Susie and I will start getting ready to make the pie!/%", "obj_ch2_scene30b_slash_Step_0_gml_283_0");
	c_talk_wait();
	c_sel(to);
	c_sprite(spr_toriel_rt);
	c_imagespeed(0);
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Uhhh^1, we will? Wait--!/%", "obj_ch2_scene30b_slash_Step_0_gml_294_0");
	c_talk_wait();
	c_autowalk(1);
	c_walk("l", 4, 50);
	c_sel(to);
	c_autowalk(1);
	c_walk_wait("l", 4, 50);
	c_pannable(1);
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_pannable(0);
}
if (punchcon == 1)
{
	if (su_actor.image_index >= 1 && punchtimer == 0)
	{
		punchtimer = 1;
		with (kr_actor)
			scr_shakeobj();
		snd_play(snd_impact);
	}
	else if (su_actor.image_index < 1)
	{
		punchtimer = 0;
	}
}
if (con == 2 && !d_ex())
{
	con = 3;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	global.plot = 210;
	susienpc.visible = 1;
	torielnpc.visible = 1;
	krisexplore = true;
	con = 0;
}
if (krisexplore)
{
	if (obj_mainchara.y < 100 && obj_mainchara.x < 170)
	{
		global.interact = 1;
		global.facing = 0;
		krisexplore = false;
		con = 10;
		obj_mainchara.y = 104;
	}
	if (obj_mainchara.y < 160 && obj_mainchara.x > 568)
	{
		global.interact = 1;
		global.facing = 3;
		krisexplore = false;
		con = 11;
		obj_mainchara.x = 568;
	}
}
if (con == 10)
{
	con = 50;
	scr_speaker("toriel");
	msgsetloc(0, "* (Kris^1! This is not the time to sneak some chocolates!)/", "obj_ch2_scene30b_slash_Step_0_gml_373_0");
	scr_anyface_next("susie", "P");
	msgnextloc("\\EP* (Kris^1, get me some at least.)/%", "obj_ch2_scene30b_slash_Step_0_gml_375_0");
	d_make();
}
if (con == 11)
{
	con = 50;
	scr_speaker("susie");
	msgsetloc(0, "\\EH* (The hell are you leaving me here with your mom!?)/", "obj_ch2_scene30b_slash_Step_0_gml_383_0");
	msgnextloc("\\EK* (Is this like a..^1. what's it called? An introvert thing?)/%", "obj_ch2_scene30b_slash_Step_0_gml_384_0");
	d_make();
}
if (con == 50 && !d_ex())
{
	con = 0;
	global.interact = 0;
	global.facing = 0;
	krisexplore = true;
}
