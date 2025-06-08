if (con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 0;
}
if (con == 1)
{
	con = 2;
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	scr_losechar();
	cutscene_master = scr_cutscene_make();
	kr = 0;
	kr_actor = instance_create(-20, 628, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisr_dark;
	su = 1;
	su_actor = instance_create(-100, 612, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_right_dw;
	ra = 2;
	ra_actor = instance_create(-200, 600, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_walk_right;
}
if (con == 2)
{
	con = 3;
	c_sel(kr);
	c_walkdirect(242, 628, 45);
	c_delayfacing(97, "u");
	c_sel(ra);
	c_walkdirect(321, 600, 75);
	c_delaywalkdirect(76, 321, 549, 20);
	c_delayfacing(97, "u");
	c_sel(su);
	c_walkdirect_wait(411, 612, 90);
	c_facing("l");
	c_delayfacing(7, "u");
	c_wait(45);
	c_sel(ra);
	c_facing("d");
	c_msc(1057);
	c_talk_wait();
}
if (con == 10)
{
	con = 12;
	c_sel(1);
	c_walkdirect(346, 541, 5);
	c_delayfacing(6, "l");
	c_wait(5);
	c_sel(ra);
	c_autowalk(0);
	c_sprite(spr_ralsei_walk_right);
	c_imagespeed(0.25);
	c_walk_wait("l", 5, 5);
	c_imagespeed(0);
	c_autowalk(1);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* Hey^1, why does Kris get to choose all the time!?/%", "obj_ch2_scene12_slash_Step_0_gml_85_0");
	c_talk_wait();
	c_sel(ra);
	c_visible(0);
	c_soundplay(snd_grab);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_12_susie_ralsei_drag);
	c_imagespeed(0);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Ralsei^1, you're going with me!/%", "obj_ch2_scene12_slash_Step_0_gml_100_0");
	c_talk_wait();
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EU* H-huh!? K-Kris^1, I...!!/%", "obj_ch2_scene12_slash_Step_0_gml_104_0");
	c_talk_wait();
	c_imagespeed(0.25);
	c_walk("u", 8, 90);
	c_pannable(1);
	c_panspeed_wait(0, -4, 25);
	c_wait(10);
	c_var_lerp_instance(dogcone1, "x", dogcone1.x, dogcone1.x - 40, 20);
	c_var_lerp_instance(dogcone2, "x", dogcone2.x, dogcone1.x - 80, 20);
	c_var_lerp_instance(dogcone3, "x", dogcone3.x, dogcone1.x - 120, 20);
	c_wait(60);
	c_panobj(kr_actor, 30);
	c_wait(30);
	c_pannable(0);
}
if (con == 12 && !d_ex())
{
	con = 50;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	scr_losechar();
	with (obj_caterpillarchara)
		instance_destroy();
	global.plot = 66;
	global.interact = 0;
	global.facing = 0;
	con = 0;
	scr_tempsave();
}
