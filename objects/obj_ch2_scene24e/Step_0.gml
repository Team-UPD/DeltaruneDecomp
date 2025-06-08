if (con == -1 && !instance_exists(obj_ch2_scene23a))
{
	con = 1;
	global.interact = 1;
	if (global.flag[331] == 0)
	{
		blackall = scr_dark_marker(-10, -10, spr_pixel_white);
		blackall.image_xscale = 999;
		blackall.image_yscale = 999;
		blackall.depth = 100;
		blackall.image_blend = c_black;
	}
}
if (con == 1)
{
	con = 2;
	if (global.flag[331] == 0)
	{
		snd_free_all();
		if (!snd_is_playing(global.currentsong[1]))
		{
			global.currentsong[0] = snd_init("wind_highplace.ogg");
			global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
		}
		with (obj_mainchara)
		{
			x = 245;
			y = 750;
			visible = 0;
		}
		scr_losechar();
		scr_getchar(2);
		scr_makecaterpillar(obj_mainchara.x + 50, obj_mainchara.y - 6, 2, 0);
		scr_getchar(3);
		scr_makecaterpillar(obj_mainchara.x + 120, obj_mainchara.y - 6, 3, 1);
		with (obj_caterpillarchara)
			visible = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		c_sel(ra);
		c_setxy(315, 743);
		c_facing("l");
		c_sel(kr);
		c_facing("r");
	}
	else
	{
		scr_getchar(2);
		scr_makecaterpillar(camerax() - 100, obj_mainchara.y - 6, 2, 1);
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
	}
	c_sel(su);
	c_sprite(spr_susie_dw_fall_d);
	c_imagespeed(0.25);
	c_setxy(290, cameray() - 100);
}
if (con == 2)
{
	global.facing = 0;
	c_msgside("top");
	con = 10;
	if (global.flag[331] == 0)
	{
		c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30);
		c_wait(30);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EI* So that's why.../", "obj_ch2_scene24e_slash_Step_0_gml_75_0");
		c_facenext("susie", "H");
		c_msgnextloc("\\EH* Geronimo!!/%", "obj_ch2_scene24e_slash_Step_0_gml_77_0");
		c_talk_wait();
	}
	else
	{
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* Geronimo!!/%", "obj_ch2_scene24e_slash_Step_0_gml_82_0");
		c_talk_wait();
	}
	c_soundplay(snd_criticalswing);
	c_sel(su);
	c_autodepth(0);
	c_depth(0);
	c_autowalk(0);
	c_walkdirect_wait(290, ra_actor.y - 2, 15);
	c_sprite(spr_susie_dw_landed);
	c_imagespeed(0.25);
	c_sel(ra);
	c_autodepth(0);
	c_sprite(spr_cutscene_10_ralsei_splat);
	c_setxy(282, ra_actor.y + 52);
	c_soundplay(snd_splat);
	c_sel(su);
	c_wait(10);
	c_sprite(spr_cutscene_10_susie_t_pose);
	c_imagespeed(0);
	c_wait(30);
	c_sel(su);
	c_autowalk(1);
	c_walk_wait("l", 3, 5);
	c_autowalk(0);
	c_sprite(spr_susie_walk_back_arm);
	c_imagespeed(0);
	c_imageindex(0);
	c_flip("x");
	c_msgside("top");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Heh^1, miss me?/%", "obj_ch2_scene24e_slash_Step_0_gml_127_0");
	c_talk_wait();
	c_sel(ra);
	c_sprite(spr_cutscene_24e_ralsei_splat_mad);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EN* Of course not!!/%", "obj_ch2_scene24e_slash_Step_0_gml_135_0");
	c_talk_wait();
	c_sprite(spr_cutscene_24e_ralsei_splat_happy);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EH* (Just kidding^1! That was sarcasm^1! I missed you!!)/%", "obj_ch2_scene24e_slash_Step_0_gml_142_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(1);
	c_flip("x");
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Man^1, we gotta work on your delivery./%", "obj_ch2_scene24e_slash_Step_0_gml_152_0");
	c_talk_wait();
	c_soundplay(snd_jump);
	if (kr_actor.y > 770)
		c_jump_sprite(325, kr_actor.y - 55, 12, 17, spr_susie_dw_fall_d, spr_susie_dw_landed);
	else
		c_jump_sprite(235, kr_actor.y + 25, 12, 17, spr_susie_dw_fall_d, spr_susie_dw_landed);
	c_autodepth(1);
	c_wait(25);
	if (kr_actor.y > 770)
		c_walkdirect_wait(176, kr_actor.y - 55, 30);
	c_walkdirect(176, kr_actor.y - 15, 17);
	c_delayfacing(18, "r");
	c_sel(kr);
	c_facing("d");
	c_wait(5);
	c_facing("l");
	c_sel(ra);
	c_autowalk(1);
	c_autodepth(1);
	c_facing("l");
	c_setxy(314, kr_actor.y + 5);
	if (kr_actor.y > 770)
	{
		c_walk_wait("u", 6, 6);
		c_walk_wait("l", 6, 33);
		c_walkdirect_wait(120, kr_actor.y - 7, 8);
		c_facing("r");
	}
	else
	{
		c_walk_wait("d", 6, 4);
		c_walk_wait("l", 6, 33);
		c_walkdirect_wait(120, kr_actor.y - 7, 8);
		c_facing("r");
	}
	c_wait(10);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Anyway^1, let's go!/%", "obj_ch2_scene24e_slash_Step_0_gml_185_0");
	c_talk_wait();
	c_facing("l");
	c_sel(su);
	c_facing("l");
}
if (con == 10 && !d_ex())
{
	con = 11;
	alarm[0] = 30;
	scr_losechar();
	if (i_ex(obj_caterpillarchara))
	{
		with (obj_caterpillarchara)
			instance_destroy();
	}
	scr_getchar(2);
	scr_getchar(3);
	if (su_actor != -4)
		scr_makecaterpillar(su_actor.x, su_actor.y - 6, 2, 0);
	if (ra_actor != -4)
		scr_makecaterpillar(ra_actor.x, ra_actor.y - 6, 3, 1);
	if (i_ex(obj_caterpillarchara))
	{
		with (obj_caterpillarchara)
			visible = 0;
	}
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 12 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	global.plot = 160;
	con = 99;
	scr_tempsave();
	var savepoint = instance_create(460, 720, obj_savepoint);
	with (savepoint)
		scr_depth();
	instance_destroy();
}
