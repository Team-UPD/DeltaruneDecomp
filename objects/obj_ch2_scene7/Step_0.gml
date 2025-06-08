if (con == 0 && global.plot == 16)
{
	global.interact = 1;
	con = 1;
}
if (con == 1)
{
	con = 2;
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	c_pannable(1);
	kr = 0;
	kr_actor = instance_create(obj_mainchara.x - 10, obj_mainchara.y - 20, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisd;
	su = 3;
	su_actor = instance_create(obj_mainchara.x + 10, obj_mainchara.y - 26, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_down_lw_unhappy;
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Well^1, damn. GUESS we gotta do our project./", "obj_ch2_scene7_slash_Step_0_gml_31_0");
	c_msgnextloc("\\EB* (Sigh...)/%", "obj_ch2_scene7_slash_Step_0_gml_32_0");
	c_talk_wait();
	c_sel(su);
	c_facing("susie");
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E9* Least we got Lancer^1, right!?/%", "obj_ch2_scene7_slash_Step_0_gml_39_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_facing("r");
	c_wait(10);
	c_facing("l");
	c_wait(9);
	c_facing("r");
	c_wait(8);
	c_facing("l");
	c_wait(7);
	c_facing("d");
	c_wait(6);
	c_facing("u");
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* ..^1. Lancer? Where are you?/%", "obj_ch2_scene7_slash_Step_0_gml_58_0");
	c_talk_wait();
	c_wait(5);
	c_facing("susieunhappy");
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Damn^1, guess he skipped out after all^1, huh./%", "obj_ch2_scene7_slash_Step_0_gml_66_0");
	c_talk_wait();
	c_wait(5);
	c_sel(kr);
	c_walk("d", 1, 30);
	c_sel(su);
	c_walk("d", 2, 30);
	c_speaker("susie");
	c_msgside("top");
	c_msgsetloc(0, "* Hmm..^1. so^1, where should we do this?/%", "obj_ch2_scene7_slash_Step_0_gml_76_0");
	c_talk();
	c_wait(30);
	c_waittalk();
	c_facing("u");
	c_facing("susie");
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* ..^1. what? The Library?/%", "obj_ch2_scene7_slash_Step_0_gml_85_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Ugh..^1. Well^1, alright./%", "obj_ch2_scene7_slash_Step_0_gml_92_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_walk("d", 5, 60);
	c_actortokris();
	c_panobj(84, 15);
	c_wait(15);
	c_pannable(0);
}
if (con == 2)
{
	if (!instance_exists(obj_cutscene_master))
	{
		global.interact = 0;
		global.plot = 17;
		con = 3;
	}
}
