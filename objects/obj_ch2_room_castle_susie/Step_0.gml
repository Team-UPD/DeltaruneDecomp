if (obj_mainchara.y < y && con == -1)
{
	global.interact = 1;
	global.facing = 2;
	con = 1;
}
if (con == 1)
{
	con = 2;
	alarm[0] = 30;
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	kr = 0;
	kr_actor = instance_create(300, 500, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisu_dark;
	su = 1;
	su_actor = instance_create(kr_actor.x - 8, kr_actor.y + 50, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_dw;
	ra = 2;
	ra_actor = instance_create(kr_actor.x - 4, su_actor.y + 50, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_walk_up;
	c_sel(kr);
	c_walk("u", 5, 36);
	c_delaywalk(37, "r", 5, 12);
	c_delayfacing(50, "u");
	c_sel(su);
	c_walk("u", 5, 60);
	c_delaywalk(51, "l", 5, 12);
	c_delayfacing(63, "u");
	c_sel(ra);
	c_walk("u", 5, 80);
	c_delayfacing(81, "d");
	c_wait(82);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* And Susie^1, this is your room!/", "obj_ch2_room_castle_susie_slash_Step_0_gml_49_0");
	c_msgnextloc("\\E1* Umm^1, I tried to make it something you'd like^1, but.../", "obj_ch2_room_castle_susie_slash_Step_0_gml_50_0");
	c_msgnextloc("\\E2* You can put anything else you want in here^1, too!/", "obj_ch2_room_castle_susie_slash_Step_0_gml_51_0");
	c_msgnextloc("\\EH* I really hope you like it!/%", "obj_ch2_room_castle_susie_slash_Step_0_gml_52_0");
	c_talk_wait();
	c_wait(15);
	c_sel(su);
	c_walk_wait("u", 5, 24);
	c_facing("susieunhappy");
	c_facing("l");
	c_wait(20);
	c_facing("u");
	c_wait(20);
	c_walk_wait("r", 5, 32);
	c_facing("u");
	c_sel(ra);
	c_facing("r");
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../", "obj_ch2_room_castle_susie_slash_Step_0_gml_74_0");
	c_msgnextloc("\\ED* ..^1. My own room^1, huh./%", "obj_ch2_room_castle_susie_slash_Step_0_gml_75_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* I..^1. guess that's pretty cool?/", "obj_ch2_room_castle_susie_slash_Step_0_gml_82_0");
	c_msgnextloc("\\EA* My own room..^1. like this./%", "obj_ch2_room_castle_susie_slash_Step_0_gml_83_0");
	c_talk_wait();
	c_facing("u");
	c_wait(30);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. how long did it^1, uh^1, take you to do this?/%", "obj_ch2_room_castle_susie_slash_Step_0_gml_89_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("d");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E1* Well^1, er^1, since I last saw you two^1, I.../%", "obj_ch2_room_castle_susie_slash_Step_0_gml_95_0");
	c_talk_wait();
	c_sel(su);
	c_walkdirect_wait(325, 198, 10);
	c_autowalk(0);
	c_sprite(spr_susie_playful_punch_dw);
	c_imageindex(0);
	c_imagespeed(0);
	c_wait(10);
	c_imageindex(1);
	c_sel(ra);
	c_shakeobj();
	c_soundplay(snd_impact);
	c_wait(15);
	c_sel(su);
	c_sprite(spr_susie_walk_right_dw);
	c_imageindex(0);
	c_autowalk(1);
	c_walk_wait("r", 3, 8);
	c_facing("u");
	c_facing("susie");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Man^1, you're a real weenie^1, y'know that?/", "obj_ch2_room_castle_susie_slash_Step_0_gml_125_0");
	c_msgnextloc("\\E9* Heheheh.../%", "obj_ch2_room_castle_susie_slash_Step_0_gml_126_0");
	c_talk_wait();
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	con = 4;
	scr_speaker("ralsei");
	msgsetloc(0, "\\E2* (I think she likes it^1, Kris!)/", "obj_ch2_room_castle_susie_slash_Step_0_gml_139_0");
	scr_anyface_next("susie", "2");
	msgnextloc("\\E2* (Haha^1, jealous I got the COOL room? LOOK^1, Kris!)/%", "obj_ch2_room_castle_susie_slash_Step_0_gml_141_0");
	d_make();
}
if (con == 4 && !d_ex())
{
	global.plot = 15;
	global.facing = 0;
	global.interact = 0;
	con = -1;
	instance_destroy();
}
