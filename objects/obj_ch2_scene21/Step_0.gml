if (obj_mainchara.x > x && con == -1)
{
	con = 1;
	ffield = instance_create(0, 200, obj_forcefield);
	ffield.image_xscale = 2;
	ffield.image_yscale = 8;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
}
if (con == 1)
{
	con = 2;
	alarm[0] = 30;
	c_mus2("volume", 0, 30);
	c_msgside("bottom");
	c_sel(ra);
	c_sprite(spr_ralsei_hurt);
	c_arg_objectxy(ra_actor, -30, 0);
	c_setxy(x, y);
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EL* A..^1. A giant lake of acid!?/%", "obj_ch2_scene21_slash_Step_0_gml_31_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("r");
	c_arg_objectxy(ra_actor, 30, 0);
	c_setxy(x, y);
	c_wait(10);
	c_var_instance(queen_monitor, "turnon", 1);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Oh You Mean The Free Pool/", "obj_ch2_scene21_slash_Step_0_gml_45_0");
	c_msgnextloc("\\ED* You Will Learn To Love It Like Family/", "obj_ch2_scene21_slash_Step_0_gml_46_0");
	c_facenext("ralsei", "K");
	c_msgnextloc("\\EK* Why do you have this!?/", "obj_ch2_scene21_slash_Step_0_gml_48_0");
	c_facenext("queen", "O");
	c_msgnextloc("\\EO* It Is My Mansion's Energy Source And Fun To Drink/", "obj_ch2_scene21_slash_Step_0_gml_50_0");
	c_msgnextloc("\\EP* Bye Ha Ha Ha/%", "obj_ch2_scene21_slash_Step_0_gml_51_0");
	c_talk_wait();
	c_var_instance(queen_monitor, "turnoff", 1);
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EL* .../", "obj_ch2_scene21_slash_Step_0_gml_58_0");
	c_msgnextloc("\\EE* How..^1. should we pass this!?/%", "obj_ch2_scene21_slash_Step_0_gml_59_0");
	c_talk_wait();
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.interact = 0;
	global.facing = 0;
}
if (release_swan)
{
	if (global.interact == 0)
	{
		global.interact = 1;
		global.facing = 1;
	}
	if (lever_timer == 0)
	{
		with (lever)
			image_index = 1;
	}
	if (lever_timer == 3)
	{
		with (lever)
			image_index = 2;
	}
	lever_timer++;
	swanboat.y -= 5;
	if (swanboat.y <= 177)
	{
		swanboat_init_y = swanboat.y;
		release_swan = false;
		con = 5;
		var swan_interact = instance_create(swanboat.x, 177, obj_npc_sign);
		swan_interact.visible = 0;
		swan_interact.image_yscale = 6;
		scr_speaker("ralsei");
		msgsetloc(0, "\\EJ* I suppose..^1. this..^1. works. Haha./%", "obj_ch2_scene21_slash_Step_0_gml_109_0");
		d_make();
	}
}
if (remove_collider)
{
	remove_collider = false;
	queen_heckle_start = true;
}
if (con == 5 && !d_ex())
{
	con = 6;
	global.interact = 0;
	global.facing = 0;
	snd_free_all();
	alarm[1] = 1;
}
if (con == 6)
{
	if (swanboat_talk && abs(swanboat.x - monitor[queen_heckle_index].x) <= 500)
	{
		swanboat_talk = false;
		with (swanboat)
		{
			dotalk = 1;
			talkcon++;
		}
		if (queen_heckle_index == 3)
			queen_heckle = true;
	}
}
if (queen_heckle_start)
{
	if (queen_heckle && !d_ex())
	{
		queen_heckle = false;
		queen_heckle_con = queen_heckle_index + 1;
		monitor[queen_heckle_index].turnon = true;
	}
	if (queen_heckle_con == 1)
	{
		queen_heckle_con = 999;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Ohhh Wow I'm So Distracted Right Now/%", "obj_ch2_scene21_slash_Step_0_gml_173_0");
		var d = d_make();
		d.zurasu = 1;
		d.side = 1;
	}
	if (queen_heckle_con == 2)
	{
		queen_heckle_con = 999;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Just Tropical Villas For My Guests Isn't That Thoughtful/", "obj_ch2_scene21_slash_Step_0_gml_183_0");
		scr_anyface_next("ralsei", "X");
		msgnextloc("\\EX* ..^1. How would anybody fit inside?/", "obj_ch2_scene21_slash_Step_0_gml_185_0");
		scr_anyface_next("queen", 1);
		msgnextloc("\\E1* Shrink From The Acid/%", "obj_ch2_scene21_slash_Step_0_gml_187_0");
		var d = d_make();
		d.zurasu = 1;
		d.side = 1;
	}
	if (queen_heckle_con == 3)
	{
		queen_heckle_con = 999;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Kris Get The Banana/", "obj_ch2_scene21_slash_Step_0_gml_197_0");
		scr_anyface_next("ralsei", 14);
		msgnextloc("\\EE* Kr..^1. Kris isn't going to do what you say!/%", "obj_ch2_scene21_slash_Step_0_gml_199_0");
		var d = d_make();
		d.zurasu = 1;
		d.side = 1;
	}
	if (queen_heckle_con == 4 && !got_banana)
	{
		con = 7;
		queen_heckle_con = 999;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Fools I Wanted You To Avoid It/", "obj_ch2_scene21_slash_Step_0_gml_211_0");
		msgnextloc("\\E6* Now You Will Become Potassium Deficient/%", "obj_ch2_scene21_slash_Step_0_gml_212_0");
		var d = d_make();
		d.zurasu = 1;
		d.side = 1;
	}
	if (queen_heckle_con == 999 && !d_ex())
	{
		swanboat_talk = true;
		queen_heckle_con = 0;
		monitor[queen_heckle_index].turnoff = true;
		queen_heckle_index++;
	}
}
if (got_banana && !d_ex())
{
	con = 7;
	got_banana = false;
	scr_speaker("ralsei");
	msgsetloc(0, "\\EQ* Th-that's okay^1, Kris. It's good for you./%", "obj_ch2_scene21_slash_Step_0_gml_234_0");
	var d = d_make();
	d.zurasu = 1;
}
if (con == 7 && !d_ex())
{
	if (swanboat.x > 3255)
	{
		con = 8;
		scr_speaker("ralsei");
		msgsetloc(0, "\\EJ* ..^1. looks like we're coming up on a tunnel!/%", "obj_ch2_scene21_slash_Step_0_gml_246_0");
		var d = d_make();
		d.zurasu = 1;
	}
}
if (con == 8 && !d_ex())
	con = 99;
